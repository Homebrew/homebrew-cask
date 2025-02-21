cask "firefox@developer-edition" do
  version "136.0b8"

  language "ca" do
    sha256 "7c17cbe6da3e5bf789df363d5f10a4e468b01d0d80180c7e329d0d588bff5067"
    "ca"
  end
  language "cs" do
    sha256 "a3aeafa4966676e9f4c6d2c05b54835e52cd83d44fa9c9d0b756fc9e03e75979"
    "cs"
  end
  language "de" do
    sha256 "4c15d5a3c30f02a77edc2c0ea097a106466c8ce956ab77619442b648257e604f"
    "de"
  end
  language "en-CA" do
    sha256 "1d2e61978038a56e18bbefd152c5e4687db85280e8d70323b773d2055f4c14f1"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f5eb550f278ad24919860d4ba21ed1f472f59669ad5f3d25403ef572ebf6a9a8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "58cf7aaba3b12b40a4f1baf499cc717fe33d5a6f1b067bca258aebb7105f0ec1"
    "en-US"
  end
  language "es" do
    sha256 "8ec7f8df8de543409054bfcafceda937afa59fe8ae43153fbebb599317d428f4"
    "es-ES"
  end
  language "fr" do
    sha256 "0df67aa779fa95677ba4fa708528aa09b1a13aee533522946167117ae3437ae3"
    "fr"
  end
  language "it" do
    sha256 "549599518de645877378789a9941bdd071cb680e820308d78417c482f1aafce7"
    "it"
  end
  language "nl" do
    sha256 "30c749d2b0100956f5ef93e1cdd706d162188e8f85e776c8d63d6fe04e952bd4"
    "nl"
  end
  language "ja" do
    sha256 "27c865d3404465f7267c2a5c80915862ce6c4cc3a906b51bf751a1369f880176"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "7d667d0289b7f0436af172906f407b80f94fc21f9fa0eb7e9a3c7c6e70c76a94"
    "pt-BR"
  end
  language "ko" do
    sha256 "89200140f8698885b9b071f36b874359d8fb5294545805c99d62f39092cb464e"
    "ko"
  end
  language "ru" do
    sha256 "6766e545638d4296cf9025ef46bea49953dccf6e7a3c551bf88bccf188c58bc7"
    "ru"
  end
  language "uk" do
    sha256 "5ba745c130939c617a88a65199836bb5cbfb9dd89102a2062fbb56dfa0b31eea"
    "uk"
  end
  language "zh-TW" do
    sha256 "b9b80ac4d9f894e883f8d8dddea89e3d0fbd5a60c78db0a47d9d8e5299ea9041"
    "zh-TW"
  end
  language "zh" do
    sha256 "79350de1b0848d6a9e229c45fed180a99834f230102e7deee2127e086327c0b4"
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
