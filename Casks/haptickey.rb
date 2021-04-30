cask "haptickey" do
  version "0.5.0"
  sha256 "ea7ce3a3c0761a0e0cbd13f2bccdc64c3f0cff363ecf89fcacb7081f634a412f"

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
