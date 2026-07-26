cask "firefox@nightly" do
  version "155.0a1,2026-07-26-09-24-01"

  language "ca" do
    sha256 "0c87c489ab6549bfb3e7172c73fa9902ad5ba17412d22d779ef2a7e62e31bb61"
    "ca"
  end
  language "cs" do
    sha256 "51733a0c0e9053b2347a8150f69c3f0c65291d7cb2cf73d2562d204569366c5b"
    "cs"
  end
  language "de" do
    sha256 "c571c83ba833395fc13d2a74874122db610d89f458974c716822fab411a41956"
    "de"
  end
  language "en-CA" do
    sha256 "c2e0886bf6ace4a78ca889e1bb808989d33adcd82d3722a1acd2584289858b09"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a6ef4ee5c0a983cc962247d3198433d1539ed76250e9348a77d0b6b2c9f7da14"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7ccb18441a0894597474cf1fb718168bfd1315f32c63aba9284968261c24b15a"
    "en-US"
  end
  language "es" do
    sha256 "d05489cd9139542a641d94e44ba16c898a3bf5b15da130d37256a7e054a1b465"
    "es-ES"
  end
  language "fr" do
    sha256 "1ccd50b3eb470d6cf50199aa71e24b9dbf4f2aa3e16b2c3619548fc00d111d4b"
    "fr"
  end
  language "it" do
    sha256 "04ddcd03e22ec8a6369295fd15c711e1ee5d654db031a620b6b6d42f75e44158"
    "it"
  end
  language "ja" do
    sha256 "cfdfc7b3463a88a0420d7fdd4dd6b8d803026006d7c722f4074aa16d1a4781de"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "79df502decd1e437a7d47c266c7e12841850b0f4060ce0dd33a13d97a92e12c1"
    "ko"
  end
  language "nl" do
    sha256 "6441b4ff303172992e042feb75dd4eea1733880a7a65230bbfe376b98f92916b"
    "nl"
  end
  language "pt-BR" do
    sha256 "217bbd2e32d11d7ba3fe111f7451710d304d7970181b47f3da7273f7334429d0"
    "pt-BR"
  end
  language "ru" do
    sha256 "08de575f03e198df8e8391e153fde2dd1895dece09573762523a83ae583b1a0f"
    "ru"
  end
  language "uk" do
    sha256 "e714af23f1a27edfc6633c2103443cadf6ba8288a85ec5a62474cd983672b3e1"
    "uk"
  end
  language "zh-TW" do
    sha256 "c6380df3cb32cd623035b086e733e05c00de157caaec20441800953f4c34f729"
    "zh-TW"
  end
  language "zh" do
    sha256 "45c838a102dff0401bc31d46eff5c129007119b935bdb907439a0329a9801890"
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
