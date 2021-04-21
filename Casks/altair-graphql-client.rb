cask "altair-graphql-client" do
  version "4.0.0"
  sha256 "8ea5cca5c135b7e5b393ee444d4e65382b7e2f48487f9a4c0fb059470e7f7dfc"

  url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair_#{version}_mac.zip",
      verified: "github.com/imolorhe/altair/"
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
