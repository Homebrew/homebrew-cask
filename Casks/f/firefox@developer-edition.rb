cask "firefox@developer-edition" do
  version "132.0b4"

  language "ca" do
    sha256 "65bb5e98f0d7968f1fb23ddbdd69c9873f4cf87fa919bee7fc3e41d80fb8e4d4"
    "ca"
  end
  language "cs" do
    sha256 "fc589497fcf5834699c8c94759912c7111ef2e5677882bae46e132b729a1e7b5"
    "cs"
  end
  language "de" do
    sha256 "cba4074ba94f85c6313f7360e282484c5446e3d825a4d9fde1e47cb6ba3a9f2a"
    "de"
  end
  language "en-CA" do
    sha256 "d8407791c96cc6cdc6559b29d98a21bee47b91aaa564b46da4a9f6b045d7d514"
    "en-CA"
  end
  language "en-GB" do
    sha256 "da2db56e1e9b50d72fb76de1dca151d7f250febfccaa793ea687ef7a2073e9b9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2135e36621c061b115005ec7ad7c5b44eddd5fbb988cd8f5bab8909db1e6733a"
    "en-US"
  end
  language "es" do
    sha256 "cc8ac766f2e76578df1bcec467a0bd0dc2beb35f53b8a7bdd763dae6e88204ed"
    "es-ES"
  end
  language "fr" do
    sha256 "8749c74eb66493f46a2cce8d71597301d481faa5c565bf675d1e315a9e985d28"
    "fr"
  end
  language "it" do
    sha256 "37045b1c0d4b1eb58fff0560bbf9a970bfd80af60c8dbc9b01c4dd49b8225de1"
    "it"
  end
  language "nl" do
    sha256 "8f4730515043e2d96b4ed821b9dba673f160bfa91cc5fbf906969bee57f96142"
    "nl"
  end
  language "ja" do
    sha256 "c01adaf435f7b6d1aacc7d1afcf3d1498831fabd4d81f16720c48902f6faa2d8"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "905b27b51785238787e55e35c00cff8432abf2e709dcf4fba31f5076e09f6918"
    "pt-BR"
  end
  language "ko" do
    sha256 "786868fcef8d54e8a9b512a170d66d68cf0885a2f35e824ed0139944ce31a348"
    "ko"
  end
  language "ru" do
    sha256 "d648c0636770a73c7193fc0fdfd46db5c7f8497673152d8c6810d1b514d5f8b6"
    "ru"
  end
  language "uk" do
    sha256 "a0ce260c53592cf9fb76862fb8ca7b38646216e6735d608f65f8f0f1430db17a"
    "uk"
  end
  language "zh-TW" do
    sha256 "4a3250fdda7a12e709a3e21f4453724f688b09e5686c321b913b7419b84f3d84"
    "zh-TW"
  end
  language "zh" do
    sha256 "33de37bb4f9b95d403013612b302e8caac8b87a69e7e70666d3fabbc8f2ce3b6"
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
