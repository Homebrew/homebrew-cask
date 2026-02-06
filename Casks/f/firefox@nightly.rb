cask "firefox@nightly" do
  version "149.0a1,2026-02-05-21-36-33"

  language "ca" do
    sha256 "b3e8e4d1379b61b67c5d6d910ec76b54b6475a7e5f720af24d858a9c42b706c4"
    "ca"
  end
  language "cs" do
    sha256 "819578b2db0251f59144fe2848f31bf4e4d7e9bf2714bcd056292ee2a55726d2"
    "cs"
  end
  language "de" do
    sha256 "d742ba18ce8cdfa668903c07f8a51bd82d9c1bb4a5e73b0bf5e8e4c91d0b0db6"
    "de"
  end
  language "en-CA" do
    sha256 "985a46d4aadb4cbfe66590d6e8e90fa2110ab804f5908cdd50a613051a6919f1"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3f3e3200c9c9dae8fadcc33edb81fbff5c0504921b3edf4c81c54fc1d4c66b13"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a4f406297f102fdb96d9ca1984df84ef63e9070d24125e50383306ffcf6149c0"
    "en-US"
  end
  language "es" do
    sha256 "c21606e22b326c23b117c0cd9b3d35dba6936bf18a183343ea94b154816e1783"
    "es-ES"
  end
  language "fr" do
    sha256 "df0ddd578a635de364fcb00548a92128afbb704f41c2d6630d8c98b7090a3df9"
    "fr"
  end
  language "it" do
    sha256 "6bec4133565528e21ba0582fbe5d84aee87db727b951389ea66c2b6935f5fefa"
    "it"
  end
  language "ja" do
    sha256 "751a39df6ce26598021b3957a89c5932a1a41199278891ba216fa559514b5063"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a19bf6337efc01a9357e9c6016340245d5049e542dbdb4e15fc6830a7ea1db55"
    "ko"
  end
  language "nl" do
    sha256 "0b03de7b9287fb32b08ef64a89fbc3bab64a47df70258a6cd01a94e83c666e69"
    "nl"
  end
  language "pt-BR" do
    sha256 "656eb17f5ed3af3950965ba4556600d0149ff80643e7f5b61090dcb69e402c21"
    "pt-BR"
  end
  language "ru" do
    sha256 "f6277cbd5762d49922d1136ff851220546bd5c8168ef1778ccceacfe49caf7a2"
    "ru"
  end
  language "uk" do
    sha256 "ecd9be4366b5a1758fe9cc84c90e8e40bf72f11bf8882c13c5ca0eebde847d44"
    "uk"
  end
  language "zh-TW" do
    sha256 "300730d88c5e134ecab1f294c69499dcb927c6b6653dfc43c8bcd70119a4d5c3"
    "zh-TW"
  end
  language "zh" do
    sha256 "046905061dac3636f16ecee50d292460afb8fbd2c37cd74b99ae8414a2529a0c"
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
