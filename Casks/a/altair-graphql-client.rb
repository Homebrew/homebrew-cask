cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "8.2.3"
  sha256 arm:   "8cb1b197aee5a05c6b8f872050b9a11e6414857372b81afbbf0117f842c9a3bf",
         intel: "12c42ccf19bbcb8342ea0a420d5a00a583c20d096771480e9e206cf43cd69cdc"

  url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair_#{version}_#{arch}_mac.zip",
      verified: "github.com/imolorhe/altair/"
  name "Altair GraphQL Client"
  desc "GraphQL client"
  homepage "https://altair.sirmuel.design/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Altair GraphQL Client.app"

  zap trash: [
    "~/Library/Application Support/altair",
    "~/Library/Preferences/com.electron.altair.helper.plist",
    "~/Library/Preferences/com.electron.altair.plist",
    "~/Library/Saved Application State/com.electron.altair.savedState",
  ]
end
