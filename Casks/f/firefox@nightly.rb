cask "firefox@nightly" do
  version "145.0a1,2025-09-22-09-30-20"

  language "ca" do
    sha256 "e4386bfc650c71a7ab3a86875d53968a7bdbaf510b075e151445fea31709354f"
    "ca"
  end
  language "cs" do
    sha256 "55fecb384a4c7fcacb45b3b0db2fb02b1af0bd64ba0995209032e0b6416fe60c"
    "cs"
  end
  language "de" do
    sha256 "6e88106b8aa05702b0ca2b37bc4f2a1e834c6435966855c334f3c17928f84014"
    "de"
  end
  language "en-CA" do
    sha256 "d78ad24bb2ef7b66e8fa720cea1e541e2a3b289caf8da6b9b5a0e8215639c89e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ffcf690ab77f57db27f91a3e8e1a47c8e508b43ae2772cbe9968aa4ec82ea91e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d80e37b6bbfa09bc597deda568bf08c5840f38de87d49c23cf1620631495e3ae"
    "en-US"
  end
  language "es" do
    sha256 "40e3f96e0461348d3d6d215466f557e37e6ac33fbd28f33bc3a45f2eb08f58ff"
    "es-ES"
  end
  language "fr" do
    sha256 "a4d74ed3372a2e87c9ba3e72da08e6a4f638e186a3da5a99a77360724a4c7d14"
    "fr"
  end
  language "it" do
    sha256 "7706d48866df5e00e93d28f1430b77da314aacb46be7b8e90b0151c1a939241c"
    "it"
  end
  language "ja" do
    sha256 "3c98c470ea291bc465d3ec14d62fa555eaf44922e43e5e0f7e7af4ec3eec9f3f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f9520116592557d08b4d5c139b0bd0712aae9fecd0aae0e3ad1584b39c936d95"
    "ko"
  end
  language "nl" do
    sha256 "dc6f16eda34fb2901cfdfb8ac6c1e6bfc55fce90e2931177ee42616c1b560b48"
    "nl"
  end
  language "pt-BR" do
    sha256 "8ccba65e273ca928a99b753d6a263d917fb07449ddedadc2355a9df768b29a44"
    "pt-BR"
  end
  language "ru" do
    sha256 "c85bb512bbeba7e8f408a756fdc65ebf4b52b99013bcf53c3491b1802a249ba8"
    "ru"
  end
  language "uk" do
    sha256 "919ccbe76e3e645f875d44d562d09c08d264b23467cfd38881458d6e96c28910"
    "uk"
  end
  language "zh-TW" do
    sha256 "abc163e80dda9b0b686e9e000a59bdb7bc48ac622f875d2912b9a331fc2b7efa"
    "zh-TW"
  end
  language "zh" do
    sha256 "66aec660c4c9a20e24c430ea4a7cc99d2f876b386c27f156c4368e18051cb3fe"
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
