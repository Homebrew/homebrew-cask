cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "8.2.0"
  sha256 arm:   "e83af5aa9b2fabe7016ed0414dbefbb6a47548e866c7a6847b0277be7931e9f0",
         intel: "fd8f715aaa890588a4549ee63649b8f26cf999ca4c511a19f3d0a2774e32f4af"

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
