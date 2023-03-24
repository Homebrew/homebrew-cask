cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "5.0.18"
  sha256 arm:   "3c101cd8ff88e15f514eed0dbec11b8887f02158b8a34dd8d1eaa282a42a1a10",
         intel: "ff8d0b32eb2545348f7e842f0f5ec2692d70ad7b7c94251239bafc516ac9ee9d"

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
