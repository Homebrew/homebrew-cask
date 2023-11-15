cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "5.2.8"
  sha256 arm:   "a09238343022be78a6f684831070dbce8405b1e5021062e8b532b75d92835e7f",
         intel: "cf33df39d40d2f53faa7d7b37a1581edd972aa91ac59d6e94f63e7d43381dde5"

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
