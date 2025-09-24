cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10298"
  sha256 arm:   "1551ebc6387f914c045b416ef936fa172c924b2d1d36c7e30fddf7c9f3ea5a6e",
         intel: "c1c46726af727f2bf0b1b75e4a89f4b2bb753575e71864fb8894f49ad8750bf7"

  url "https://update.shadow.tech/launcher/prod/mac/#{arch}/ShadowPC-#{version}.dmg"
  name "Shadow"
  desc "Online virtualised computer"
  homepage "https://shadow.tech/"

  livecheck do
    url "https://update.shadow.tech/launcher/prod/mac/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  app "Shadow PC.app"

  zap trash: [
    "~/Library/Application Support/Shadow",
    "~/Library/Preferences/com.electron.shadow.helper.plist",
    "~/Library/Preferences/com.electron.shadow.plist",
  ]
end
