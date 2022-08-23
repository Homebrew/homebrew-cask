cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "4.6.2"
  sha256 arm:   "214f82239db4649ab469860c3cb1921fd12e4581b81d91c9be3fbd82567ced18",
         intel: "296a49790cfa1c4cefb02de20ef5ad0c6ea450e747d53b790daa9f9e3b662a7a"

  url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair_#{version}_#{arch}_mac.zip",
      verified: "github.com/imolorhe/altair/"
  name "Altair GraphQL Client"
  desc "GraphQL client"
  homepage "https://altair.sirmuel.design/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Altair GraphQL Client.app"

  zap trash: [
    "~/Library/Application Support/altair",
    "~/Library/Preferences/com.electron.altair.helper.plist",
    "~/Library/Preferences/com.electron.altair.plist",
    "~/Library/Saved Application State/com.electron.altair.savedState",
  ]
end
