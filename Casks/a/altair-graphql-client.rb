cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "6.4.2"
  sha256 arm:   "a3de85343ca5586359698ec248e5dfc23e91452899f82508264b6a432098b08c",
         intel: "9f3a6b305b51198723a0633af29fdce8cdfaacc0d71558a52cc3ea067b25103c"

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
