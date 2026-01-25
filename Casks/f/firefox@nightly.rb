cask "firefox@nightly" do
  version "149.0a1,2026-01-25-09-23-01"

  language "ca" do
    sha256 "8a3d8159fa024a6697cc6a7580515a5cb0d29fe7bed1c38ba6ff8558ca1ccf26"
    "ca"
  end
  language "cs" do
    sha256 "82098584e4348c06ce1df647121ae193df2bd4e45fc49e44785fb2c37d793f41"
    "cs"
  end
  language "de" do
    sha256 "518c9b91a967ad2ad5768b7ac601590cea48bd1e1a22c6fa011ac8abf6375e29"
    "de"
  end
  language "en-CA" do
    sha256 "67b3f7bc68b312809770d3b295180b01d8331c8cb0d568b41258270914923b48"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b84c2b45e2fcd0d219ce5715fa023232b376f83cf6240ad5d402ca7d4f068a4c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "34f302903fb576bf2e87eac53053c1da19c1c239f89bfb4c1bd1ee7f6cc92f08"
    "en-US"
  end
  language "es" do
    sha256 "7f58383ceb537bc8a8c47f0b2bada091cb6adf7d8c5d35bb33da58fca8a03ed6"
    "es-ES"
  end
  language "fr" do
    sha256 "37408a78b47994a05d2a953d267721e4cd2c00a25750a8cf7a0474e24e39c8cf"
    "fr"
  end
  language "it" do
    sha256 "94894925a7b4244e721c2c72b142771fb4cc81aed7551e75805ae0f9f6bc9641"
    "it"
  end
  language "ja" do
    sha256 "d4f42b335575dc23bd9fb95ee8ac14f477b6619373785d2e9cd2991449b9a05c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f8f67b1ecf9a77b9d7b63a47eac11a36a931e7790442956e0101aa27c3bbf81b"
    "ko"
  end
  language "nl" do
    sha256 "01e1ec36a885f88ebfa9daf7dba326dc08670c6a303b1950a16ac9de71d20a5f"
    "nl"
  end
  language "pt-BR" do
    sha256 "491a2af0a6f0cee01af688eeb661c58fb4182c16a4440c71588c797677d622ae"
    "pt-BR"
  end
  language "ru" do
    sha256 "a98d0a71b15ef46bebefba425b6e97440c069eb702bd62b0d8a679db2c19d123"
    "ru"
  end
  language "uk" do
    sha256 "5f06c9e560ce9afd703d4aec8ac1a7cbbf438665a8f4abef0187173c8499588b"
    "uk"
  end
  language "zh-TW" do
    sha256 "4cb017f71b311effc721f3c8fa96aa5593d650a254cdd1f6c17934d9e1e22899"
    "zh-TW"
  end
  language "zh" do
    sha256 "1d3f9a206ebbf1e3dfc5b52bfe6a4202c9a2611fa2c9d3b62e89a7b877d2345a"
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
