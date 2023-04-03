cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "5.0.20"
  sha256 arm:   "5d552bfa39f76a5a898e16d92d61def317be0db44bae3f6a9ad70281d6517866",
         intel: "29c4c3363a4a99e28b56108504887709d4bf547368ecbe1baefd1a0632b0e8dd"

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
