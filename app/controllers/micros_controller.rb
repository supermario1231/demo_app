class MicrosController < ApplicationController
  # GET /micros
  # GET /micros.xml
  def index
    @micros = Micro.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @micros }
    end
  end

  # GET /micros/1
  # GET /micros/1.xml
  def show
    @micro = Micro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @micro }
    end
  end

  # GET /micros/new
  # GET /micros/new.xml
  def new
    @micro = Micro.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @micro }
    end
  end

  # GET /micros/1/edit
  def edit
    @micro = Micro.find(params[:id])
  end

  # POST /micros
  # POST /micros.xml
  def create
    @micro = Micro.new(params[:micro])

    respond_to do |format|
      if @micro.save
        format.html { redirect_to(@micro, :notice => 'Micro was successfully created.') }
        format.xml  { render :xml => @micro, :status => :created, :location => @micro }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @micro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /micros/1
  # PUT /micros/1.xml
  def update
    @micro = Micro.find(params[:id])

    respond_to do |format|
      if @micro.update_attributes(params[:micro])
        format.html { redirect_to(@micro, :notice => 'Micro was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @micro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /micros/1
  # DELETE /micros/1.xml
  def destroy
    @micro = Micro.find(params[:id])
    @micro.destroy

    respond_to do |format|
      format.html { redirect_to(micros_url) }
      format.xml  { head :ok }
    end
  end
end
