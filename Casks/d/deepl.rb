cask "deepl" do
  version "25.6.12145056"
  sha256 :no_check

  url "https://www.deepl.com/macos/download/DeepL.dmg"
  name "DeepL"
  desc "AI-powered translator"
  homepage "https://www.deepl.com/"

  livecheck do
    url "https://appdownload.deepl.com/macos/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "DeepL.app"

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
