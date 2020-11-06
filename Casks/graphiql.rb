cask "graphiql" do
  version "0.7.2"
  sha256 "204dd3db5c11bf265700d8d57defc4798cd0040651f751f35e2a646cb4846ac7"

  url "https://github.com/skevy/graphiql-app/releases/download/v#{version}/graphiql-app-#{version}-mac.zip"
  appcast "https://github.com/skevy/graphiql-app/releases.atom"
  name "GraphiQL App"
  desc "Light, Electron-based Wrapper around GraphiQL"
  homepage "https://github.com/skevy/graphiql-app"

  app "GraphiQL.app"
end
