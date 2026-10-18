cask "firefox@nightly" do
  version "160.0a1,2026-10-18-09-43-10"

  language "ca" do
    sha256 "d6c57e57a565fa382978fcfbe4193d8e5c005cbb594d67f88c492db67c55fb0f"
    "ca"
  end
  language "cs" do
    sha256 "4e0d3a345857d484890f8abf0f74cd2b3ad7d8e577a8bd9d4ae452462317db4e"
    "cs"
  end
  language "de" do
    sha256 "8450f7040d02277a44cdb1a544d5895389512582536b524d53eef94b0dea9457"
    "de"
  end
  language "en-CA" do
    sha256 "d03f0ab76b34f4741109ca609037987a9d7f19aee31520bd0bae0891926da165"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c719bcb330a0c0c322c2f5da6958cfdf43dfd78d0e660fd60d5e1024a88a8c9f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "bc1d29142754aef3c4bb4492953fe844387b0b1686edf3278d49b07c3e6eeb55"
    "en-US"
  end
  language "es" do
    sha256 "88cde6d60006cfc388c04d6d6e4b84d4ac979d556d39ae4ddf4ea9e7bb465891"
    "es-ES"
  end
  language "fr" do
    sha256 "97a95be9c26ef8af702b22bc9ee82564cafed804f522ecf315ab42e6ea843735"
    "fr"
  end
  language "it" do
    sha256 "b764b66ab167fba48151a303de492ff619eba07e2f71fb8573791e79ec12e226"
    "it"
  end
  language "ja" do
    sha256 "e60905eca054785982cc66481ca6a9cf6f8f01b4b8892ed88497c7f31a7508b0"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "8e661a060c8f0ebfad903d643966f912eef393b5212d64e0eee82403f3db542e"
    "ko"
  end
  language "nl" do
    sha256 "7e25b6d0f3175ba083ee3dc79268d09ec8025123cf2ecbe8c3d3e37cf714560a"
    "nl"
  end
  language "pt-BR" do
    sha256 "3bb4a81f6e089e8cf522bf02ba53f6bdc49ef0369d7c2de4bead87c02f37d873"
    "pt-BR"
  end
  language "ru" do
    sha256 "31c7fd0bea372e5a37e87239fdedcc1770a126a03ec100197aa17a69ecc593bf"
    "ru"
  end
  language "uk" do
    sha256 "37cb259267eb52b294f546df12c4e6e3d3da1a02fe37da361521f403419a5848"
    "uk"
  end
  language "zh-TW" do
    sha256 "cacb9c3040a2a59a81dd592eeb5787e8089d3d209d52c3d595610749dade318b"
    "zh-TW"
  end
  language "zh" do
    sha256 "50378e18e4da4fbd862d8035f7b118da053ce7db2c42afdcf6c23d1746c88029"
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
