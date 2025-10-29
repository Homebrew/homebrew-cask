cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "8.4.1"
  sha256 arm:   "941577d0d69a5e8b41794583e396f588c1ba7377e74fc66060bca4b4f36d8ef2",
         intel: "a40ed806204d8d34fbb02f7cc606cc7dd2543a9800f389aa297b74a8f9ab17a8"

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
