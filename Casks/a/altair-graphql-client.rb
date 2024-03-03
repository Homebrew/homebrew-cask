cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "6.3.1"
  sha256 arm:   "8e890d495248edb6865f3f3590e2df250549141de81d0616e4d72ec9fed27483",
         intel: "70427ae6339a9b804ecb5b1f9838e9d1136488aa542902fb4441b440edda4f7c"

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
