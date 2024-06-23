cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "7.2.0"
  sha256 arm:   "fcfa4d86aa74e82db7b40f753c8e06cb1683c64bcfc19f833ff8bf1767aa1907",
         intel: "33097ceb884638e64d8bef4ffa586c114118a19627e7a882da4e5992c63d90ec"

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
