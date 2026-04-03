cask "firefox@developer-edition" do
  version "150.0b5"

  language "ca" do
    sha256 "d31d6c9ec11f8bb986d139ef40272fa10c95351c7d752f3196dd8eaa4a692250"
    "ca"
  end
  language "cs" do
    sha256 "ab9cc546b54a92a1d487053180d20ff90abced145609662d8d9f9dd9d372b914"
    "cs"
  end
  language "de" do
    sha256 "e5e0ee6053ce2c1e0a671ae4527d5af744b545d801058bffe9762d9a4bc20d8a"
    "de"
  end
  language "en-CA" do
    sha256 "ac5485e5fb6a983cbab0b185d4e50cbe41051d8216fee74221f9f33f55300f81"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ae2e724d54eb9363a81093d1a3ce601b0d48b046c30ad81fe6d8a47d1eb9d9ee"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2642039cb11e35a127f20bfe2b0e6181553227e544ddc5bf7bee1e3a1aef1491"
    "en-US"
  end
  language "es" do
    sha256 "303935d81b1c1f4e383cda7ff5cc973566df6bbf47cc7dbfef0338140bb4e0ea"
    "es-ES"
  end
  language "fr" do
    sha256 "c047787e4106a7b4832fd74a28d84150d64e1834a63d8739ab5e6b6e44741afd"
    "fr"
  end
  language "it" do
    sha256 "5aa9c5408a507b1895fd073072ff9ab86b0a339afbf8aeb2710d828d14f14034"
    "it"
  end
  language "ja" do
    sha256 "e35d4f120b86d003c7c5c2582395aedc4cd0b7c625fcc396bb0499f900728646"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "97208c117a04a1585cd5bfc8f262f0a08d358d4d2dcef39421bb8ae3a43aade9"
    "ko"
  end
  language "nl" do
    sha256 "86ce4def5c432ab6d15ac5a5821e9fa5ae0da3845f1bb0a1217c0cbb532116b8"
    "nl"
  end
  language "pt-BR" do
    sha256 "661ec2716cbd3103c5736adf54b6ba2e07aabcf5a99762c6420ad39417cc37b8"
    "pt-BR"
  end
  language "ru" do
    sha256 "13e95be22999f5be67cf0f05e40216553e8a98de71e01d9bc085812ea4667fa3"
    "ru"
  end
  language "uk" do
    sha256 "c62ccfa88e6400b5327d8a061e88ad32e604dbc6d1588bfc95e3980964988bb1"
    "uk"
  end
  language "zh-TW" do
    sha256 "25acac5f6fb6ce6ecc560c6d2e0ef697629831b12f7f34d7558d5cf59ea52722"
    "zh-TW"
  end
  language "zh" do
    sha256 "1c97e14ce59b60f79d0a51d402c0d489567dfc4816a96821f53709adcd774d2a"
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
