cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "8.3.0"
  sha256 arm:   "d62e3d68a1549d3f353a2194c02ee719f2bd9b28dbcb953c7658eb005ad003d2",
         intel: "e4adaada4016b477170f011c58f35120042ad17158113a14ecb2290f9204c9ad"

  url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair_#{version}_#{arch}_mac.zip",
      verified: "github.com/imolorhe/altair/"
  name "Altair GraphQL Client"
  desc "GraphQL client"
  homepage "https://altair.sirmuel.design/"

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
