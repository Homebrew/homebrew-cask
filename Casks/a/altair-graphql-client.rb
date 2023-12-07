cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "6.0.0"
  sha256 arm:   "c917476cdeff8eec76b625d4b414856d01eec90ffd9be58ab97b972f36225f06",
         intel: "2e82ebb22d86c303b5ffe2b007e1d2454c7fc11fb19791c2a924c2c27760ada2"

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
