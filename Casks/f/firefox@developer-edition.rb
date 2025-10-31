cask "firefox@developer-edition" do
  version "145.0b9"

  language "ca" do
    sha256 "f946989fef4f4fbf40b2e08929b5d51689aedae8499bcd897850e36d13d2f3c5"
    "ca"
  end
  language "cs" do
    sha256 "60a85e18395df9987bb424cda7a75908ebdd6a89c4669d8705eb11edde79392c"
    "cs"
  end
  language "de" do
    sha256 "5eae4a6997c625354f8e1f0053e642eb8caf21a2811f5099c6e555c191b13b5a"
    "de"
  end
  language "en-CA" do
    sha256 "12edb47ac43bfcb0ac4dbac572901cd320651443120645a557c718e930e2fef2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "699af1abd797a4e36b694bdbbeeead77bb5793dfd98d15c6d2816e983f6de688"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6e3155bda1e0803e76133fac2ba559e9b3dc765fbb0571b2b7b92ac8766ad9cb"
    "en-US"
  end
  language "es" do
    sha256 "aed8f22173c0515a29a4f7aa7b3fc8a5163a8eda76e746a6e316ef544b5321f2"
    "es-ES"
  end
  language "fr" do
    sha256 "00b63d96c4f00f32cc1109504a473c587abdf4f4a42d48d1de5554b4f07f24ae"
    "fr"
  end
  language "it" do
    sha256 "156e6e21145ed95c1cc87bff14088af65283eac33f834d3edaf017157e9e8973"
    "it"
  end
  language "ja" do
    sha256 "96b81b03de5dccbcd91c0458219d6218c28986d5f061f317c6fc5adb0c348bac"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "af88c34b4b8ebbb70a923e4912acad04ad6f7ce61a3a9d0aed62e3b128701ccd"
    "ko"
  end
  language "nl" do
    sha256 "df38d9f76b3bb0cca4e90884a487bc6f31de52527306138c0a8f0a5f16c19343"
    "nl"
  end
  language "pt-BR" do
    sha256 "735cf50df9795db7b808651f001a710dc348c417714e12cd398fc372b58715c1"
    "pt-BR"
  end
  language "ru" do
    sha256 "41459b718c97a543b6c61b5a125663e36b9b587fa275bf7442d78f5a6cd6cbcb"
    "ru"
  end
  language "uk" do
    sha256 "1c6c8a6bfb62834e46d6d6a85d4438ce0ed91ecf989fa35f74067a5fa99b4d9b"
    "uk"
  end
  language "zh-TW" do
    sha256 "71c3b9a03cdf54caeee76eaf78454e61946ae4411c869e8c5afd0f57e85e521e"
    "zh-TW"
  end
  language "zh" do
    sha256 "c9fba92b6123de0f4313c585df62a831939cc60f603d84e26f1fc48bafd4d58f"
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
