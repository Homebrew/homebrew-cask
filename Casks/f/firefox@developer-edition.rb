cask "firefox@developer-edition" do
  version "130.0b9"

  language "ca" do
    sha256 "cb988cb95827dc09fe02f72a4e849b8cf1615ffd42bae92130c5ea265bdac62e"
    "ca"
  end
  language "cs" do
    sha256 "cb4d31c0095f778a55670a805d9548b8701b8242fea894929cb41e580dc08bdd"
    "cs"
  end
  language "de" do
    sha256 "f6a3a3dd79ef66d68d3c8fb6dc7981bea7b637d7a378eb132882766716450e91"
    "de"
  end
  language "en-CA" do
    sha256 "c55cff19f3f4735a9dd5983fe57d332e4c3560621702fe0b201858b0ba0741f1"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1aed75229b5cb9990027f7473edb9ba9ba082ad35381a28d380ef112f6f1282d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f1adef1c9b6fd3b41154a2f0b3b359442b59b11b89aced548f3c4410f279c2fa"
    "en-US"
  end
  language "es" do
    sha256 "85ea30f144c84ef0dca27d8b27e38886f7a2c97da13bc3b008b68b3227d0d46a"
    "es-ES"
  end
  language "fr" do
    sha256 "5861964682dc2caf8aaa40fbb10da54c7ce74074c2d7a6251959bedeb8b40419"
    "fr"
  end
  language "it" do
    sha256 "b5df64248a87d01bf847c021d726593e1255584fc42925ed183dc16bb74e9b2b"
    "it"
  end
  language "nl" do
    sha256 "a5022c72b3da2fa23fceb6492329949e391e0d91efadf50696a86850a3eafa76"
    "nl"
  end
  language "ja" do
    sha256 "374c1b5b94574a181e499e8653febb82c40a5f91d2823522ab31cf92c8004407"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "5801fa91e18e1efb92979d63a30d3a95b1f1855e81830297cf90c1df5f673ce2"
    "pt-BR"
  end
  language "ko" do
    sha256 "21d7bcb917f48badad74e1fd159c97c9e7d5363187537326558f4c113ecb7cc2"
    "ko"
  end
  language "ru" do
    sha256 "54a83a7a29d7844f849e0cf40f49565b490005661447212ce94ae9df9d36e42c"
    "ru"
  end
  language "uk" do
    sha256 "20f7a9b31c2dc6705953787e9bf2383f5303c5bc9e65df1653416d1bf9445764"
    "uk"
  end
  language "zh-TW" do
    sha256 "2ed41bd31c1f9d31cfa930de2c5b42f24b082531deea6602c7a7cd151b7ac3e4"
    "zh-TW"
  end
  language "zh" do
    sha256 "8d3fd01998b85eaf21d95f3f071c3a465c221615e1d223ae7bbea515bd2214b8"
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
