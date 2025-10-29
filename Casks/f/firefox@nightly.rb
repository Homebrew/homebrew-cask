cask "firefox@nightly" do
  version "146.0a1,2025-10-29-09-54-37"

  language "ca" do
    sha256 "7f46f68e6ef71ab44a5eb9c86adff43751bbc562afc3f3ac5386a59cdf239593"
    "ca"
  end
  language "cs" do
    sha256 "ce86bfc73847e7a073159d7642cee45143ebe685ecde2730c7cf45a78da02cf9"
    "cs"
  end
  language "de" do
    sha256 "3377dad8b8755b7487a8966003a9b97eafc7abcad1b7f0228a6f7c393a79f168"
    "de"
  end
  language "en-CA" do
    sha256 "3af36e53251630c60859e6c5a338dd9676a15dc50ca19a33f3bcb4c616b34409"
    "en-CA"
  end
  language "en-GB" do
    sha256 "aa07aa9c98b5d762a2f34984b0f73e11ff6e30d182418c43b8b5e6271dd59373"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ccb3ce4b2197669bd1d6668b82a138f3f69b597a60bf860492545b96559a4124"
    "en-US"
  end
  language "es" do
    sha256 "ec22e19ec18c9d0e532c0c73ab9f0709d75838bc52650a0f5a8b0de1d64f8895"
    "es-ES"
  end
  language "fr" do
    sha256 "5cef0d217999061be8129beda7f3912ff6b7dc5970f8e1f333eef271df1edd83"
    "fr"
  end
  language "it" do
    sha256 "ddff4c963864085797d166233c90251972b91e9ba010f6e7616a26f9e20d6e51"
    "it"
  end
  language "ja" do
    sha256 "56dd2f8ef20a231d7b60763b728e504927cb7ee9793112cf78a9421cba38ab76"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "49700160663713a1b045fc77b6ea9219b250aae87adc80b5ee160e1cf190e00f"
    "ko"
  end
  language "nl" do
    sha256 "d5e311f810293d1729956bfb1076c295d83107003519aea95f0031b01f0cfcb6"
    "nl"
  end
  language "pt-BR" do
    sha256 "5cde311638e9bd039390938e9b833a45d58e0e83c8b253668fa94ccc2e9fe6b8"
    "pt-BR"
  end
  language "ru" do
    sha256 "cf62df2bdf0c193b63af276029d2ef51d176461285de6e3c0c83840ab243e2c5"
    "ru"
  end
  language "uk" do
    sha256 "ea1800c02093dde5800bd6ecbbdb159155d1dd2d0cdaef450f4c9de2add0002e"
    "uk"
  end
  language "zh-TW" do
    sha256 "a7c0d519d075c584a804e33ea8ea73d91fbc8257d79eadd56777793fc50f8a10"
    "zh-TW"
  end
  language "zh" do
    sha256 "92622249319f06cbb23bc6d1a2b11d39dd66dec23ae65a923c09365403a9cf45"
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
