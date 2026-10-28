cask "firefox@nightly" do
  version "161.0a1,2026-10-28-09-48-58"

  language "ca" do
    sha256 "45233975cc0e155fbe23c408301dfc7473ee230095abe6a598700263aefe4490"
    "ca"
  end
  language "cs" do
    sha256 "fbd4c5ca01574bdf21607d7806141c3530f175a40be3c5651445b5060194cd2c"
    "cs"
  end
  language "de" do
    sha256 "53b1e0828d33741524798730ebf9f5fc37a2d1ec965d09c7982bdc3025b1811f"
    "de"
  end
  language "en-CA" do
    sha256 "6fe2aae4dc93e210c25942c543606f7ec1871f15d27c8988431f3882f662f31d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "9477acffbb9e2ff0c6095372f91e55b1fa31982caf3f80c44501b26d40a10e02"
    "en-GB"
  end
  language "en", default: true do
    sha256 "483b28a498c9eeb4b6fa79507ac125933db05860a6d297eb70622e956d2f2268"
    "en-US"
  end
  language "es" do
    sha256 "bdc09d353df553acc10b8e3087d51db979ca39aa604e818026d86f96f82b6d70"
    "es-ES"
  end
  language "fr" do
    sha256 "da1435e51f88e8b0b9f0302c0988cfd998367459ad8af83c9080e1bebfeaea8d"
    "fr"
  end
  language "it" do
    sha256 "eecf832615d5a225912ce09802a269a708b59bfd255f3cc7c43c28a0a1f947d8"
    "it"
  end
  language "ja" do
    sha256 "079d7f9f91ab13107b989cf45ad0ac658010f3697491a0524c54b16026865431"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "cf46217bd332a87339a4dee09775ae2efed210923627de355537fb78ac9548e1"
    "ko"
  end
  language "nl" do
    sha256 "fa5f57584d015fb208f425d75d8fc5a76b7c307ded625781f5a5ac7a2ffaca10"
    "nl"
  end
  language "pt-BR" do
    sha256 "1b0b5b857298a4954a6fa46efb7e406dfcc89d6af03ac1aa08fff70d82e1bede"
    "pt-BR"
  end
  language "ru" do
    sha256 "8099d522af90e502e42a8453da74307fe7f6fe58704cd673cbe6fc420e1b2029"
    "ru"
  end
  language "uk" do
    sha256 "2b2d9dce20c503b2ecbdf71eb0594cd61abbd6f1a41c7fc82e2e39be42c94f48"
    "uk"
  end
  language "zh-TW" do
    sha256 "d872d0feeea316932bdcf21e5c277264595b73cb437ac14fad040a4bd8424ad4"
    "zh-TW"
  end
  language "zh" do
    sha256 "a44621749b056b1aad1d2cefb61d5b4489e310bf48f0e0ab3c2c9dcd101cd1a5"
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
