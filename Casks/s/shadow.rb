cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10113"
  sha256 arm:   "df79ea6adbc053da80ff1d2df00fb4cd7dad991adc0fcc7ef651f39ca3281991",
         intel: "000e6f4b9c0e036d0e958b31b167ed424be22076e74a502fae9be12393614b81"

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
