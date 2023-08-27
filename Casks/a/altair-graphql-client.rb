cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "5.2.2"
  sha256 arm:   "4b88c130a8e05e1e37b834c64ccc9a57b68dbcddfd7731856b387afca9ff58d8",
         intel: "2a598074455cc000b282d7e57c4ddc45c1b0dde703bd278fb8e9d5d73b57d337"

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
