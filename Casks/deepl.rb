cask "deepl" do
  version "3.1.133440"
  sha256 :no_check

  url "https://appdownload.deepl.com/macos/DeepL.dmg"
  name "DeepL"
  desc "Trains AIs to understand and translate texts"
  homepage "https://www.deepl.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

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
