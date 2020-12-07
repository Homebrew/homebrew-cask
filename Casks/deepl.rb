cask "deepl" do
  version "1.13.1"
  sha256 "d34fd843fad9556ec319d63a09cd7bb1281ba000e7d0b0de46cc350c433c9904"

  url "https://appdownload.deepl.com/macos/DeepL.dmg"
  name "DeepL"
  desc "Trains AIs to understand and translate texts"
  homepage "https://www.deepl.com/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "DeepL.app"

  uninstall quit: [
    "com.linguee.DeepLCopyTranslator",
    "com.linguee.DeepLLauncher",
    "com.linguee.DeepLStatusBar",
  ]

  zap trash: [
    "~/Library/Caches/com.linguee.DeepLCopyTranslator",
    "~/Library/Caches/com.linguee.DeepLCopyTranslator.ShipIt",
    "~/Library/Group Containers/*.com.linguee.DeepL",
    "~/Library/Preferences/com.linguee.DeepLCopyTranslator.plist",
  ]
end
