cask "deepl" do
  on_catalina :or_older do
    version "3.7.292629"
    sha256 "efcac4988a606d9793a3bdb8e7e73dce8e3d06ed2249a4434eb54c1624b40b87"

    livecheck do
      url "https://appdownload.deepl.com/macos/update.json"
      strategy :page_match do |page|
        JSON.parse(page)["currentRelease"]
      end
    end
  end
  on_big_sur :or_newer do
    version "4.1.350309"
    sha256 "3dbae1906788cc9d9cfed116190b2262f5a226569d9080b46ee9a098e4f6fb02"

    livecheck do
      url "https://appdownload.deepl.com/macos/bigsur/update.json"
      strategy :page_match do |page|
        JSON.parse(page)["currentRelease"]
      end
    end
  end

  url "https://appdownload.deepl.com/macos/#{version}/DeepL_#{version}.zip"
  name "DeepL"
  desc "Trains AIs to understand and translate texts"
  homepage "https://www.deepl.com/"

  auto_updates true

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
