cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "8.0.5"
  sha256 arm:   "d1695d560e18daf3089fdc8188b9dd599e9fd1be3a6839417e68e2580749879b",
         intel: "43b135da9845937e77e41fd5bd0856df0890c1686d58bf45c8258291541d7515"

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
