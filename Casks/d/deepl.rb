cask "deepl" do
  on_catalina :or_older do
    version "3.7.292629"
    sha256 "efcac4988a606d9793a3bdb8e7e73dce8e3d06ed2249a4434eb54c1624b40b87"

    livecheck do
      url "https://appdownload.deepl.com/macos/update.json"
      strategy :json do |json|
        json["currentRelease"]
      end
    end
  end
  on_big_sur :or_newer do
    version "4.6.565727"
    sha256 "148224d1a5359f2322c6d9cda5a4f4270d964b9201467eba33fb4af98a889e6b"

    livecheck do
      url "https://appdownload.deepl.com/macos/bigsur/update.json"
      strategy :json do |json|
        json["currentRelease"]
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
