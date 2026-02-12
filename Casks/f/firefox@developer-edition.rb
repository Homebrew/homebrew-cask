cask "firefox@developer-edition" do
  version "148.0b14"

  language "ca" do
    sha256 "442021d4980b28ee4da974a35686f1221a9d58a270c8951db93afa405a395966"
    "ca"
  end
  language "cs" do
    sha256 "89313c1098c8e742089969d66404eb50eaea362d7bca3e7d7298c5972864480a"
    "cs"
  end
  language "de" do
    sha256 "9cba19e64a6ad34b23c0ddd17cdcf46aa951e70869496efa87dbf7a8306e347a"
    "de"
  end
  language "en-CA" do
    sha256 "bc525e4a3345f6fcc4e2ecdf685472916d3b2ed4bf6f167e87e482973a3dec6d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c5044bf93816daed1805e4cf0f16be13f3186baa4c20025f128c2f41bf9c2752"
    "en-GB"
  end
  language "en", default: true do
    sha256 "46395633f641840b9818716b9995db5aafae9f9a3bbf1976a604033fa02794d1"
    "en-US"
  end
  language "es" do
    sha256 "22d47c253642a6772d279c34923f093ded31da5ca8302bae58d8b6c5fb5cba7e"
    "es-ES"
  end
  language "fr" do
    sha256 "b1e40d99f91fda8d6d6003cfb583e7745f4898bfa27f184d20bf5d81d041cefd"
    "fr"
  end
  language "it" do
    sha256 "bf1538dad32bd4642a101f03d00ee8c7eaa77515711edc9439729ee53724c5af"
    "it"
  end
  language "ja" do
    sha256 "038e4255c701e4df0a240e49bea6d69f183096b756c2cfe5d0c26ec6e22b61ee"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e54a96b90d4d9a4f185bd3450b48e2ce56ad2dd955e84c51e9e8cda23cc62e6e"
    "ko"
  end
  language "nl" do
    sha256 "55df075c058feb58f11ef09049f263e86eb964cf21529f8fecdfb6323f878777"
    "nl"
  end
  language "pt-BR" do
    sha256 "ac4f7f8358df1520ebd12c1e4d4b186cacdb5de1b872b7474774552d4d7f4f49"
    "pt-BR"
  end
  language "ru" do
    sha256 "1bb849426929c809e5ece8279da94c03b814b86cd148501feed2ae214d73ad62"
    "ru"
  end
  language "uk" do
    sha256 "c84e6898798187cf1b6e0b2a820db95593e6804f9a32a6308b7f56967dc1daf5"
    "uk"
  end
  language "zh-TW" do
    sha256 "a0412d235bfe7409da807e754ccea41ab27500230bda9927ec612020e0572808"
    "zh-TW"
  end
  language "zh" do
    sha256 "87ffadbdc1c294b33893e4ce664ef4f93b2c772df19e1b29fa3dd65883ec8304"
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
