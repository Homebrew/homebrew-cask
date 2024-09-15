cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "7.3.6"
  sha256 arm:   "a09b8935ca320b37d35b47b4adf9490ed1c14c9592b6e0321c6a83b9df5c8075",
         intel: "7ee17034acd3005c24dd849261a3733cc6ac20bb99b6f386b844e2fed862b778"

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
