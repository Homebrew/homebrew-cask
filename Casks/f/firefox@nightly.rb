cask "firefox@nightly" do
  version "147.0a1,2025-12-06-20-00-51"

  language "ca" do
    sha256 "ff49c2a245992d78253227e1e34531f03032e9ec0e1cee597348e631f13eb55e"
    "ca"
  end
  language "cs" do
    sha256 "7a1f3a5f5b1d6103e9fd6b926204e6203cbb91edcb6493442d6e372d23a0dd35"
    "cs"
  end
  language "de" do
    sha256 "243cb3304b6b7da18f4517aa7c11d769b6009df1e70138f31ccddc30dacbb6e7"
    "de"
  end
  language "en-CA" do
    sha256 "6db21b539d4eff1d404acec65429e4bde7366073efafad640ed60e222257e8cd"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1bcd5c007ad4d6656afc517566eef8156da50aa5dc77bca12887451d9b19b974"
    "en-GB"
  end
  language "en", default: true do
    sha256 "22b39e73f93da22edf220be5de8ab596cb69913bf2f4c5769ec54c709757dc64"
    "en-US"
  end
  language "es" do
    sha256 "990892e63a345399ecf339ea4441387d4d535922835f9abfa469bddc77657a7b"
    "es-ES"
  end
  language "fr" do
    sha256 "2f2b2c6b61f6ec3dc5d7c3a1bde2e39a86a2f3704cd61b17a76b1ada248707d4"
    "fr"
  end
  language "it" do
    sha256 "cf1d4018717afbde6565e226035759c12c28a7ba197be729ec5a1e2c60abcf68"
    "it"
  end
  language "ja" do
    sha256 "ff3f3bef741752f6ef5eac4416cab18da1acee7bfe0db00692ceb191e1611bb8"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f60e0fec5b0b55ddb7124672c41d5ae105780089351dec5741a858d3e630063a"
    "ko"
  end
  language "nl" do
    sha256 "88bd556f9c65e50f7713f12285fe93865fbcc191aa43f24ae297ccdb8c65c583"
    "nl"
  end
  language "pt-BR" do
    sha256 "5a7ba2c040efc72545a6db0830b969b70232539134df6e429acd2b3ea6fc14c6"
    "pt-BR"
  end
  language "ru" do
    sha256 "941f6e294f934cc1cb00c0b28788ba5093214904d30b0717e039331845012e96"
    "ru"
  end
  language "uk" do
    sha256 "8bfc078b2e6c131bfac30eef7034be46ac44476a33e1782aa7f55281a75ef957"
    "uk"
  end
  language "zh-TW" do
    sha256 "e3f2f917d91070b7d8742cd26d9ca8939c0e2e9d8f16f6601fc4642784a0aea7"
    "zh-TW"
  end
  language "zh" do
    sha256 "62ca0f81199c41e4c14107fdefd3809041d3a7afe6d19facd6081b8ac359d3ea"
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
