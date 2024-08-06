cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10104"
  sha256 arm:   "6d3188499971f3c92f568a46f2e3bacbc72ad3b77ff1f605ffde7937764ef82d",
         intel: "0465187052b4cd959f54db36d8fd93bc3ba6273e943d2ef5c6d4f7c9969facdc"

  url "https://update.shadow.tech/launcher/preprod/mac/#{arch}/ShadowPCBeta-#{version}.dmg"
  name "Shadow PC Beta"
  desc "Online virtualized computer"
  homepage "https://shadow.tech/"

  livecheck do
    url "https://update.shadow.tech/launcher/preprod/mac/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  app "Shadow PC Beta.app"

  zap trash: [
    "~/Library/Application Support/shadow-preprod",
    "~/Library/Preferences/com.electron.shadow-beta.plist",
  ]
end
