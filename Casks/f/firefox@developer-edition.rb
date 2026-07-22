cask "firefox@developer-edition" do
  version "154.0b1"

  language "ca" do
    sha256 "38243d0e830e7d78492d890b05779d18dda44848f5b3b3b2f2000012befeb877"
    "ca"
  end
  language "cs" do
    sha256 "280798db87c0f3a687995796545316aceb2621b26a0e1417eddb746c197036b9"
    "cs"
  end
  language "de" do
    sha256 "01174679b65ab606ed3b4255d6a1733dfbb65d9f9af9983d1cb20c76a760cdba"
    "de"
  end
  language "en-CA" do
    sha256 "8d44c2b1a4ab1304d1b038bd1f4d698acf163e07a7e06c56788b217bc51b3832"
    "en-CA"
  end
  language "en-GB" do
    sha256 "37470a7fb2aebb8b01c478390f839fda5e44cc4d0e22f194c1c9874731f4587d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "28ab899ade74fb436e450eee2db6a491a8f288e38d4def4ea828a2755f6f6cd5"
    "en-US"
  end
  language "es" do
    sha256 "22b7fbebd6ab82be7175613c70ac278214fc0a53df8dff11becd8656cbf3c058"
    "es-ES"
  end
  language "fr" do
    sha256 "ec3d8c024719d923c49885d427058b5676c37510a72896c341f1bd1b556e7e51"
    "fr"
  end
  language "it" do
    sha256 "75228215710be73b5a1e524b134cd6e4721fe9a9c5ff1e6223d557a21007a4b9"
    "it"
  end
  language "ja" do
    sha256 "3bf53644e26d7e0f3069e7943d0839a2978ba04a9ce286e6cc0aa6cc8f16d28e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "af08d3b7ead9001da48e7769949d0b222f4d8a23a11b326b4567e0c3950c0176"
    "ko"
  end
  language "nl" do
    sha256 "de402183d84941257aaa63b3faa66d5d5c86577b02f5d938c66df6c01a083c1c"
    "nl"
  end
  language "pt-BR" do
    sha256 "5faddf80399167aa0ab0c76ec05b1704d5725996751494da427eb0497d8c4a5d"
    "pt-BR"
  end
  language "ru" do
    sha256 "767e1f73b1b1f00c32e33641a0cc172c43a6a57c337964f8647948fb8bad577b"
    "ru"
  end
  language "uk" do
    sha256 "e78896ec26edf54008e90ad3b2053552103d6f2deec4df7b764a1198d43ca79d"
    "uk"
  end
  language "zh-TW" do
    sha256 "6be17a2f6d6e537453426fcdb69e369b1c35db55c07372eaf2920163035521e2"
    "zh-TW"
  end
  language "zh" do
    sha256 "c50c6386b829e2ad53335956278419a7ef2dca48099ae2ecf71f401345acb6d4"
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
