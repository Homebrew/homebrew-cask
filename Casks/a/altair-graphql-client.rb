cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "7.0.0"
  sha256 arm:   "16e4d8bd66d94623bac8f3254ba419f6b4887aceb33091ed21837251c7042801",
         intel: "fcb58e4c7fd55448953a301c755abf25e3849f4e8ec68f6232eba4ab6a8dac59"

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
