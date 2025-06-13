cask "deepl" do
  version :latest
  sha256 :no_check

  url "https://www.deepl.com/macos/download/DeepL.dmg"
  name "DeepL"
  desc "AI-powered translator"
  homepage "https://www.deepl.com/"

  depends_on macos: ">= :ventura"

  app "DeepL.app"

  auto_updates true

  uninstall quit: [
    "com.linguee.DeepLCopyTranslator",
    "com.linguee.DeepLLauncher",
    "com.linguee.DeepLStatusBar",
  ]

  zap trash: [
    "~/Library/Caches/com.linguee.DeepLCopyTranslator*",
    "~/Library/Group Containers/*.com.linguee.DeepL",
    "~/Library/Preferences/com.linguee.DeepLCopyTranslator.plist",
  ]
end
