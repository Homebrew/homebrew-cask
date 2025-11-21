cask "firefox@nightly" do
  version "147.0a1,2025-11-21-09-38-02"

  language "ca" do
    sha256 "b65ae3f23cf8b70e8030d6c7be4cf153c633801813d26916d1f17125be3f35db"
    "ca"
  end
  language "cs" do
    sha256 "805fe49614a85f72760d342bb78ea4680c94cb9629a0d836ea19a81c64c9ddcb"
    "cs"
  end
  language "de" do
    sha256 "79f5137f38532f53f15255c68c1823038c5cff8b4527642b206761d7d4211ee6"
    "de"
  end
  language "en-CA" do
    sha256 "493f8556579640e2e4a71bb044e94a0ef194ac0fab6893d87ac90b605eba515b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c6a02835a4f3f1ada0f6f9d45759cee7bd2f963d320fb59a64c4e90fcc4f02a5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "664e7b2df896ee31dd9519864c1e0260011f3a66396963e2d3b1400977196700"
    "en-US"
  end
  language "es" do
    sha256 "73e549c5cd8a8dfe095ff69f13e31e3a73eebcba61bc458e132b314b5ab2230d"
    "es-ES"
  end
  language "fr" do
    sha256 "4d2c81c136c2f44b60cf2e1e9e9ba10fe3062904b2e3c538694573edb974da93"
    "fr"
  end
  language "it" do
    sha256 "aead512695088f4e34720cb2e16f4285ca0b8985b30450f3b00df8ed41c43f58"
    "it"
  end
  language "ja" do
    sha256 "2f5a1371bc54bc5f69ab0800a9f6b3137010083f5afdb7679bae49545efb637e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c43dc35aa83de7a0c84a1b8607afcca394ff2d2eff9456dc3681ac9620d771f5"
    "ko"
  end
  language "nl" do
    sha256 "6aa17bffa22ac8d2e80fdb74b915f0d8704647b0e524568ea3b64974ff8a2b8d"
    "nl"
  end
  language "pt-BR" do
    sha256 "e8dabc54808bba7c2d842e7c02464d189714c124e51e568bd9fa87e2baff2822"
    "pt-BR"
  end
  language "ru" do
    sha256 "4f1738d378863f26bbea313dece13527fde61965173fef2f95347c826965b39b"
    "ru"
  end
  language "uk" do
    sha256 "9ebf5dfdb469639842401ca115a71c41013aee381bde4b285ff98a30cd757f97"
    "uk"
  end
  language "zh-TW" do
    sha256 "fe9bac0d258ce839dfb227af6e7b30b6df8951efe1ba5fbe6ff4bd004161b993"
    "zh-TW"
  end
  language "zh" do
    sha256 "826b2584b90934a2a1c2098637aa0b6b597e744d2528a0df65e89281b2964423"
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
