cask "firefox@nightly" do
  version "143.0a1,2025-08-16-21-06-50"

  language "ca" do
    sha256 "636b1131770cab9b85787a5da14389837769bc79abdc70a78a28f2d714efe4c8"
    "ca"
  end
  language "cs" do
    sha256 "12fb5e7accdb8e78da7bcf6d3ad39814b01ed12e3e7ac3660f7f6a359be85f3f"
    "cs"
  end
  language "de" do
    sha256 "de657e18bdd4f437f6f95980fe35e8e64ee088c0e163a679807ead23104d4e7f"
    "de"
  end
  language "en-CA" do
    sha256 "943c966c8a9bbaae2fa74bc02f5fc63b41718fc729795999c02527a3ea1d7d3e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "13971b91ce1a9a73d3e921b05d79aeadeb8052c7f40e04c06656ad331c1518f4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5756a508a59f178ddb5c0a838f7ab3268219a3d02317df6146e96b79344da674"
    "en-US"
  end
  language "es" do
    sha256 "e7d5960338db3d3790b26605b128dab5bf2c01d678e9ea60bf18e5536dfb8448"
    "es-ES"
  end
  language "fr" do
    sha256 "d3724c64515710c78f028dd9158f1082ff69924fb9dd949e8c5e2147220826b5"
    "fr"
  end
  language "it" do
    sha256 "40dfd49143f65d8dbbc1bb16d0f220b9f6115cb9c039f819db33ea2967113036"
    "it"
  end
  language "ja" do
    sha256 "847d7df7a14c6ac6438918370fb0d62a82fe85b911c39f507b46ace253b7d160"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "69c2d98804f2455830685328d214ca6300cd08f00546367e51f91eb15aa5846e"
    "ko"
  end
  language "nl" do
    sha256 "0a640167fbb39d96f605de978979828207febaaab20e7fc19303ae30e4cc5671"
    "nl"
  end
  language "pt-BR" do
    sha256 "a9ffca1528347d68978a2f05cf993ce84da64a266b3f8ecd82f73da10e55a302"
    "pt-BR"
  end
  language "ru" do
    sha256 "b279aee49c0fbcf9c3a290b31b6c1ea42d8cadcc05b2d2c5eece8cd045d19f4f"
    "ru"
  end
  language "uk" do
    sha256 "c3ab6e5cfc05a55cb231252030d9bdc476f60ac6a007199e1a0f3ecfcad6194f"
    "uk"
  end
  language "zh-TW" do
    sha256 "4abe386579ddd0c87da576524f6b8067e1864cc55f5da83167e83df1b5efbeaa"
    "zh-TW"
  end
  language "zh" do
    sha256 "c5012eea66157ecd6ff17161aea444b547cbb4d21744b4fcc49dc723181f7080"
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
  depends_on macos: ">= :catalina"

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
