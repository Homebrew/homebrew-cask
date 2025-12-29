cask "firefox@nightly" do
  version "148.0a1,2025-12-29-09-04-53"

  language "ca" do
    sha256 "ac9180ba73361da6e3a55a8eb9d00cc474caf0047bfe44ae18208f1488c127c6"
    "ca"
  end
  language "cs" do
    sha256 "dab8cf962667c2cbdf2c7e65ab9498d29959fa3641bf256965182e677bada958"
    "cs"
  end
  language "de" do
    sha256 "c37cbe5727ae6806be07564902705a460f2a9fd7b3ace70e86dc402565174e4a"
    "de"
  end
  language "en-CA" do
    sha256 "8cd95702e47981bd08abd72242d2eda90f70dfd417dde1aea4f8101f4eff049d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d0d1df25dc56771533856b394b2d36bda96fdc5c7b1358142273ecef4d6ce603"
    "en-GB"
  end
  language "en", default: true do
    sha256 "08b15ebed6521946fcdf08834d3cab18879723ae97f57fc1fbe94eba253fb1a5"
    "en-US"
  end
  language "es" do
    sha256 "6b63dae7a759b2f2b9fed7f5f30c8d5f67dcb0c102752d743c56d1ba22196d75"
    "es-ES"
  end
  language "fr" do
    sha256 "47e3d6ffdd85dadcb5b9c2430d212dacd48d6488ccaea15326fba073696588b0"
    "fr"
  end
  language "it" do
    sha256 "3df4ca18cb719a768c1cb12db14805b64bd01eb4fa9367379b57bf4f8025e19f"
    "it"
  end
  language "ja" do
    sha256 "64cce602fb32d8db6d7481b8a8e736c02b25e04e81f7d6f627d26efb40dea2bf"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "1ca9c20ca0fbaadbd6dce0a8fb3656ce43348e320bf58eec2af7ca228d894c78"
    "ko"
  end
  language "nl" do
    sha256 "412492e16ad2451b1b2bc8e4b13df1d3497988a68447190b8c580ecd10bcf104"
    "nl"
  end
  language "pt-BR" do
    sha256 "9a7321c062de23166205b3a9800a3698693ec657326ddfdeffa79b54eb8eb76f"
    "pt-BR"
  end
  language "ru" do
    sha256 "f6bf922cf57526d84d44e9b19c16b64ee50235c7ae12a6795ec07048c0562687"
    "ru"
  end
  language "uk" do
    sha256 "ac9c4575d93ab91b52365ade1b5127625342be5308c1d537adada6c795435cd3"
    "uk"
  end
  language "zh-TW" do
    sha256 "f73edee825396127b08122d58ca6b4917fdba3ae10c92e94e7d4589f87788fe6"
    "zh-TW"
  end
  language "zh" do
    sha256 "e8216627e485e72d7ca21bfdfc10b40e5c559f681cf2414ca7a632f48fa18985"
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
