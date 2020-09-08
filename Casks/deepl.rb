cask "deepl" do
  version "1.10.0"
  sha256 "7d1154098e9fe8a27c9fcad415bcabc80831a1dd19590c036ac9118b780b8e73"

  url "https://appdownload.deepl.com/macos/DeepL.dmg"
  name "DeepL"
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
