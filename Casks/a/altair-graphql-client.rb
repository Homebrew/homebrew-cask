cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "8.4.3"
  sha256 arm:   "6414941ea6192755782d2fdccfa7068a7163430831507a0648c31832c83214ec",
         intel: "e9f5f30a8366153dab07160a667eb2459c4e49a16719709277882938945f47c1"

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
