cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "8.2.2"
  sha256 arm:   "44c2947faf71bb13c1fa650e3787849a2cca1159667687d0581a56648bce6322",
         intel: "f0e625ce0e02ed145d93c1f77a95ef25d6f2b46622975b3f144c9fae3718d438"

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
