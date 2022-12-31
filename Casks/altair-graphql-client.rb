cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "5.0.10"
  sha256 arm:   "819510d26f314223cdf3f7a93924fd911ebd2fb55309acc1a77d0989b0adc827",
         intel: "6ccb1ea147f17ee81d78ee0e1b156a9eda812100e2f68e00d8bf15f10697154a"

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
