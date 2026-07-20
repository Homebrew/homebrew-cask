cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10430"
  sha256 arm:   "dbcc93fa283e3dd3c3f11018c0fc1878b3e88be36ae9da40d8e1d9c162dc71b1",
         intel: "dd101a47b79ad056685eca3613fc3d262f4bf88ce7be175a8817f1adc794525e"

  url "https://update.shadow.tech/launcher/preprod/mac/#{arch}/ShadowPCBeta-#{version}.dmg"
  name "Shadow PC Beta"
  desc "Online virtualized computer"
  homepage "https://shadow.tech/"

  livecheck do
    url "https://update.shadow.tech/launcher/preprod/mac/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on :macos

  app "Shadow PC Beta.app"

  zap trash: [
    "~/Library/Application Support/shadow-preprod",
    "~/Library/Preferences/com.electron.shadow-beta.plist",
  ]
end
