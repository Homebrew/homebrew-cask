cask "firefox@nightly" do
  version "159.0a1,2026-10-07-09-54-43"

  language "ca" do
    sha256 "4b2a3242a1069e60661cba990aa8258057cedbbfd88db6143446e9b6892104ec"
    "ca"
  end
  language "cs" do
    sha256 "f4bb907f0788b732698ba1c27e484eb99c41a596af90fc1f7e2943290125e078"
    "cs"
  end
  language "de" do
    sha256 "94fc76bdc46116e83db562b58c14b15bda9ba039f3e9d5234129e854b9c7af5c"
    "de"
  end
  language "en-CA" do
    sha256 "dd114149ba65dbbb4538727373bcf15adfa73965816d7e6e0615ffc3b40f7353"
    "en-CA"
  end
  language "en-GB" do
    sha256 "283bb496b7c63afc22831edefbe8ecd82325b36016b8e5e0bd3f738d3cf2f6cc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "04167e18e701521714642e554576f0839030f54cd4ed885bce39848a5d4981dc"
    "en-US"
  end
  language "es" do
    sha256 "dddcda8e541badcad642e083e5a04853ee86f68a3fd6fc81f84da65939921ee7"
    "es-ES"
  end
  language "fr" do
    sha256 "b155911c306824dfbb60eab7c0f3a98d2b07ab97016877368e6b98db0dbf82a1"
    "fr"
  end
  language "it" do
    sha256 "364ec178e7453d7d05a64ee8be956d6272e214da8fd699c35241fc3df47f5e36"
    "it"
  end
  language "ja" do
    sha256 "b1b70c23918fc7a024f0a090e2a4c92256c374c9695f67c11dbc7ad2c8521c61"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "5fbf59d41146967668e08497ed8e8bd39c24c7855f9035addbc546802f194ab2"
    "ko"
  end
  language "nl" do
    sha256 "8fa0cf21d45c6404f506c3433f9d4604e91e3c042e99b1dfdb5b5a206127da79"
    "nl"
  end
  language "pt-BR" do
    sha256 "1696a32fc2498dbce322a2425b20ed05b17acbd21f602c6ccc5f72f93b131077"
    "pt-BR"
  end
  language "ru" do
    sha256 "553af63e0c420748e39b13eea88bde1462e166bc81433bb2c942459e03d787d4"
    "ru"
  end
  language "uk" do
    sha256 "40606a897fbc7047eac78207df23a80e1292ee1a416d94ea2705e584faff6be3"
    "uk"
  end
  language "zh-TW" do
    sha256 "e3a5f4b3ae165d5a85be0e1f733296ef7e75a70a5e71e00efdac96865e4d2b1a"
    "zh-TW"
  end
  language "zh" do
    sha256 "088088e3a523c99321d1715372baae1344a14d54b4035255e5a5483476ab3985"
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
        "~/Library/Preferences/org.mozilla.nightly.plist",
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
