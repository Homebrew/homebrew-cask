cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "5.0.22"
  sha256 arm:   "58587d36da2a909368b51c77f7cf55f51ca0ddce228c69666702b4e6fb29c08e",
         intel: "688424239ccf58abc305e5d09e8c3e01578a651ff95a36f8d6cd86308cfc5bfc"

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
