cask "altair-graphql-client" do
  version "3.0.0"
  sha256 "58a9e79391dbc6df0ba6307d48d222a967bf26ef37ea7429c971d15a891ad52f"

  url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair_#{version}_mac.zip",
      verified: "github.com/imolorhe/altair/"
  appcast "https://github.com/imolorhe/altair/releases.atom"
  name "Altair GraphQL Client"
  desc "GraphQL client"
  homepage "https://altair.sirmuel.design/"

  app "Altair GraphQL Client.app"

  zap trash: [
    "~/Library/Application Support/altair",
    "~/Library/Preferences/com.electron.altair.helper.plist",
    "~/Library/Preferences/com.electron.altair.plist",
    "~/Library/Saved Application State/com.electron.altair.savedState",
  ]
end
