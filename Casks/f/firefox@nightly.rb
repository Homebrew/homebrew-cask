cask "firefox@nightly" do
  version "142.0a1,2025-07-09-09-31-53"

  language "ca" do
    sha256 "5d21c3b0acee3711b087ad01d9f24fa45046ac1cb3fec1b0a19dca4ff33c5f66"
    "ca"
  end
  language "cs" do
    sha256 "c1a0371085e6509157209c1685d861ad0621031dd978fb5a9afad820b3b279a1"
    "cs"
  end
  language "de" do
    sha256 "0640d3e2dfca443899337ba2dd3fb1c0641c5755ee5a8953fbf065e04cf2927f"
    "de"
  end
  language "en-CA" do
    sha256 "4d528525efb76f583832cb0f10ca9bfbb161bfd61d49885516a4b63540a31ecc"
    "en-CA"
  end
  language "en-GB" do
    sha256 "efb1a286f3b942fc9a9e35d810c84a020918ccf2c58ffda07188cf579ad462b0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e6e0394e47e14401f71ebd11412f537581be381d8441bedfbd7ebde81de8e4f2"
    "en-US"
  end
  language "es" do
    sha256 "aa8fc0551ecd17cdf5f65c03e5cf173a25f2a7bc50615857ac0c42a16fac78dd"
    "es-ES"
  end
  language "fr" do
    sha256 "0deda3e34537297aae77dfa727f96a813376ddf75cd544f1090a484b413da0f1"
    "fr"
  end
  language "it" do
    sha256 "72fcaef2a1c8d533a56dacc1d303a394154ce12493c402796b7af7e0ac3a5771"
    "it"
  end
  language "ja" do
    sha256 "be3da13964edf952e551ea484cdcddc99da2f8fb6a42f05e11390a974f051fe1"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "160c7b6ec86c4ca5afec6285e59f30260bc8d3511eb0b528859b73a6882b537d"
    "ko"
  end
  language "nl" do
    sha256 "73e81f40d96f0795d8253fb4700e8a28062b0217bcfd1e39fd0b83d994815afb"
    "nl"
  end
  language "pt-BR" do
    sha256 "4ab7d36f8a5c4e5b0cb16a3e26790cfec1850221b4ed511bb05c884fa00b23da"
    "pt-BR"
  end
  language "ru" do
    sha256 "17120644b4dcffb5618218d561ad7b698363b7e81185d6a702b54d44ea24c215"
    "ru"
  end
  language "uk" do
    sha256 "31ede870d470f43bd1ec6295e38605b7857fcd500aeaa39e8dd6848f791e2ca8"
    "uk"
  end
  language "zh-TW" do
    sha256 "ac12aa45bd98bb6300d3580057e01b6cbdcb382307c23c21aa6545c843f02f8d"
    "zh-TW"
  end
  language "zh" do
    sha256 "715cd9fcdeede9c8636740ba223051b1dea7b7b51521462e0b1a8d441b0da0d9"
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
  depends_on macos: ">= :catalina"

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
