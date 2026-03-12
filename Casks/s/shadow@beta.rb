cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10381"
  sha256 arm:   "78313a8fb617d11824fabcd7d794f33ec9089bced2dfeee73e2d63be9d47883b",
         intel: "16903df355bff675f4cd04df4f62d363a329dc328b5b8a5622d149c7df6844a3"

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
