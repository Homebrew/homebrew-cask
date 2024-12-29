cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "8.1.0"
  sha256 arm:   "f313fb67196d825c63f803666f90d0b5e5eff8fbaeaff79cb7aa7e12167144f0",
         intel: "5930df9a7a94a4752df45f1ab799c7b9792373467b768e687a365f085644a50c"

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
