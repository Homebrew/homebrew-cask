cask "seamonkey" do
  version "2.53.23"

  language "cs" do
    sha256 "551e88e36b39c62bd0b87806427dbaa74413ef15c7949949391e987850a83628"
    "cs"
  end
  language "de" do
    sha256 "f4c78b265731eca3640e0171a2024d0dde965ffc0960e95e4e4744f023bb246e"
    "de"
  end
  language "el" do
    sha256 "d40fdb9544adb184409c64f4b9f8d28690908bc77850b86a7404e1b45c11a453"
    "el"
  end
  language "en-GB" do
    sha256 "5eefacd82df62100e9953fc75d3399fd2db8f215530359e3d061b8041a4b958c"
    "en-GB"
  end
  language "en-US", default: true do
    sha256 "55c126aa5ce100c61c1600560fd243e54f5aba3922d2bea805e98df174a4a6a2"
    "en-US"
  end
  language "es-AR" do
    sha256 "415899b4bc8842c4675580a21cc6a06b7da8e66d13fa1ee861452ff9a6a5ce51"
    "es-AR"
  end
  language "es-ES" do
    sha256 "4cec5a8a3d399715f7ef1f343c17a195b075745679681b679c444fb46f53a42c"
    "es-ES"
  end
  language "fi" do
    sha256 "16103421ddacad73ef4d1da5faae16160130d7faf21ed2da3fff50468ccaaa09"
    "fi"
  end
  language "fr" do
    sha256 "214dd1f9ded5143ee54fb2d07ad9e2a23188f517fa8c5ff3cb0e016919e75cea"
    "fr"
  end
  language "hu" do
    sha256 "0caa57644df2e84a31c95aebe1bde547134f3040a75408cd00bd90dd7676bd72"
    "hu"
  end
  language "it" do
    sha256 "f73a51397ea4d4394c3dc9f1387f264187cd811b7fc272a162569f00bc6e588b"
    "it"
  end
  language "ja" do
    sha256 "84a85b98e156f444a6b9fed8c39264b9252bbc1d127861e3c588d9bd47a1aae0"
    "ja-JP-mac"
  end
  language "ka" do
    sha256 "c6ec8f163e4a8b537539097dee1861f9041e1ab3b3e25240c2f09b3fa4ed8473"
    "ka"
  end
  language "nl" do
    sha256 "02e08b73306cce4491419ef1327f3ea5fa203cd78c80aeef2a10fa8ae1c2ab4a"
    "nl"
  end
  language "no" do
    sha256 "3634db7a161d0bb4cb4d15cef2fd0c1eb77317669680ce9c1c4745d43071ff0b"
    "nb-NO"
  end
  language "pl" do
    sha256 "1cbdf8d780706e3717272599797eaa4f258177e22c7f3cb206224148b698fc61"
    "pl"
  end
  language "pt-BR" do
    sha256 "a8a90859f1488a43d3228492cf57d4bf9dd3c121504330a38bcf782f9713862e"
    "pt-BR"
  end
  language "pt" do
    sha256 "d1f21e8f0f9f22c98a5345964699206abbb77b7702771d44a52819673bfbc48a"
    "pt-PT"
  end
  language "ru" do
    sha256 "bcadfdd5780e8624f58e54d2f09c2df5b5d3d2141e3e2e1e2a967d5251ec60e3"
    "ru"
  end
  language "sk" do
    sha256 "a697422943760d74c4bdbaa36d6a42d8d40564ac3d67906670bb63f4c1965a6a"
    "sk"
  end
  language "sv" do
    sha256 "2554fcd5519cb20fbac6e5659207da143ab1286378f5fa604f2a9fc490fb593b"
    "sv-SE"
  end
  language "zh-TW" do
    sha256 "ba8b16dcc2e5798c2bd5aa5fa0cc739f1443396dcd018a0f27a3794ff0378ae2"
    "zh-TW"
  end
  language "zh" do
    sha256 "0dfd81a06fdf636fe47624104a99fa391e0404e74f09ab2737545fa77a10baaa"
    "zh-CN"
  end

  url "https://archive.seamonkey-project.org/releases/#{version}/mac/#{language}/seamonkey-#{version}.#{language}.mac.dmg"
  name "SeaMonkey"
  desc "Development of SeaMonkey Internet Application Suite"
  homepage "https://www.seamonkey-project.org/"

  livecheck do
    url "https://www.seamonkey-project.org/releases/"
    regex(%r{href=.*?/seamonkey-(\d+(?:\.\d+)+)\.en-US\.mac\.dmg}i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  auto_updates true

  app "SeaMonkey.app"

  zap trash: [
    "~/Library/Application Support/SeaMonkey",
    "~/Library/Caches/SeaMonkey",
    "~/Library/Preferences/org.mozilla.seamonkey.plist",
    "~/Library/Saved Application State/org.mozilla.seamonkey.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
