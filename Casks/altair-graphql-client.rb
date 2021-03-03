cask "altair-graphql-client" do
  version "3.2.2"
  sha256 "c5c5179cf61369305aae26f2be082bd2b473757c7c7deca706a0beff5d83dc4f"

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
