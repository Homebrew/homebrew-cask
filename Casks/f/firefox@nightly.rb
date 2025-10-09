cask "firefox@nightly" do
  version "145.0a1,2025-10-09-09-25-51"

  language "ca" do
    sha256 "ae0a456325ffb80e5f855b9b42da3837d7cfe2e5046c793822d2df9ac43e94a5"
    "ca"
  end
  language "cs" do
    sha256 "861277b232a137b9a1949e78054d2a547b625fc6add878cc1d51d46148cfc4b9"
    "cs"
  end
  language "de" do
    sha256 "5ebbf6e35affc633de3699cb2c697018181011f6c7298971e5babb84c369e859"
    "de"
  end
  language "en-CA" do
    sha256 "370d450a2a0704d8f16b80a07a2b7d4afd55378f427ae80afaa1d9c57bf1534e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "00ab964ed057f2fc181212076ad096fc787b5e76dd7b0f826a6a22ca162365fd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b458f88ed77fb9abb83baa11d292fc852226313add216dbcfaf5af09af4586be"
    "en-US"
  end
  language "es" do
    sha256 "c81cf1f254bb94f364e96286bde216309fa5143e93480dc6823f0091b675998e"
    "es-ES"
  end
  language "fr" do
    sha256 "164e7c0709fd2a5e71cd94f483f0b52e0059e0078a586f943c52398cbd3a3303"
    "fr"
  end
  language "it" do
    sha256 "7b0a3eb11324d6bbaaf1838e23e88968c99caf5d63182e32d1fb8baac8db0326"
    "it"
  end
  language "ja" do
    sha256 "604a89326f5c1850a290d1a0e08ad736cc74bdb69d7a6574a119875c43cd8868"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a129f59c5544612eefd3d69a1b5a2c6f82333acacec9182c504fe307d4c2968c"
    "ko"
  end
  language "nl" do
    sha256 "ee836c32c01c4967248536d2e6b609e8b7cea81c22d0d3f831b87ab1c263037e"
    "nl"
  end
  language "pt-BR" do
    sha256 "6665c76800c2d31493e72463dd345ef28875763e2a757b660ab5e11f9d6543ec"
    "pt-BR"
  end
  language "ru" do
    sha256 "d8371d406d74dd50a2b875ed3e67dba0309b0c893b251f7d19d54cd9ff4e0e7d"
    "ru"
  end
  language "uk" do
    sha256 "a4cd84c440930f2b4ac370d594c15b4ebaa30c1705d316c2de540cf96205487f"
    "uk"
  end
  language "zh-TW" do
    sha256 "e30083abbd4b8daa858918e4d22a23124a1b5cde730e17578f09a37ed15b08d0"
    "zh-TW"
  end
  language "zh" do
    sha256 "dc1a4f7af3cb450099c9a1be154e243cadc926227235d76b3e31cd3faa3d605c"
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
