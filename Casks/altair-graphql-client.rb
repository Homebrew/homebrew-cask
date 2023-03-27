cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "5.0.19"
  sha256 arm:   "e12aa639322d33867f31398c743927720cbb05a1f22c4da10829392616a75805",
         intel: "1d9f7a048fab7381d461766e06c6f3b34ccc890a0e7a84f60b75fc4143e825f7"

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
