cask "firefox@developer-edition" do
  version "135.0b2"

  language "ca" do
    sha256 "1dee627b6c9e0938ca346ceafb2e9db50826ba127dcd00b792e5c2a0db8cc1eb"
    "ca"
  end
  language "cs" do
    sha256 "fdba49455dd04b2dc14d8c168ec557ee24a822dcb242c1a2c74a3ed1b3018751"
    "cs"
  end
  language "de" do
    sha256 "a9b1110c12a3ecc7892fdb01b54f6871c2bfe485d55cfd51fc2d28cdcb5f3b10"
    "de"
  end
  language "en-CA" do
    sha256 "eb3cf76caac034e5e6d561138b95cf31f3f0b91befeae8f7c04363ccb6e0ce09"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b765e003b10385490c23c335dcc57e2ad4216d8ed27515c48fa29c87aa314b2f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "30bc854e6acff025f484dd7e391a384121bc96b608fff21f6aab4ed83223c1d9"
    "en-US"
  end
  language "es" do
    sha256 "2fd8b12b1f3d0ebc463fd18a1fbb9b5873cec148251bc969c8a36612b482fc48"
    "es-ES"
  end
  language "fr" do
    sha256 "622c67cb5acfb14e377fbca074b14553813e85c8a5c17ce71eae1c8d30ea394e"
    "fr"
  end
  language "it" do
    sha256 "ef36d1d42d41f578f6407b9a3a0651c168087ad0ca7447e1d3f2c81e5b8b5fba"
    "it"
  end
  language "nl" do
    sha256 "a129157897db2a69b7842334392da9c419c2faa0317bac48e5f2db7596068986"
    "nl"
  end
  language "ja" do
    sha256 "ec0e0fc8fd8a74508f2585710c9f813903c9c6ba6229b3b1a169b8a382eaf486"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "ee21c95ef3b78657a71ee412c2ec3d67df19fa7dcf50ef7c5552f50a908a8023"
    "pt-BR"
  end
  language "ko" do
    sha256 "061b5902ee930f7f64ac5577e15a81b8d632b6a62aed494ab91605daf550b017"
    "ko"
  end
  language "ru" do
    sha256 "fd30aa71c8c71e0bea616c95df2299d0078a65957569d3fa1a29bc5f79d7cc95"
    "ru"
  end
  language "uk" do
    sha256 "ecd23142c99668a3a4cb11c264b01e8c76c80335c76d5889d7cb025b52d192a1"
    "uk"
  end
  language "zh-TW" do
    sha256 "bebc39785ac317a70bdc8e15dffceaa975d5824f65826f9acd60e4e2c4ca1bf2"
    "zh-TW"
  end
  language "zh" do
    sha256 "af85136d5fbddc71f7e175f19cb2f25e8d550248af4a78b8881af36d7af16315"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/devedition/releases/"
  name "Mozilla Firefox Developer Edition"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/developer/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["FIREFOX_DEVEDITION"]
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Firefox Developer Edition.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.firefox.plist",
        "~/Library/Saved Application State/org.mozilla.firefox.savedState",
        "~/Library/WebKit/org.mozilla.firefox",
      ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla/updates/Applications",
      ]
end
