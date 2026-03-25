cask "firefox@nightly" do
  version "151.0a1,2026-03-24-21-46-22"

  language "ca" do
    sha256 "e9531a0b6eb77ac28343937bfd59fd303baa60cefcc15330ce72a19827cb5ab0"
    "ca"
  end
  language "cs" do
    sha256 "3d580cc1082f1be65515a79c08e17d1473253084df2ae1cc501a4e52098425a8"
    "cs"
  end
  language "de" do
    sha256 "715ecb2086465234414113934f1b05ccb5ac4fd0086c0a2e89563243e679c75a"
    "de"
  end
  language "en-CA" do
    sha256 "ddd521e5fcb9324a28f855fe17c43d2d80ec94fa1ca9531451e7a2adc0748393"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7279b4a27f40a1bd84bfb4f9f0a2c47ae4d975210a8a00efbb99dbae1b1abc01"
    "en-GB"
  end
  language "en", default: true do
    sha256 "853baaa8562bcc771a0e44581391616317fb2e47b7b2f7a6a172c3a5fee38f62"
    "en-US"
  end
  language "es" do
    sha256 "bb6397ea87f744e741e7ebeb419fe590c74f059a98d0eb902ecc3ea83d76940b"
    "es-ES"
  end
  language "fr" do
    sha256 "4c09836ea61f984ac51e2325aba94cd1797c92baf48f4257a5537d4df4ba71a5"
    "fr"
  end
  language "it" do
    sha256 "116b3fff8b091ba870e68a6669dee20e7f0f96012f0bc86cc77015056792ddd0"
    "it"
  end
  language "ja" do
    sha256 "9da6ac45976274110414537b6a93d7b30d335987e1080775d33782760a63180e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d44c65f8a383cf466f36b1d83f27d1afd5d3159a030e7ff452faaddc29a0ad88"
    "ko"
  end
  language "nl" do
    sha256 "e6298bd8e659c0528ca21efe902df068435b6c5fdc2fa020493b00e5f8f4feee"
    "nl"
  end
  language "pt-BR" do
    sha256 "69e3c93bec8857e136e51fc8526a745e78bd9aed7969e08c2403b3d3984b627e"
    "pt-BR"
  end
  language "ru" do
    sha256 "0a9327937d64374cc31f4a1834eca311a08632d17c6f590057a71c1b8426d0e1"
    "ru"
  end
  language "uk" do
    sha256 "cbe1844f67310b4bd65e8809889b4bffdc95f56e53f12f758131394c7ba4851e"
    "uk"
  end
  language "zh-TW" do
    sha256 "da6cd1bb1927b3707f581e0b6691876e98f32b257ecf8d4e668c142722eec003"
    "zh-TW"
  end
  language "zh" do
    sha256 "669faa127dacc3f5cb84cfe9195bff39a2295367ef986c70efd414b7304bae19"
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
