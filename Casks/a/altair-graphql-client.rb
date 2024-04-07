cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "6.4.1"
  sha256 arm:   "e75fcdf14b556305f6b5691f02b55d36f4e5803d7b279f89f2e4eae17af1abd6",
         intel: "35ae92156712a79895db66bc1a1e67a957ceb1d39b8b3c2b90e0387cf921b78f"

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
