cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10323"
  sha256 arm:   "b17fd843b54578c6308aa86a840e32a233a45c89170c3a71d891f90e02764bdb",
         intel: "5dabfcb150e6a4fdba9a0abf1a0a041093bf478d7575a116a58e5cca1f1b4f00"

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
