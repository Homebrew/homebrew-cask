cask "deepl" do
  on_catalina :or_older do
    version "3.7.292629"
    sha256 "efcac4988a606d9793a3bdb8e7e73dce8e3d06ed2249a4434eb54c1624b40b87"

    url "https://www.deepl.com/macos/download/old/#{version.major_minor}/#{version.patch}/DeepL.zip"

    livecheck do
      url "https://appdownload.deepl.com/macos/"
      regex(%r{^old/v?(\d+(?:\.\d+)+)/(\d+(?:\.\d+)*)/DeepL\.(?:zip|tar\.gz)$}i)
      strategy :xml do |xml|
        xml.get_elements("//Contents/Key").map do |item|
          match = item.text&.match(regex)
          next if match.blank?

          "#{match[1]}.#{match[2]}"
        end
      end
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
  on_monterey :or_newer do
    version "24.7.11105906"
    sha256 "f63e43df6b6de58a410be45895e708d9dff700a4f4afcd4ca143b55c050676b6"

    url "https://www.deepl.com/macos/download/#{version.major_minor}/#{version.patch}/DeepL.tar.gz"

    livecheck do
      url "https://appdownload.deepl.com/macos/"
      regex(%r{^v?(\d+(?:\.\d+)+)/(\d+(?:\.\d+)*)/DeepL\.tar\.gz$}i)
      strategy :xml do |xml|
        xml.get_elements("//ListBucketResult//Contents//Key").map do |item|
          match = item.text.match(regex)
          next if match.blank?

          "#{match[1]}.#{match[2]}"
        end
      end
    end
  end

  name "DeepL"
  desc "Trains AIs to understand and translate texts"
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
