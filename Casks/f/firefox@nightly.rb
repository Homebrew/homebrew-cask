cask "firefox@nightly" do
  version "146.0a1,2025-11-05-10-28-39"

  language "ca" do
    sha256 "63cefd746d509cdb008b5c97dbda0461fba43ec111619bf07cbfd29a855e3d1d"
    "ca"
  end
  language "cs" do
    sha256 "c7d37092017e242eb352b4bb7a17a4c8aaba9ca7d4b2ac9aa7fb1dbda3861ee4"
    "cs"
  end
  language "de" do
    sha256 "ccbce0d9759c3a80631e1c7740240aa8e79c1750b3ec4ee65f92721dd0614188"
    "de"
  end
  language "en-CA" do
    sha256 "09d717f8950539370ff9e888c3ad882708b78b845d5c2c1561c26591b1547569"
    "en-CA"
  end
  language "en-GB" do
    sha256 "478f69c2613a1e10d82e8e059dfb38a079740a99ffeaf0e547002afa3b395ff8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "42c087333969b40e310e9abde55b5e531aa6d7f3bd5d09383cfba0c4ee1aa822"
    "en-US"
  end
  language "es" do
    sha256 "e01af5a016e03b6cd753b7d366e72395dbc857699db6dcc2a8b073dc11648043"
    "es-ES"
  end
  language "fr" do
    sha256 "9e9fc80ad79b2fb2914b2df4985272085aeea47ff351eaa355ce36f59fc58ac3"
    "fr"
  end
  language "it" do
    sha256 "777b9cc014946bb98edaab43e77047efb7ba5947a9548df1fb6ed503c97afed0"
    "it"
  end
  language "ja" do
    sha256 "9d0677335508b1fba723e9cf70f9b54f35c91627aaa6494070ed1e4d56db0913"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a48992cceafa4953ca6fd636a337dc381b2c8af1e49cad0d8f7dfcd8e529b241"
    "ko"
  end
  language "nl" do
    sha256 "63ac0312f87a84b4dafd607fa3dee9baa65203e3772fe02d2ad79bd1c7f7fd30"
    "nl"
  end
  language "pt-BR" do
    sha256 "52fba1929f68493446faad9ffe0d695ea0683245bacccc9aea93bb367f41bd33"
    "pt-BR"
  end
  language "ru" do
    sha256 "3702cea58c2c9cd927ffa5237fe9bd96a81d486ad1ec8e5dee378662ff2f5994"
    "ru"
  end
  language "uk" do
    sha256 "4158ffb241c5fa0241c532f395cf136db15f135e5bcf34d171bbc2cbd50d5175"
    "uk"
  end
  language "zh-TW" do
    sha256 "935d3ca9727cde406cae366ec4560a8e811ee0e4e3d79ffa85542f2f314c4fc8"
    "zh-TW"
  end
  language "zh" do
    sha256 "7277824d93979d761d5ad0648185adb9fd0736130128820ba4fce5f6cbabc4bb"
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
