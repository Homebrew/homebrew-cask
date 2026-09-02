cask "firefox@nightly" do
  version "157.0a1,2026-09-01-21-50-37"

  language "ca" do
    sha256 "a708226c6f9037d328145952fe27616896c446df66c389d8b470ea3885a03741"
    "ca"
  end
  language "cs" do
    sha256 "7a62a51fa9def3059d819adaef1a20d163dfb80e7dc21501881417065766396a"
    "cs"
  end
  language "de" do
    sha256 "74e232a1280556209ededccf9b85db36aa5fcc076750e34e12784b5362cee836"
    "de"
  end
  language "en-CA" do
    sha256 "27f718dc186c12e866f18688e5b3a6b48aafd6fda98424292a411bd287171bfa"
    "en-CA"
  end
  language "en-GB" do
    sha256 "740c3eb3071e772e47e5d28a8edcea037af2b441fdc22919c67991b3fdfad693"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5ef0f7c58dca23e29d356ad5d9cb45f0966af2c600cbb229eb6f9ac8600ee507"
    "en-US"
  end
  language "es" do
    sha256 "4cc41679f470ae53dfe8c16cb343447a0a05c428ce6db0e9c60fe4c72c8accbe"
    "es-ES"
  end
  language "fr" do
    sha256 "4e25d5881a7a34091f04ed003f3cb70b388c914d3856fd361f75f3670dfc0daa"
    "fr"
  end
  language "it" do
    sha256 "37098d94c22a32d09b237bad41a5c017a028084a9f74e47cc2bf62c277543063"
    "it"
  end
  language "ja" do
    sha256 "270e23af8b07679f9fddeca9e51e3ff6039c3ac4e5acd0b0bb0fa1673e87634c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9c1a8bdda63eb5d32d5cbeadb5c9e21a1039ca30af7186c198fcebeb62d116b4"
    "ko"
  end
  language "nl" do
    sha256 "373b4a4182f173f3b8765563cab4a47ada5f787cbc1abadfe8ded10c2d2820c5"
    "nl"
  end
  language "pt-BR" do
    sha256 "883c3b34143c461abd9373dd0e5800425674a005531d79b0bb5b4bba4a62befd"
    "pt-BR"
  end
  language "ru" do
    sha256 "7e48d95a6f092a3bbab13c25d4f5f15dcd17960c37a099150846d2719d144679"
    "ru"
  end
  language "uk" do
    sha256 "bf9996f2d110a8f57e1b2baba1f2cfe24205db2775a0768e3fd1357140b9ffa4"
    "uk"
  end
  language "zh-TW" do
    sha256 "9d4ff4312e834b68178f5ba2d58b8b42243ff8beae0dfa1d64277214d79e99b4"
    "zh-TW"
  end
  language "zh" do
    sha256 "2ef1d30f3a51d327154ea0852165ae2749613c6624ef7b01475c866c6dab30d2"
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
