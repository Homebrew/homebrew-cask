cask "altair-graphql-client" do
  version "2.5.2"
  sha256 "f5adae96f3f211ddf9513ba20e9fa56568b42f3ed97ff53bcfa36dd90a8439d9"

  # github.com/imolorhe/altair/ was verified as official when first introduced to the cask
  url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair_#{version}_mac.zip"
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
