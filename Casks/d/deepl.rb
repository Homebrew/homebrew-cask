cask "deepl" do
  on_catalina :or_older do
    version "3.7.292629"
    sha256 "efcac4988a606d9793a3bdb8e7e73dce8e3d06ed2249a4434eb54c1624b40b87"

    url "https://www.deepl.com/macos/download/#{version}/DeepL_#{version}.zip"

    livecheck do
      url "https://appdownload.deepl.com/macos/update.json"
      strategy :json do |json|
        json["currentRelease"]
      end
    end
  end
  on_big_sur :or_newer do
    version "23.12.1701342"
    sha256 "1781ef461e24e325831c456f434f8345379c2f0630ad92c6fe6e887d22fe8bba"

    url "https://www.deepl.com/macos/download/#{version}/DeepL_#{version}.tar.gz"

    livecheck do
      url "https://appdownload.deepl.com/macos/bigsur/update.json"
      strategy :json do |json|
        json["currentRelease"]
      end
    end
  end

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
    "~/Library/Caches/com.linguee.DeepLCopyTranslator*",
    "~/Library/Group Containers/*.com.linguee.DeepL",
    "~/Library/Preferences/com.linguee.DeepLCopyTranslator.plist",
  ]
end
