cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "5.2.14"
  sha256 arm:   "aa5ea97f140e118048aed5842d362a85315dd9b87c760f1fa76fd8d3cd8c86ef",
         intel: "719997ee1b9738e69d3c0b0f549637a9d07155c48bf5fd64859b01c4ac4d2185"

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
