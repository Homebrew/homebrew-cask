cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "5.0.9"
  sha256 arm:   "dfe142cf3aefe76b85c25b3791a4c4dfb481c6b038ed4f20cfa9d9a1c9903db2",
         intel: "53586e310dc4a0198741d829df7b9ca4e23ce552112b1e57ca17a9f3c969ea5c"

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
