cask "deepl" do
  on_ventura :or_older do
    on_catalina :or_older do
      version "3.7.292629"
      sha256 "efcac4988a606d9793a3bdb8e7e73dce8e3d06ed2249a4434eb54c1624b40b87"

      url "https://www.deepl.com/macos/download/old/#{version.major_minor}/#{version.patch}/DeepL.zip"
    end
    on_big_sur do
      version "24.2.1798840"
      sha256 "dacbf3dbd42eab3b1d3c4b48e0f0672146d07d94627b7ad073985fe41e9e9217"

      url "https://www.deepl.com/macos/download/#{version.major_minor}/#{version.patch}/DeepL.tar.gz"
    end
    on_monterey do
      version "24.11.31463097"
      sha256 "8e02db7b5f85d4020419a5bf7a44a39b7d1f321acabb9b8011407b3b462c0218"

      url "https://www.deepl.com/macos/download/#{version.major_minor}/#{version.patch}/DeepL.tar.gz"
    end
    on_ventura do
      version "25.9.42781299"
      sha256 "fee6e77aed8fa9947bdd4b4d9aab147c7b4d56671e0cafece8d48c9b871ebf98"

      url "https://www.deepl.com/macos/download/#{version.major_minor}/#{version.patch}/DeepL.dmg"
    end
    livecheck do
      skip "Legacy version"
    end
  end
  on_sonoma :or_newer do
    version "25.12.13413558"
    sha256 "0e351eab9fb548e6cefc1d56f3f722b67f862eb2b490b7d2ef2740cbf957b8d5"

    url "https://www.deepl.com/macos/download/#{version.major_minor}/#{version.patch}/DeepL.dmg"
    livecheck do
      url "https://appdownload.deepl.com/macos/appcast.xml"
      strategy :sparkle
    end
  end

  name "DeepL"
  desc "AI-powered translator"
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
