## Put comments here that give an overall description of what your
## functions do

##This function makes an object that can cache the inverse

makeCacheMatrix<- function(x=matrix()){
        inv<- NULL
        set<- function(y){
                x<<-y
                inv<<- NULL
        }
        get<- function() {x}
        setInverse<- function(inverse){inv<<- inverse}
        getInverse<- function(){inv}
        list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}
## makes the inverse of the matrix
cacheSolve<- function(x, ...){
        inv<- x$getInverse()
        if(!is.null(inv)){
                message("Getting Caste Data")
                return( inv)}
        mat<- x$get()
        inv<-solve(mat,...)
        x$setInverse(inv)
        inv
                
        
}
