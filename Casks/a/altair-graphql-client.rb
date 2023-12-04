cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "5.2.13"
  sha256 arm:   "b9721ecccaf719a5aa5d15388f6697ea47a5fab5a1b2b69204dab0e9bb5d3f7e",
         intel: "226329f91105cda512edc6074c5cab45f82016790cb5968d3ce3a4036183eba8"

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
