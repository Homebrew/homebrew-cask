cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "5.2.5"
  sha256 arm:   "5a5c58819745cbc0160cb06ad34331ce7aac9eda0772b65619c0ba2af1899eac",
         intel: "cb12d331eaba66054d0a2646eb627019a39120f4618f198f5867f4f957a20936"

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
