cask "altair-graphql-client" do
  version "3.2.1"
  sha256 "6382aae7ec02e85239d1c2cdbc05fc2da07a7e4b7287766ef87f89e593b6720c"

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
