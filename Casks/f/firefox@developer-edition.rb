cask "firefox@developer-edition" do
  version "129.0b6"

  language "ca" do
    sha256 "7b0f58756326874e7f6daac2013d8efc28d332f7f2372f7b0b705a17e8b55a2d"
    "ca"
  end
  language "cs" do
    sha256 "2b141efc994b35cea39e338fa16c12cb0ed82af588b77a6ddbcd5e65502310b0"
    "cs"
  end
  language "de" do
    sha256 "6f28ef23a3bea55a31b8df39d0903dc4de3bc0179201e3d52fecce2891b58fd4"
    "de"
  end
  language "en-CA" do
    sha256 "0bfd4f18e18ad174574d3f303312e09609f45ebb4451c47e812cad86948cb42f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "989e21c0c16d92de4118d4eae26467b4f79d3fd63016ce77a023247f06b1decf"
    "en-GB"
  end
  language "en", default: true do
    sha256 "037f9e7d5311ab2d378bd450bf9f48e8c94912dba3b152c02e4de2504e898a72"
    "en-US"
  end
  language "es" do
    sha256 "2c929ece834d15ff3de3356318fd5b7d040a18ab834ef6f1e858e2c6fc7febbe"
    "es-ES"
  end
  language "fr" do
    sha256 "6e90cd9cf2397552c4ac4e9b6d114aa1cd537476238d82fba799681d634389af"
    "fr"
  end
  language "it" do
    sha256 "fe8eaaf2b159e2381366e1284cf076374d750b1d7e23fe484a4dbeb796b35aa4"
    "it"
  end
  language "nl" do
    sha256 "4a9785092197e112c4cff9ff73fb9cf6fc5a94efdfabfcf2a54700af118fcee8"
    "nl"
  end
  language "ja" do
    sha256 "1aa44205f577fbc018f32825b3fbaaee1792596ad064875ea253fbf3543f6407"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "e4232e821fa82e4e158a4f9900e3517af1b8a57459e30f216031a345fd517913"
    "pt-BR"
  end
  language "ko" do
    sha256 "8f8982805f20efc0203b9ca80d3e547c43e6b8aa7ca79711aa9b391c43ed7d93"
    "ko"
  end
  language "ru" do
    sha256 "44630c9e522becdafa248daa763171404fd7b9a7dfff2dd7103f1add0178956f"
    "ru"
  end
  language "uk" do
    sha256 "7b4938a7a3535c97afaac89f259ccb06f08c2f26db9c131a7a9e78f474b95c06"
    "uk"
  end
  language "zh-TW" do
    sha256 "dc870d9c5ab02dc16c29c61eb86acb31a82c894c202793f998dfe7efc7384b61"
    "zh-TW"
  end
  language "zh" do
    sha256 "7ddb108922a793bc9d127861465c8672f6923338e014679d2fd3b31c0bc54e4b"
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
