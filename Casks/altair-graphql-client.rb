cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "5.0.17"
  sha256 arm:   "64108ff2d2840ddb6b46a2fe794500e4d02ee47af994a4cba78a44eab4887ed3",
         intel: "fc9432845c3cc0eeee2eb96bed6dd8db233fa4b81c828811fa04c552a1956bf7"

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
