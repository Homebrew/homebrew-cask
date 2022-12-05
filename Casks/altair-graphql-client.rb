cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "5.0.8"
  sha256 arm:   "fcf0791950f5427594067a2971254e3504501849d5c052e491a3b38070800397",
         intel: "d902ea792ad4637f72bd691d52a9d84598914b07fc880cdff23e467afb624ef1"

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
