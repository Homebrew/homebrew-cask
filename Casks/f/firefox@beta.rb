cask "firefox@beta" do
  version "141.0b2"

  language "cs" do
    sha256 "57a05f0c82a313c95bf2f91ae00de95cb40fa20d6ac99bfdd1ee12306ec5adc9"
    "cs"
  end
  language "de" do
    sha256 "8944365e79fbf0e0bdbac4a60d5716f11371fcbdcb4e0685b5385fd6c90cc777"
    "de"
  end
  language "en-CA" do
    sha256 "a1fa87c898ac0fed21c51c7250890d7ad9ae35fbc66207416918b965c3b602ec"
    "en-CA"
  end
  language "en-GB" do
    sha256 "266661574117d58c7df3ba2169654afc2c5180ee70f05aa3babcf3a4318ea071"
    "en-GB"
  end
  language "en", default: true do
    sha256 "16ee4e04eae3db7e7f08fc8953b06f0cc4b55899da739608d9da4cd4750b1da6"
    "en-US"
  end
  language "es-AR" do
    sha256 "c80e0aaa39459f70c2c16044aab0db122d1b7e93ad4be72eac0e7f482e27e4b8"
    "es-AR"
  end
  language "es-CL" do
    sha256 "ad6a6070efb93167581d24ee5e051dd22dd2a332cd92dde3ea9cd54fe865115a"
    "es-CL"
  end
  language "es-ES" do
    sha256 "806f75a707e7c4bf491d270e393a89fd7de8a71e30971dbccf0cc66f3e244359"
    "es-ES"
  end
  language "fi" do
    sha256 "c4d45279f2056c3c73ed579b72c06615e261977b8ad4158b0598d0e88f0b94f1"
    "fi"
  end
  language "fr" do
    sha256 "e14a775fe62fdc13cb07e14d8c0a9aacd29c226f9aed7737e34da9409dfe3cd5"
    "fr"
  end
  language "gl" do
    sha256 "0404b3e6c298187d0f923402cfbc1e6a1e4304fb9ee70c1b0ebe6efbf9d18e72"
    "gl"
  end
  language "in" do
    sha256 "a4e6fc14720317a1f59f0dd76011f86204865026f3a8332b0ea9287106554c9f"
    "hi-IN"
  end
  language "it" do
    sha256 "3f48cc3612e342ab529b3cddd8d405d24eb8069c35df6280b1def3df1224f6b3"
    "it"
  end
  language "ja" do
    sha256 "649119bbce98d27157d56b45d814932140fc7a4679a9410f29ce3cacfcda9df6"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "17b776bd9a2559d19f8b62ab3eaf56fb0c6d850ab1d1d5bdc9ef3b6c96257390"
    "nl"
  end
  language "pl" do
    sha256 "adc051f1f1a64bbb686efdc74cef6c0804cffe34f312ef7c31bc7d112e0c417a"
    "pl"
  end
  language "pt-BR" do
    sha256 "eecf75b7410eda1f442e967644f5919951f7593472bf4e72efe9afcdf6fef764"
    "pt-BR"
  end
  language "pt" do
    sha256 "bf2fb3593e10fb9cfc702fc965c31e596c7abfe10e9477ac3f2feceda54491da"
    "pt-PT"
  end
  language "ru" do
    sha256 "bdfcca5182395806cebabc838be60ef88595c1e882a5dfd5a91713b5100d7ee5"
    "ru"
  end
  language "uk" do
    sha256 "da4be905e45a1d834bde0f615306e4859064b29633bce58ddf1c37e0704fdc35"
    "uk"
  end
  language "zh-TW" do
    sha256 "b8972fb602ae87086a328178e747382266342a2bde24ef3554fdf582df08c12d"
    "zh-TW"
  end
  language "zh" do
    sha256 "2fd245fa86bdf50eefe943881cb22e0d3d4c11de2f3b0b2ee15fece7ec854e1c"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
  name "Mozilla Firefox Beta"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/channel/desktop/#beta"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["LATEST_FIREFOX_RELEASED_DEVEL_VERSION"]
    end
  end

  auto_updates true
  conflicts_with cask: [
    "firefox",
    "firefox@cn",
    "firefox@esr",
  ]
  depends_on macos: ">= :catalina"

  app "Firefox.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.crashreporter",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.crashreporter.plist",
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
