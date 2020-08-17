cask "deepl" do
  version "1.9.0"
  sha256 "fca6b8580609d5776a23cb4779445357bf3037980bd144aab9ce423ef3bc31f3"

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
