cask "firefox@nightly" do
  version "157.0a1,2026-09-07-21-07-52"

  language "ca" do
    sha256 "4a3bfc665091a78680b24c367521a2bb759ff9c3d94c171200adda7225433174"
    "ca"
  end
  language "cs" do
    sha256 "aa2c3078f4f21e854bbb75a73ee669f37664373b34856431446092dec78291cd"
    "cs"
  end
  language "de" do
    sha256 "ec09ddb6bf850b646ce4be8f3be05ffd6581632594340554ae84b6b775ea408c"
    "de"
  end
  language "en-CA" do
    sha256 "533afbdb2791ec6718b4878f50bbd74736337a847775bf19ecde3079dd94cd44"
    "en-CA"
  end
  language "en-GB" do
    sha256 "30b9918f3f11e8d4d0d79e5734d9674db553b9b3a85d7048cb760b6bf096e4b5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9757d26182768fa39f974c1050b5d0a7984e52cf2bc652b7d4ddd87fc2ecb261"
    "en-US"
  end
  language "es" do
    sha256 "c079f7dad2a1e2fb8c3cb0168919588fa9c02dd886bd5d3da0e6fcd95b4a08f8"
    "es-ES"
  end
  language "fr" do
    sha256 "cba48569370b3ad396dd8feedaf15a2ce07cb796d622753a89ce871f2e4c8191"
    "fr"
  end
  language "it" do
    sha256 "b1c536fb8cb675c8a6716ad6fe02831191b690b316d8e5a6582038db39ba938a"
    "it"
  end
  language "ja" do
    sha256 "f149cdbda7767787ff0ea8eeb40fff6f88b76367b03c9f9d151aa7c08f5c7b92"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "5c65c298bb6347e7f1c40f6f185ad4a7882dde6bbd293c5958cd86c1fd4abddc"
    "ko"
  end
  language "nl" do
    sha256 "12b276eb1a4743c57d0c53ae8f26e44bd2def0ac1eed5598862e5cb80ad4ce66"
    "nl"
  end
  language "pt-BR" do
    sha256 "42311e50ba0280380c0fe6b8a63860de057df63ede16d8d2b6db7d6785a9b638"
    "pt-BR"
  end
  language "ru" do
    sha256 "accdc54ae4bef94e530df8b80ab7c481b0f46635283e6cc715630374c31281aa"
    "ru"
  end
  language "uk" do
    sha256 "694c55626685d8e4b42c4aec02fa0778bc8447608c5395a1979c127ce9056e3c"
    "uk"
  end
  language "zh-TW" do
    sha256 "3826d2f5e955e29d91a9c1145634c59c891f473787769f2041f31996a5489490"
    "zh-TW"
  end
  language "zh" do
    sha256 "2244ca121bd4d63f84aa697874e0c6d7641eef6f422a1bd48be66472f7e81b4e"
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
