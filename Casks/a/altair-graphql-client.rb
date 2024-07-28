cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "7.3.4"
  sha256 arm:   "8a15030419e0b66d59b27c1e120b75afad48a8dff1d84f0cc39003e811bbcf70",
         intel: "0571a8c673203a85442dca5462797e1a7978a0f8e0f95e1dcd570c056c407098"

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
