defmodule SimpleTodoApi.Router do
  use SimpleTodoApi.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", SimpleTodoApi do
    pipe_through :api
  end
end
