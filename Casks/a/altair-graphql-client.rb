cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "8.5.7"
  sha256 arm:   "bf62986cbc4a481942a37d555a4b052252acddc45640ea406eb2fce96b33db1d",
         intel: "01d529356dcc79ddf2ef311c720feb343da0731d8f3f45dea6470528befd7823"

  url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair_#{version}_#{arch}_mac.zip",
      verified: "github.com/imolorhe/altair/"
  name "Altair GraphQL Client"
  desc "GraphQL client"
  homepage "https://altairgraphql.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "Altair GraphQL Client.app"

  zap trash: [
    "~/Library/Application Support/altair",
    "~/Library/Preferences/com.electron.altair.helper.plist",
    "~/Library/Preferences/com.electron.altair.plist",
    "~/Library/Saved Application State/com.electron.altair.savedState",
  ]
end
