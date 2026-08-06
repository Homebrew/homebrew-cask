cask "firefox@nightly" do
  version "155.0a1,2026-08-06-09-54-21"

  language "ca" do
    sha256 "30373977b321462b395364235729847bdbd884d3e30aacee294f093809f9b978"
    "ca"
  end
  language "cs" do
    sha256 "2aee7cddbafcb409ad4df5fb7b4b7dc87135cb35010df858ea9767091d583d9e"
    "cs"
  end
  language "de" do
    sha256 "3e238d0d7a62555fe3460b347ee562a54dbeb2f93173310d3dc7f1608c18e943"
    "de"
  end
  language "en-CA" do
    sha256 "c0fe56fb375d41a2ccb714baaa9babdb9a480f47d70cbb3e5f7e8df16f9f224a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f5ebc7a445d3207976fc66eb3c012162042ba0e8c8fb419d790c79516d545bfd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7d6b517e9bdda6458d3daabbb40242e813f7d634188ec2ae4e1ec56ec327f89c"
    "en-US"
  end
  language "es" do
    sha256 "fbe4d280ab5d56b280947d677cb0756e3cceeb5ddb5820b13f51b240d1781465"
    "es-ES"
  end
  language "fr" do
    sha256 "dc33b413fb7e638b58466bf53b238b3329625d81b7e50f21ca90047231d87007"
    "fr"
  end
  language "it" do
    sha256 "962d77e1c57767280a637c52bc14b35aebb7f361d90d40f2b029df87e7b7c8d9"
    "it"
  end
  language "ja" do
    sha256 "9ae3f790db0c7f95d6543b3a18b56b032ef8e0653a017023838618af92cbe0f1"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c1739a2de786e987dfe4d0beea70d47a070ff186544bffcc2f2a7e56f059ba39"
    "ko"
  end
  language "nl" do
    sha256 "41167fda87437df03f65f164b6217e60a995118f5a50b797651c52916b107891"
    "nl"
  end
  language "pt-BR" do
    sha256 "f9c1785a81bc097179adc2dbb1b3c42e90a6f4f925d21618917e7c6754174426"
    "pt-BR"
  end
  language "ru" do
    sha256 "e246c86bdce6ea42b4fb92267dab191c5a79dd6a54cf693e4992c3e0a94363c6"
    "ru"
  end
  language "uk" do
    sha256 "dcc64ce13fb4565dd1b72bc461c46ffd3abd5ac6e0238bcb22b18aeda87dd552"
    "uk"
  end
  language "zh-TW" do
    sha256 "c741cbe783c0fc59d8c56ddd2e5e2e3daba8604227fbcdc8f270c3722d7beaf9"
    "zh-TW"
  end
  language "zh" do
    sha256 "8877ed54171339e9f708b498fc7feaa7da1a8395029f1ae1ba155c5701533cf1"
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
