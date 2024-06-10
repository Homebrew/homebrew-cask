cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10033"
  sha256 arm:   "fe0c3f8293f6a1c91b0fccb3fddd73afffb82cdf541b52f7b0f3097ebaeec759",
         intel: "e6d4d1e26fd4e3a2c2e399752223ddbd006c4c93ec2efd9a34b308c37932dab3"

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
