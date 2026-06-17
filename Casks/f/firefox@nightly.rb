cask "firefox@nightly" do
  version "154.0a1,2026-06-16-14-00-50"

  language "ca" do
    sha256 "8e042327bf8daa31899951fd0ff35093aed59862a631c8ca39ad7b98e935da73"
    "ca"
  end
  language "cs" do
    sha256 "3257403724cef694d481457d85e00902ac2d76ef1483792feee563fcb53f3e1d"
    "cs"
  end
  language "de" do
    sha256 "6d905adb5e8a6b9874766a566a48eb1939384b7cc289c2c8a5f58de721def6c6"
    "de"
  end
  language "en-CA" do
    sha256 "53dd0f3b14132d578aed02d6b9f975ae39503963698fcb184614802cd0acf2ae"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5cb89053b103ca3792554699cafd1319f9c24fb56d00bb35925617f9c3c7c1a8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "57b2ae269f9fb0e16bda0a68e3505294bf9b9c607cf18a463fad78df95f62127"
    "en-US"
  end
  language "es" do
    sha256 "676ddeb284985d447b79933c44bae001f17945ae088e59cef49b7ff50a8a02d9"
    "es-ES"
  end
  language "fr" do
    sha256 "60cf6c98a72c32dd0baeac11dd105696135d5f373c993d8b74754e347d0a199f"
    "fr"
  end
  language "it" do
    sha256 "f2f05753f2a6e6b4626e547e91edb929249c626d5957c271fedce4386efa4158"
    "it"
  end
  language "ja" do
    sha256 "c22364f2a054c41a9f7a4482d036f50608938f225cf858b9754d296f37e1fb5c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "31aede6bc29ec94d4bb86ce705dd388c89814394ae211732f7ef831ebb936503"
    "ko"
  end
  language "nl" do
    sha256 "fb11f949d2a0e090aa7c91372ceca26a7c9e4e0943fd601d1c166b99877c206f"
    "nl"
  end
  language "pt-BR" do
    sha256 "0becc66ec0623217d6d702b4fa79ff4d087ce9bd007c2ba5f3fcf58742d8989e"
    "pt-BR"
  end
  language "ru" do
    sha256 "4fcbc4e52ddf5a5687ee9fab305abb8fe8b63c554c0b158dfa75c0c421ba1ea2"
    "ru"
  end
  language "uk" do
    sha256 "aee5dfce36f91f693dcdc4f44089da17a4946877ca6eeddfbb1b5909c2e5c269"
    "uk"
  end
  language "zh-TW" do
    sha256 "b7d6ba26afbdd56780a9c10a31e232501fbe828fec4c70129daca45a0a8207de"
    "zh-TW"
  end
  language "zh" do
    sha256 "15a0f21ab644fa7debb7abcb90e74fb7f4c4633b646d0451aebff90e5c1b3f86"
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
