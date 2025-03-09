cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "8.2.1"
  sha256 arm:   "6c71754a6e3ee787a87a4006f87c341c1dbcebd788431693c934ecfe4d76f407",
         intel: "9dea8ff53fa4e2d4e805bb6c7beeb3619183c7d71ea637f896b330fc9149b802"

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
