cask "altair-graphql-client" do
  version "2.4.12"
  sha256 "743836a8159da30c699034679c860be6c6be9e9be6400c6c515314a1302c1cc8"

  # github.com/imolorhe/altair/ was verified as official when first introduced to the cask
  url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair_#{version}_mac.zip"
  appcast "https://github.com/imolorhe/altair/releases.atom"
  name "Altair GraphQL Client"
  homepage "https://altair.sirmuel.design/"

  app "Altair GraphQL Client.app"

  zap trash: [
    "~/Library/Application Support/altair",
    "~/Library/Preferences/com.electron.altair.helper.plist",
    "~/Library/Preferences/com.electron.altair.plist",
    "~/Library/Saved Application State/com.electron.altair.savedState",
  ]
end
