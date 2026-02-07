cask "firefox@nightly" do
  version "149.0a1,2026-02-06-21-37-44"

  language "ca" do
    sha256 "9f7b7e8e964cc91124c335ff66b015a1d4c0880efb15174e425183e3a5ec70f5"
    "ca"
  end
  language "cs" do
    sha256 "be88967a8494c415d19904e53fb2c0b0bc71eddb4476c3c06f171bd48d78cc04"
    "cs"
  end
  language "de" do
    sha256 "1ed6323420e925f265d8b1699a3fe050bf8da70e46373349b4b9ee0a290ec7b2"
    "de"
  end
  language "en-CA" do
    sha256 "c58c6e0c21e4900aa483e45e0c2629166cac5fda5365f571cba543c56dcf44f4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "23a57e786750a8bbb254572b84d2f665ffd462e684c47e962f22b356245266d0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "cfad15ddd35faa8519ea9bd021fdb6a799be5dc1471348e9c6ebc4474ceb9943"
    "en-US"
  end
  language "es" do
    sha256 "187a3acbdf78eb458fd6740eab061f03ddc198a636a94f3a0754440538eadc4c"
    "es-ES"
  end
  language "fr" do
    sha256 "07904938bcaef08fa47ea032547643be4a1b2271b33cabd017668e52bf04b49c"
    "fr"
  end
  language "it" do
    sha256 "4344d6c66428941e46918f16e8791e6422e757ee6fc2579c6b5c82848860ce89"
    "it"
  end
  language "ja" do
    sha256 "95e8753e90dc627d4b50e70388cf176c719509ff9c055e60b9a4ece180a92f91"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9b2967620ee8b30e1ff9c56793ea24c4203a22a8c54ed2dbced3306f8a843cc9"
    "ko"
  end
  language "nl" do
    sha256 "2aeb502ba5067269806fc1653d31967e130cc1adafc2669cd996ab5f6fd3c6fe"
    "nl"
  end
  language "pt-BR" do
    sha256 "5bfc9a64c63592b5fffde06a26786aa370415eed709cc5916df69452e2551071"
    "pt-BR"
  end
  language "ru" do
    sha256 "e7d0a7be8f95331bf3262511816ef33883c7b5cdb183df4b608b183bfed0e297"
    "ru"
  end
  language "uk" do
    sha256 "93d69ae7ad6195c34b4f958f26a78cc2d8c2af118de1c42d3b69a5cf785d3968"
    "uk"
  end
  language "zh-TW" do
    sha256 "8a8e1139f1a3fb89d96579d2fa5363bfff474c2f88f47fc35e61a02685250451"
    "zh-TW"
  end
  language "zh" do
    sha256 "a04fbec733d349c4cd30791d55527819fa3ca2823214a7a18b12f08b434012d5"
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
