cask "firefox@nightly" do
  version "160.0a1,2026-10-10-08-45-43"

  language "ca" do
    sha256 "a2308ab8fdc3205b374de5f69e2255909c5175c988f019000f3e2c3913bd4a5c"
    "ca"
  end
  language "cs" do
    sha256 "8b58d9b941a21a257388ea620070649b4c04ea2f061f674744ff6c06135a2810"
    "cs"
  end
  language "de" do
    sha256 "d042a85d0b03ae16e7b9fc7ca8cb19ade0b00f609a253185b293f0d59ca6f95a"
    "de"
  end
  language "en-CA" do
    sha256 "76e246389d9e399b65187db2f313cb1bc39203bc2b8de6a5922d63a94ee6411a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2cd34f5d6bc8a7ce470b5941c6e41eec72ceb5acc0153973ccafc52193f6f374"
    "en-GB"
  end
  language "en", default: true do
    sha256 "935132a84f818db745acdde4667606e740cbb69ce89f5c8fcd80828169deee86"
    "en-US"
  end
  language "es" do
    sha256 "9d51608ed2b74b2217300c5683dfd95d5da4cfa60d68cac4ab781d4a88e4578f"
    "es-ES"
  end
  language "fr" do
    sha256 "0e7b0f77f6fb64d8353755926ac536db7d1dae9eaab4ec18256a56aac6e286bc"
    "fr"
  end
  language "it" do
    sha256 "cdbe728d9f26c70613578de306df40a26ed48824fa67f5894ed1cb2da5562cff"
    "it"
  end
  language "ja" do
    sha256 "b9d060228a670decd14b91a3058edf8480328241da98465999b6bf52cfe0200b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "bf9a1a60ca0230248bcd15621f5d1a94aa643cdad58fdd3993efb7f0d2a206ca"
    "ko"
  end
  language "nl" do
    sha256 "2d98f40e29a729db2b6a203403175e6d069a776d00870928eb0874fd8a385d67"
    "nl"
  end
  language "pt-BR" do
    sha256 "d2d57ca1b39b053d8d7744a0e58f41e0137fd3a4fefd3c1dd9224dfb45a98938"
    "pt-BR"
  end
  language "ru" do
    sha256 "446b2e36c863a53a93e15747836c23913af7b216a4a6065c4da28b0b6c00dbe7"
    "ru"
  end
  language "uk" do
    sha256 "718ef9baec859f68cdb9f5501d80132cca98a65a0a053e1492c7ea8b565a2215"
    "uk"
  end
  language "zh-TW" do
    sha256 "2dcf98d654be654082c8ee6923747a543c625006f057a25759dddb24be4ea493"
    "zh-TW"
  end
  language "zh" do
    sha256 "26874dde638048b58196bf18d2fc4d49e8c694536bdbdcd368bd4acdbcc1c4d6"
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
