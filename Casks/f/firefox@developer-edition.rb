cask "firefox@developer-edition" do
  version "159.0b1"

  language "ca" do
    sha256 "e01e774c6c622a923afeb27d1b636012632fe5ee6e4bf63d7edadd4fc3c5c586"
    "ca"
  end
  language "cs" do
    sha256 "0a53caa7cbb665b7273d25ea824a4436dd0453193cd8beb29f86e305543c970e"
    "cs"
  end
  language "de" do
    sha256 "6ba8271968b2cf574fcc8d8df7135d430ddd7b6d69a7232f06fe50c3f8e4c5a7"
    "de"
  end
  language "en-CA" do
    sha256 "360b34da8cc7da40e7ebf3c7278536434b55fdee340f327b93982d5ab9d0f64a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "229ab7d00e1602a49b1e326a0d4272618cbbd9015716ab2c7aa408ba0bb230e6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "83a1e4f04dc894bf0a4784e95cb793b858bccff8e710d45ea7ace5da3d6e65a0"
    "en-US"
  end
  language "es" do
    sha256 "2a6b9a5c185d076acd6f2238df09d427ed3f38d2d9240cfb93b36cba71e3d2b0"
    "es-ES"
  end
  language "fr" do
    sha256 "72fdabec8294922280b5e0c6144340c1242206d75178fc7285a670d421a44e11"
    "fr"
  end
  language "it" do
    sha256 "90a9a0d9c74d7ff351b51fe5ac6dbfcc599a71a86d0c2342cdc004d0d66598cc"
    "it"
  end
  language "ja" do
    sha256 "23573a44132818d073328c9826f992e07b22158f5ec426202aac6d7fb36582cf"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "61a9b0f8efab67138c7893f336df48c5dd33d7c0d79f92a33ca3255070277104"
    "ko"
  end
  language "nl" do
    sha256 "4ad0aa4bfae042df14721cf275af29f14cef7c634eb249f19bc59fb27df5e896"
    "nl"
  end
  language "pt-BR" do
    sha256 "12f75176586936bc6e63a4944b0240eeae29e7d26035225ee7b34646c64602ac"
    "pt-BR"
  end
  language "ru" do
    sha256 "94b423455d508fbe850457898f86d05f286a1abfe8aa6d2743deb535e5a2806d"
    "ru"
  end
  language "uk" do
    sha256 "b7e19f399da1592bb126271955de5972140d2072ce515de5edbf1748dbad3e56"
    "uk"
  end
  language "zh-TW" do
    sha256 "84d4b6ba9467a930c8dd756aa60843abd09b4a920baf728c07460e11f5b28717"
    "zh-TW"
  end
  language "zh" do
    sha256 "9ef9407b814e01f6950e32dd9118c678bdbb1f7473a715694ed8a9ef6876110b"
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
