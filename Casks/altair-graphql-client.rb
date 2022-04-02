cask "altair-graphql-client" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "4.4.1"

  if Hardware::CPU.intel?
    sha256 "a3c842a0e19b1fd70213225b7cb909f023e155b526e7ca518f33479db25d1eb0"
  else
    sha256 "7d9e5dee734758aeebcdf02030a411ad900caa41bdae2b9dc22aef654c8d98ae"
  end

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
