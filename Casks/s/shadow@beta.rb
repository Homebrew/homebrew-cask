cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10126"
  sha256 arm:   "f4bea93ebff71b096e6492a417439a01be7c1193eb7dec8be535b1f68d54f3fb",
         intel: "0176b0ea1c5910665b9c632c7d732b9b7c38e5d2e4b526281bdcebc2f9faa6db"

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
