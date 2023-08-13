cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "5.2.0"
  sha256 arm:   "539910f2bc7275ea4d560d28c0a72b389c27677b91813bc2ffece38b4eb490fe",
         intel: "0cc7cbc31f235611a4ab9e862125028ba4443c89a9a249900dcc976d540d7d1d"

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
