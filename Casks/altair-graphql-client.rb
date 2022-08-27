cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "4.6.4"
  sha256 arm:   "bbb43f7c5dc2988bff50419194517b87b0011348cae1c0312ba82fa2f405196e",
         intel: "2117bcf4f6bd2118f90af4eeb84951ad3872670b2e59c638a083f3b405480812"

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
