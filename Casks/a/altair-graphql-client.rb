cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "7.3.0"
  sha256 arm:   "d22d9e9b98badea2bd76e87d2d75fc20e8a8dd90cae2895d2c719601c36533c7",
         intel: "21963fabeab2c67d2d4f7b8367e30f8d67d64d178f7bba7dc845be4ba5815351"

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
