cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "5.0.25"
  sha256 arm:   "ccc6bc1fa6b9a6f33bf0e5fa15d4055f97e005f299fe2eb3c656d2b2d07d6e5c",
         intel: "40a458394faa37f3e1c0a8b396d1f784eb55cba250bf832f50249f5995e5ceab"

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
