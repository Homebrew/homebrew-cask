cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "8.5.0"
  sha256 arm:   "bb771cc13a22bbb0f07825d956d7477d9beafd605f2513d5dd5e7d5bcb858c54",
         intel: "fa1935eec78137a2a88bdcf666eef87efdf47d0cac2d425ba13bf6a5840abc55"

  url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair_#{version}_#{arch}_mac.zip",
      verified: "github.com/imolorhe/altair/"
  name "Altair GraphQL Client"
  desc "GraphQL client"
  homepage "https://altairgraphql.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Altair GraphQL Client.app"

  zap trash: [
    "~/Library/Application Support/altair",
    "~/Library/Preferences/com.electron.altair.helper.plist",
    "~/Library/Preferences/com.electron.altair.plist",
    "~/Library/Saved Application State/com.electron.altair.savedState",
  ]
end
