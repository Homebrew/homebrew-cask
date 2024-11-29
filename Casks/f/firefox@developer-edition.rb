cask "firefox@developer-edition" do
  version "134.0b3"

  language "ca" do
    sha256 "3bb1320e27ad5d59513637e701e15c558976e296ac9cc9802f9e84a729ad9f26"
    "ca"
  end
  language "cs" do
    sha256 "a70ac171c24f5eb94ab570b7b05cb157c2091c4e25f1fa29824e5bae2cce4858"
    "cs"
  end
  language "de" do
    sha256 "5f14bb233210e4e3a153ae16b8deeafa82fa403c1010fb331fb98a11fbc811e2"
    "de"
  end
  language "en-CA" do
    sha256 "73b47737059d2aadd9de49f2f132cbd945e653b66eb04238a1f9f7bd6b7f081f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "78a5c1943caa1affa255e4e53eef6f3ab0c993bc5b52405e118682b95198c47c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2467b900b7d661b158b51449469d357c4642e8172f2cd323a64632ab72ab321d"
    "en-US"
  end
  language "es" do
    sha256 "c9e45c3307dfd213464973d8d069832dbd6529fadaaae13cfdaa69e3b546b863"
    "es-ES"
  end
  language "fr" do
    sha256 "f2a8a55e9cb2a1bd72efe9d304be47c8f04223fbc0ae3512dd8250af894ae37d"
    "fr"
  end
  language "it" do
    sha256 "46d1067276fb38c64803b6a29d38126f1b804f82bf11495e6d330fc40093e027"
    "it"
  end
  language "nl" do
    sha256 "5f89fc3a574f0b86df4404b3292448c74cf612d523e400fdd6babe7719baeca3"
    "nl"
  end
  language "ja" do
    sha256 "b1556d846620ad403f59555abba0eb648fbfaf09bedf3b7c50e37f4b0d167a2d"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "1d1ca97ddb641ab0e4830ba0d7060cc21d86d40755c5d6015a0f677fc3713e0f"
    "pt-BR"
  end
  language "ko" do
    sha256 "abe96bc08dc09a28f1d7b8790cb94874669289e0a82d82b7977be54106bd8d3d"
    "ko"
  end
  language "ru" do
    sha256 "0881b3374d0a0c6642b18da90c18731bcec45413add1b7ac6a85f52ad4e5da28"
    "ru"
  end
  language "uk" do
    sha256 "a4867c19d2fcf514f52c6af5f6b5b86332b38eee8bc575fcc74ceee514ecf8fd"
    "uk"
  end
  language "zh-TW" do
    sha256 "870a3d7d820bfe90e1eb5b48ac48a3685e5c45a4325936265cce0d928b119f28"
    "zh-TW"
  end
  language "zh" do
    sha256 "f8058b8f81f5222f85739756473a5420e451a2f9cb68963402deacb412d4e66d"
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
