cask "deepl" do
  on_sonoma :or_older do
    on_big_sur :or_older do
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
    on_sonoma do
      version "26.6.14916780"
      sha256 "e5507b544654795fc06d6a73090b3c15421913f6acba0bcbf81f6066bb50917c"

      url "https://www.deepl.com/macos/download/#{version.major_minor}/#{version.patch}/DeepL.dmg"
    end
    livecheck do
      skip "Legacy version"
    end
  end
  on_sequoia :or_newer do
    version "26.10.12962491689"
    sha256 "e87c1069b0ddef1c54b0aaf183483453da1efaf1dbb1b877be0bef224b74e079"

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
  depends_on :macos

  app "DeepL.app"

  uninstall launchctl: [
              "com.linguee.DeepLLauncher",
              "com.linguee.DeepLUninstall",
            ],
            quit:      [
              "com.linguee.DeepLCopyTranslator",
              "com.linguee.DeepLLauncher",
              "com.linguee.DeepLStatusBar",
            ]

  zap trash: [
    "~/Library/Application Scripts/com.linguee.DeepLCopyTranslator.DeepLTranslatorFinderExt",
    "~/Library/Application Scripts/group.com.linguee.DeepL",
    "~/Library/Application Support/DeepL",
    "~/Library/Caches/com.linguee.DeepLCopyTranslator*",
    "~/Library/Caches/com.linguee.DeepLUninstall",
    "~/Library/Containers/com.linguee.DeepLCopyTranslator.DeepLTranslatorFinderExt",
    "~/Library/Group Containers/*.com.linguee.DeepL",
    "~/Library/HTTPStorages/com.linguee.DeepLCopyTranslator*",
    "~/Library/HTTPStorages/com.linguee.DeepLUninstall*",
    "~/Library/Preferences/com.linguee.DeepLCopyTranslator.plist",
    "~/Library/Preferences/com.linguee.DeepLUninstall.plist",
    "~/Library/WebKit/com.linguee.DeepLCopyTranslator",
  ]
end
