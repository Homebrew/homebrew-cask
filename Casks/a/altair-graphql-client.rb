cask "altair-graphql-client" do
  arch arm: "arm64", intel: "x64"

  version "8.1.6"
  sha256 arm:   "e023680e9cd8d22928fe4627c6cb21e81aa36e0197e4939b5f486f5388aa6940",
         intel: "842b5152766f29c69534851592f0971011e280621826e5b5708ca8c323de3ea8"

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
