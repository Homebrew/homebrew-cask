cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "7.2.3"
  sha256 arm:   "e8662177a871a41594dccfacf1bc1155f535dcf9078108a6847dc5e22a69fb70",
         intel: "6f6bef3de55f0859dfcca4bc00f6b5fd37a31320b077f62975fc994f5db89cf7"

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
