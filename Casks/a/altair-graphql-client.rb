cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "5.2.6"
  sha256 arm:   "fe702ab62617ad970f55828af64edbe5d0119eba2ca9b8d4a37a2ba44329f1c2",
         intel: "5ef33a3e47e2547d8c074235ec1ca86b48594bf99570ff4d726c62bff69526cf"

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
