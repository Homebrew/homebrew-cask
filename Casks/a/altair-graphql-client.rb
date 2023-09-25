cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "5.2.3"
  sha256 arm:   "a18517903a202ce9a35fbd855142248f65f632504044e7e2d86b20f6000439e8",
         intel: "db3829f0a94ed07a0034b2b2184b4bb2a97b8cf25e551a9ce18c02c8680e21db"

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
