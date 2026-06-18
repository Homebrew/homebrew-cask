cask "firefox@nightly" do
  version "154.0a1,2026-06-18-09-42-18"

  language "ca" do
    sha256 "8fc8a7ae6b9c0d627121ece9c1237b485865f6a114226c58c0c9610ca8b553e9"
    "ca"
  end
  language "cs" do
    sha256 "38a0f6ea25d9c13e859dba7526e214cf22fd3c6b5349e29803f6f5093696422c"
    "cs"
  end
  language "de" do
    sha256 "ba762621e2f82d7e01f5664cc7bbe51cd41c7a6d1749da8bb159842efd6049df"
    "de"
  end
  language "en-CA" do
    sha256 "e883290b9b8a69404205ba17bbfe79f28f77c2f4d6c5746a6d84835597451d46"
    "en-CA"
  end
  language "en-GB" do
    sha256 "18beec5b14e85ae8f5bde2dc133a41da5dcffb241e8b0aa6fb08dc00ab074d55"
    "en-GB"
  end
  language "en", default: true do
    sha256 "becea7154d126d75bfdc00c6174a66007c8854df046bc592dad97bebb8252ecd"
    "en-US"
  end
  language "es" do
    sha256 "05b645987565542781d036f2d11c298751ebed931bf0285f4d9f1f94e2dde683"
    "es-ES"
  end
  language "fr" do
    sha256 "60effac4671ff0ed56a29fd2dae4152f60eb65bcade21c93caf4d9b286ef854f"
    "fr"
  end
  language "it" do
    sha256 "5f99f6292af3ee928c41b2f8692c54a095e90f944a645edfed19868d99ca6b03"
    "it"
  end
  language "ja" do
    sha256 "f98de26b9302e2b7496758a26adeeddfe24951db28c6305d321f730b7f4d563f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "081b7f5aa3c7b5d9de4c4357003f8724762323d7eacbd3980458194e3f647354"
    "ko"
  end
  language "nl" do
    sha256 "c6f53f1f4973ff5f422104b14bf90cc2cc0d488bc3c73168ba351459548d0a26"
    "nl"
  end
  language "pt-BR" do
    sha256 "523577b288e8c9187ce87fb5211f44621e35f96a82b323ad72913825c43d9dcb"
    "pt-BR"
  end
  language "ru" do
    sha256 "3be5b6468e570005182fb4543ba5c7c646a1b664ee4bb6854f5dc287b72847ce"
    "ru"
  end
  language "uk" do
    sha256 "7aebf1504ff17686e90451fc86abdfec3c5e73f9da34bbddc4dd0fc71166b5ef"
    "uk"
  end
  language "zh-TW" do
    sha256 "acfcfbde698e6206b67ddf0af67281110b2eebe2e41066125528b97a26a856fa"
    "zh-TW"
  end
  language "zh" do
    sha256 "6acbbccd5473eaf0c44ba54b983994757596332957e56d079d494c00711db4ba"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/firefox/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-mozilla-central#{"-l10n" if language != "en-US"}/firefox-#{version.csv.first}.#{language}.mac.dmg"
  name "Mozilla Firefox Nightly"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/channel/desktop/#nightly"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    regex(%r{/(\d+(?:[._-]\d+)+)[^/]*/firefox}i)
    strategy :json do |json, regex|
      version = json["FIREFOX_NIGHTLY"]
      next if version.blank?

      content = Homebrew::Livecheck::Strategy.page_content("https://ftp.mozilla.org/pub/firefox/nightly/latest-mozilla-central/firefox-#{version}.en-US.mac.buildhub.json")
      next if content[:content].blank?

      build_json = Homebrew::Livecheck::Strategy::Json.parse_json(content[:content])
      build = build_json.dig("download", "url")&.[](regex, 1)
      next if build.blank?

      "#{version},#{build}"
    end
  end

  auto_updates true
  depends_on :macos

  app "Firefox Nightly.app"

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
