cask "haptickey" do
  version "0.6.1"
  sha256 "62859fbac70db7183b421b11aaea29987a2cc0920ba602c8174a23c23a99c82d"

  url "https://github.com/niw/HapticKey/releases/download/#{version}/HapticKey.app.zip"
  name "HapticKey"
  desc "Trigger haptic feedback when tapping Touch Bar"
  homepage "https://github.com/niw/HapticKey"

  depends_on macos: ">= :sierra"

  app "HapticKey.app"

  uninstall quit: "at.niw.HapticKey"

  zap trash: [
    "~/Library/Caches/at.niw.HapticKey",
    "~/Library/Preferences/at.niw.HapticKey.plist",
  ]
end
