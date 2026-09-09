cask "firefox@developer-edition" do
  version "156.0b5"

  language "ca" do
    sha256 "1667337b9773cedaf33cdb71d2af48e54e45143f37aefe8dc371a63327168023"
    "ca"
  end
  language "cs" do
    sha256 "fce1d1cc75b098e09c1d068da93285f8b62f8b9f3ec342b7935fb7fd03098d6c"
    "cs"
  end
  language "de" do
    sha256 "2e68b2570451d433fb4865e6723762277d241be3ea10b805588a4ceb26f808ea"
    "de"
  end
  language "en-CA" do
    sha256 "743b1e5eb874292272097086ea85f003ef5588a54857e8935748a2bf8308d4c1"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c5418d77010d0f718d7f5e7bddb0db29d3c6999d81cb4b461086934c2f0884ba"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a94b259db492bcd98105d029ce0a2c51227e0af11fc531f9366e83a3410bd11f"
    "en-US"
  end
  language "es" do
    sha256 "d02d672a14fcd2526e0c8e496fa84dd4af2046ef4a81cf4919339b65e41aa27b"
    "es-ES"
  end
  language "fr" do
    sha256 "ffc27dc8260d1cfd275b01a74a51547370a1ff4908a5deea27f7124dc9ddd009"
    "fr"
  end
  language "it" do
    sha256 "3f8cab6602a2b6d92e7092162e5f8524a8cb44aec47e35fc6a3f986a3c9595de"
    "it"
  end
  language "ja" do
    sha256 "5083912454a8aa2244ed736760c4ee5665947cf1e53bc5510b6bdc1f664c03e8"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2e5310eef21b13db11512ce73a6ad5b0a567457a6f16425785deeb15b60c3ce6"
    "ko"
  end
  language "nl" do
    sha256 "6ed7fc33f4d34ee1ca73b921125596b54ac33519dcd1c49a8b8f317ce4188d90"
    "nl"
  end
  language "pt-BR" do
    sha256 "1be86746028fcd01162963de3e3994052682271897614274b2afda27aebc6aa3"
    "pt-BR"
  end
  language "ru" do
    sha256 "a771eb269495438fbdabc7cb5fc8bf0977e2e78b567efed7579fe2389967faed"
    "ru"
  end
  language "uk" do
    sha256 "0cf7a71bba23b861aeded1c1cb14b6edd77b09f09c99580a08b82e90b6225d2d"
    "uk"
  end
  language "zh-TW" do
    sha256 "93e52450eb1c8e92840993c8dccfe9a09cb2330070e740a66f946656f2b8d149"
    "zh-TW"
  end
  language "zh" do
    sha256 "c025880b75f2ddd7d4823d47dfa8d365d0ef0f1f60785b744873345a265c2f20"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
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
  depends_on :macos

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
        "~/Library/Preferences/org.mozilla.firefoxdeveloperedition.plist",
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
