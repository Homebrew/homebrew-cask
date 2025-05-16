cask "deepl" do
  on_catalina :or_older do
    version "3.7.292629"
    sha256 "efcac4988a606d9793a3bdb8e7e73dce8e3d06ed2249a4434eb54c1624b40b87"

    url "https://www.deepl.com/macos/download/old/#{version.major_minor}/#{version.patch}/DeepL.zip"

    livecheck do
      url "https://appdownload.deepl.com/macos/"
      regex(%r{^old/v?(\d+(?:\.\d+)+)/(\d+(?:\.\d+)*)/DeepL\.(?:zip|t)}i)
      strategy :xml do |xml, regex|
        xml.get_elements("//Contents/Key").map do |item|
          match = item.text&.strip&.match(regex)
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
    version "25.5.12046922"
    sha256 "d3f162fffcf3e13e50063eaa5fcea340234de22b623b0457a86e242111060d1f"

    url "https://www.deepl.com/macos/download/#{version.major_minor}/#{version.patch}/DeepL.tar.gz"

    livecheck do
      url "https://appdownload.deepl.com/macos/"
      regex(%r{^v?(\d+(?:\.\d+)+)/(\d+(?:\.\d+)*)/DeepL\.t}i)
      strategy :xml do |xml, regex|
        xml.get_elements("//Contents/Key").map do |item|
          match = item.text&.strip&.match(regex)
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
