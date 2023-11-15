cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "5.2.7"
  sha256 arm:   "b471cdc82039cb876863972cbb2f3e23b5cd71bead9d2cb286e0d2e5e28990a0",
         intel: "2976559679d15700e49afeb5081cfd2a94b2baf9ed983bafa2a707d1fb80307c"

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
