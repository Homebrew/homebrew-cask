cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "5.0.6"
  sha256 arm:   "7e6bcc96f57395f6d5befdc167e95a2d26f06c8beebecbab200d761b6d1abc75",
         intel: "13db50b8084ec5e320c2e7699e9666529db8cc52f462904a9a4e15eb211453f1"

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
