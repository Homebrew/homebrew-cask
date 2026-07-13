cask "firefox@nightly" do
  version "154.0a1,2026-07-12-21-44-42"

  language "ca" do
    sha256 "d6faff8a6c7d964008b72e81122d96a254d293d7dd677a923044ed81e8c38da0"
    "ca"
  end
  language "cs" do
    sha256 "7f5038b92f356c7dcc6e659d7ee145e9b509fb7777220e5b44ad3e375876e919"
    "cs"
  end
  language "de" do
    sha256 "bfe121819c8daae62081b2a59f5d43d76ce1b94d7e81d32b9631f65084abfe71"
    "de"
  end
  language "en-CA" do
    sha256 "2940c321a3ebd7831fbda461af137b2d930da03c85ea41ac4fc04a64ab704a88"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1e62ffb433e2f5dd24c4adc5bd0b511759975733f35159cbf336a5d2c8324836"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ebac43c358f024065d071bd434248e09d714d940bdbc7d7d3632e513e5df311f"
    "en-US"
  end
  language "es" do
    sha256 "29b50dfbdd48abcfcf5149589ca917e399884d9269f30e9d196eadccd2b53918"
    "es-ES"
  end
  language "fr" do
    sha256 "1f451e69be4e7b826462ecd132cc5ac2763f7257d601f8124d5c8c9fd8d38b9a"
    "fr"
  end
  language "it" do
    sha256 "b6df6d5a369c39ce5aa43ea66b0c82eb42c0d2e6047a39eb9771fd05f3e848b5"
    "it"
  end
  language "ja" do
    sha256 "303a8829a3900ddffae5c23b05d9871116601a95a77dde507d5286dde3d4fde8"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e63fe2cd3be10baa4e21b8435288799d2e7af99f74492c137b8abe6643a3427b"
    "ko"
  end
  language "nl" do
    sha256 "4f56f5f969a3265d76dae93c8413b1bca16e794da260ae0c24e1f0c52fe0e5e9"
    "nl"
  end
  language "pt-BR" do
    sha256 "a01e5a5fc9b2266b6d70bd6d04b09f7d5a585989542b38f34384bf884124b634"
    "pt-BR"
  end
  language "ru" do
    sha256 "182778d5d5bf4d1fc13d0f5a01d337923e3674d3d750e68d4999d0f03e9e7e47"
    "ru"
  end
  language "uk" do
    sha256 "1b46104ee6d9efd033e3a01c0527504ddd66c948a02d294bc3e8d923809418e4"
    "uk"
  end
  language "zh-TW" do
    sha256 "fb04bf320a96688ea4b7bbd00e2bea8938e9e47ce843aecaaa1d20891de22da9"
    "zh-TW"
  end
  language "zh" do
    sha256 "ceeacf0e8b17915486a63f1b5fbd45ec80a9041a5957108b151c0e77ab3d3869"
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
