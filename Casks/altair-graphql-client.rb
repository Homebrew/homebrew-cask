cask "altair-graphql-client" do
  version "3.1.0"
  sha256 "dceb59ba011005b4c171163f8e9252479afc0f861f0f19aecb39cf7cc6f5a507"

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
