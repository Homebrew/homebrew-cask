cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "8.4.0"
  sha256 arm:   "30298111a0a605085f0495ad0d9c547cb2fe2cfe686db5d923134e6456f553b1",
         intel: "fdbb38da632c3c054b8b7e56139546bd7d1d09a06b665a5206d8e5807e74ece9"

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
