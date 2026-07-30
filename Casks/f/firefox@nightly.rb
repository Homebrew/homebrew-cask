cask "firefox@nightly" do
  version "155.0a1,2026-07-29-21-31-06"

  language "ca" do
    sha256 "f9e3ff4873c6c6e4607096e80a0ab6c7127ba9a0ea6372ce909c62b094751be3"
    "ca"
  end
  language "cs" do
    sha256 "17507a88254b9e773a13e70668338b9cd52f3dea4e5844d8853ae6ce24acb48b"
    "cs"
  end
  language "de" do
    sha256 "f41d79d2c7261b7dd33d3139b677a4c30b7ee8bcdad06ab1bd96bb1178f2325b"
    "de"
  end
  language "en-CA" do
    sha256 "c26724189102d2e13f6b13f0cfced1f05f64dda805b6041bc23b5da15c498b2a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f99db60e32166a39447dddfe5eaf8237ca7db9fd0acefc0b5decfa2f673e5a73"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2d6bab89a32e68540914d2cb4f2676a1f20fc82236343d2f92dc5725c93b92c1"
    "en-US"
  end
  language "es" do
    sha256 "baeeaebc930b2a186230a560c69d95f15b2621f30db8100582369f893f543abe"
    "es-ES"
  end
  language "fr" do
    sha256 "5e18d384181f178bb5c5ec217136453b4d74d8fcc5808045b8d2af58a2123416"
    "fr"
  end
  language "it" do
    sha256 "9abbb711b242362169677e8c348cdd80b4a5ce33c95f88e7c3e576009134fb3a"
    "it"
  end
  language "ja" do
    sha256 "3e40d058ac1dbd065f8313e60c8d67685bd77a2c7de6ca26526362b6cdc80cb2"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f5b22d95beb287f03c4d796d89b6a2bd60f5a4d002466963468b37832902702a"
    "ko"
  end
  language "nl" do
    sha256 "8cfd5ef5c703d9d30fbb431195a45af55ac8035ed447a4e3ff756ebf0c98680a"
    "nl"
  end
  language "pt-BR" do
    sha256 "54bffe7d866db209544c1442f055e41f36e3a40924ed0ab36d96591f21df215c"
    "pt-BR"
  end
  language "ru" do
    sha256 "fa52da580117380309696ca40c51da2a659ae8a5e5da40b778bdc795bebd3699"
    "ru"
  end
  language "uk" do
    sha256 "3f154d12911c583ff87c00c1c197801be273fe100cae58ca2f662196107d6dbe"
    "uk"
  end
  language "zh-TW" do
    sha256 "d1b905ea03346ff9ae99c43ccbd1bae5a7b8c488a00b4096fb95fd8a582d5008"
    "zh-TW"
  end
  language "zh" do
    sha256 "430cc56ae91c1cc2b79dc10853541f56cd6cb6142e68af9cecf44d5f3f9be35e"
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
