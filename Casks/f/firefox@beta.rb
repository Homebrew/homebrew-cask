cask "firefox@beta" do
  version "140.0b8"

  language "cs" do
    sha256 "36ce96b5182271db1418a5b4b01ed859ffee9066827ccad82bdc3a47d559d503"
    "cs"
  end
  language "de" do
    sha256 "e8ee752d41adf26921e8c4b608bb0b9783cc77e24fda1ff7cdf8bcbdda0a1cad"
    "de"
  end
  language "en-CA" do
    sha256 "9cf3062de6029d9bdefcca106de2b7417b570c6eefa64a4be161d8e45d366083"
    "en-CA"
  end
  language "en-GB" do
    sha256 "bdf1f445fd78cab8524abd3e6a941db62e36bcadc54b54a3cfc8e189e329fc24"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7e648f5e0305a6abedb698ea5b29971cd1eb58225b998baa85a82d94bcf75342"
    "en-US"
  end
  language "es-AR" do
    sha256 "9e6df55d79b3fb4f2c684f68e5787f92d8149866a84b7abf298e3b70abb2ef84"
    "es-AR"
  end
  language "es-CL" do
    sha256 "e6094a50945f693cf6d82b1ecfd574939f82b2fd076d85308c04f55426fdab2f"
    "es-CL"
  end
  language "es-ES" do
    sha256 "009f7f78a27c8099f97be150380a09ecd9d7cbf8befeea972206cf7a28d9fc04"
    "es-ES"
  end
  language "fi" do
    sha256 "62f33a2040079071a797c8d12fc1f47f6d25284a1170fe5575e07d2941ce1cf6"
    "fi"
  end
  language "fr" do
    sha256 "f0170a677bd8813c9414b2f67bbbc286efa38340651fc5e932eee64df616a8ca"
    "fr"
  end
  language "gl" do
    sha256 "c20d43024c299d02e5a8182ce75d90ce0f9ee896f83206318753dc52976ed1f1"
    "gl"
  end
  language "in" do
    sha256 "b388b27393c346bd444da1abb9a7643706821622bb285882052510766a84545b"
    "hi-IN"
  end
  language "it" do
    sha256 "54f9a533c62d46aa4c59ff5892ac721eddd628fccca18ae8bd0b6a9edfa61859"
    "it"
  end
  language "ja" do
    sha256 "0a196d021a5e1be2405ecdd3586b7f5cb538d361222167e326804df79961a1bb"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "cc08354bc517dff1755a8c607db942dc4c857780524ffbe3cb35e992fe9a48e7"
    "nl"
  end
  language "pl" do
    sha256 "663fb0ee3716d4816081671e8d6802f142ee396942199bf506fa1c03e0bcd6e6"
    "pl"
  end
  language "pt-BR" do
    sha256 "e010a2b0f208eb72e48f6daf5d2aa08dafbb8d0dea81df26fc63682d04f85d4d"
    "pt-BR"
  end
  language "pt" do
    sha256 "033bf5fd2ca09e41b598224f0a1f4d8fb60653c4d6fdb56c05578b74d96fe301"
    "pt-PT"
  end
  language "ru" do
    sha256 "72aec0bb64e5605c9cd1b3dceb1921102fd8fc84423a37a9a0ee5977afae3797"
    "ru"
  end
  language "uk" do
    sha256 "82605e82d97ad5f5f64c598f7ac52ae444464f8c51e9c1a20a28a124eec1ccc6"
    "uk"
  end
  language "zh-TW" do
    sha256 "689413b9ae363781be6001972e9b6a8c0203804328f73aafcc8dc59d1b6bbb62"
    "zh-TW"
  end
  language "zh" do
    sha256 "807487e8b346b12f38e64995154c058624a3d0dc33366635117c68b8a8aa7478"
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
