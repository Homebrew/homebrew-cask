cask "firefox@nightly" do
  version "151.0a1,2026-04-15-21-21-14"

  language "ca" do
    sha256 "73e418f915ae9ae1c7f5954e7164b3b257b436caeeecca42c396305f901df8dd"
    "ca"
  end
  language "cs" do
    sha256 "35e0a9759d5d46a478df1fb4810b4d722ed414c043a041481dd1946a984be1ea"
    "cs"
  end
  language "de" do
    sha256 "39207d953df47eb7d1c0ef5fd8bc4f8335ed168f12bc92d0150095391b2c14ea"
    "de"
  end
  language "en-CA" do
    sha256 "970090759db3576bd615c1edbbbefe64c1bf4f694be5e7447b2ffea97c3289e6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c8c1b748fc3777acccad63363a0b92a4da015eb01127cbc537d6d066161c835a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e0cc8012f21629e1601142042c42e09497cbc572614889c2ab2f615cfceda487"
    "en-US"
  end
  language "es" do
    sha256 "9c2bafb83b53cc1d0989c74bb7c2fdcf96071190bb24e6226272db8c7ec9f347"
    "es-ES"
  end
  language "fr" do
    sha256 "b63b88d20407abf00067091ad6cad25f28a1f5ae39f853893512e08f0c0d9590"
    "fr"
  end
  language "it" do
    sha256 "53a6411e6ae0fbe46d34410f8e005f745603d82d65a1ba966cc63a6782cfddc0"
    "it"
  end
  language "ja" do
    sha256 "831ae193e966ad67cdb4b0cd532a330bb03692652cf39fea9b502d3c7b4701ab"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9865e7d7517b7df927006ac16b8d3a611a282de42e645169cbf28709bf5c33ff"
    "ko"
  end
  language "nl" do
    sha256 "16e74a194db2a62c651c89b8e83d963d4632f150c49bf849d3a7af6854dcd037"
    "nl"
  end
  language "pt-BR" do
    sha256 "a3df91938b86254f71a103f2b0490bc780a2ee8bf252350e5fcee93379243a45"
    "pt-BR"
  end
  language "ru" do
    sha256 "0ca55ef8af5e9423fdfd96e40cfda2ec16abfd277e20948550619428462f0ef2"
    "ru"
  end
  language "uk" do
    sha256 "fccc27d8a7312ebc7c2e9b9285cfa74be2d06e38ea8e935143b1fda22a4d9c45"
    "uk"
  end
  language "zh-TW" do
    sha256 "0e0580a24d4f869358454b449b7bde19e6afb42fb115d0e19ab0ceb2be60f2cc"
    "zh-TW"
  end
  language "zh" do
    sha256 "31a12be5c51c404629d6709da6d720e08c9aff5723aa78ebc26ac6c5e0c5068a"
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
