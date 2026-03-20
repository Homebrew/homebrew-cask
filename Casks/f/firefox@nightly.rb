cask "firefox@nightly" do
  version "150.0a1,2026-03-20-04-52-36"

  language "ca" do
    sha256 "61d172894d6f00ddff9313d081e1e1bad3989aa67326ad4989791eb549ad3688"
    "ca"
  end
  language "cs" do
    sha256 "f445f259353b22aee46fd396f5c2e2a7f3c856615a4cf4d8e40934ecc0628949"
    "cs"
  end
  language "de" do
    sha256 "fbf17a0823a3d7dc251917070366daad7997b9b937bc79acd700df186933865a"
    "de"
  end
  language "en-CA" do
    sha256 "b365aea72a910623ea21cfea4c60d532c345464e89c39788721e8595df77d000"
    "en-CA"
  end
  language "en-GB" do
    sha256 "573c81312236a624862372d3e7ab5b6dff1365b6436d194c0bf27057e221c4e4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "faea6b7be80c39ab5b219dbcfa6b5a831c220948337f34117822415408aa2153"
    "en-US"
  end
  language "es" do
    sha256 "d3dfb3ef319adceb908e0dcb4aa5b086e04c340e5041b2b7b46327bc0c70a560"
    "es-ES"
  end
  language "fr" do
    sha256 "e1131f03f9ff67548fb8df08549cff340b914df048c95d73fc738fae8dd7a3db"
    "fr"
  end
  language "it" do
    sha256 "a15e298cb3aab9459c32ebccdc7927e0228a45f66fdd64d06baf5311a6d25973"
    "it"
  end
  language "ja" do
    sha256 "d451312a600cc22ee0129ff4cef502d8b8330ce64e54e4265ba9f565a3ff726c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "3b2ab1aae241a5f015fd8d2f0859c406bafead23980e47c86dda68603a1ce4b4"
    "ko"
  end
  language "nl" do
    sha256 "d216a656254e0e26300c02ee1bec6c1bbef3e6716eab84b24d5b452d1b70f872"
    "nl"
  end
  language "pt-BR" do
    sha256 "d3078f107a524fc1590a713a88d9b1db55d1e0e0b01b18f16dacd7c20fb5e2f6"
    "pt-BR"
  end
  language "ru" do
    sha256 "149da95f6a3a4bf11a76eb06946ccbe29f15b5d5e8900af41c674b67428efd8a"
    "ru"
  end
  language "uk" do
    sha256 "3018c6048eac64c9f817bca8f70dead0f660a3a812841b11a3edc0884c404516"
    "uk"
  end
  language "zh-TW" do
    sha256 "6547690180ce85e4e98a29965f2a3d5389ab4228799816fd8995b2f3efba3343"
    "zh-TW"
  end
  language "zh" do
    sha256 "0d25bc6dff70ba0e18195f41c1afd1d0549712a89732fcddd45eaf840f270a00"
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
