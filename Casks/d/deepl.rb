cask "deepl" do
  on_catalina :or_older do
    version "3.7.292629"
    sha256 "efcac4988a606d9793a3bdb8e7e73dce8e3d06ed2249a4434eb54c1624b40b87"

    url "https://www.deepl.com/macos/download/old/#{version.major_minor}/#{version.patch}/DeepL.zip"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur do
    version "24.2.1798840"
    sha256 "dacbf3dbd42eab3b1d3c4b48e0f0672146d07d94627b7ad073985fe41e9e9217"

    url "https://www.deepl.com/macos/download/#{version.major_minor}/#{version.patch}/DeepL.tar.gz"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey do
    version "24.11.31463097"
    sha256 "8e02db7b5f85d4020419a5bf7a44a39b7d1f321acabb9b8011407b3b462c0218"

    url "https://www.deepl.com/macos/download/#{version.major_minor}/#{version.patch}/DeepL.tar.gz"

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura :or_newer do
    version "25.6.12145056"
    sha256 "bbe9d2e5969d62aa98068508dc2dfe5bbb637acb4d71927baa91dc5af63e0f45"

    url "https://www.deepl.com/macos/download/#{version.major_minor}/#{version.patch}/DeepL.tar.gz"

    livecheck do
      url "https://appdownload.deepl.com/macos/appcast.xml"
      strategy :sparkle
    end
  end

  name "DeepL"
  desc "AI-powered translator"
  homepage "https://www.deepl.com/"

  auto_updates true
  depends_on macos: ">= :catalina"

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
