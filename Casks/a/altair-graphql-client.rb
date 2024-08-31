cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "7.3.5"
  sha256 arm:   "ac516545fb57304498158803f3fe04bbd184f094f822f76dbe492265103ec108",
         intel: "b021a043b4e41f984b528fbe07323ac8831cb47079bbdeae8214189a1b41eb1b"

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
