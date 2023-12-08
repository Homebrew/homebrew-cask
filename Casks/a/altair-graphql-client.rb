cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "6.0.1"
  sha256 arm:   "858ed4b7b527f91dc457be7fd89d32cbd519dd172143a71aa11412ee6af6273d",
         intel: "4b0a779c31662e290e14a0e1bad4979c4b3ff344423f6132c3d8b285b0e83c41"

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
