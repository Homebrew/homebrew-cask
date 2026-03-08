cask "firefox@nightly" do
  version "150.0a1,2026-03-07-21-06-37"

  language "ca" do
    sha256 "6edbaa6bca5584cb21e424cc427685186f702a45df71ef9b648af6a7eac8744d"
    "ca"
  end
  language "cs" do
    sha256 "e778f69e263921e727b7545c2bf859cbc22aacc86511c27a6b37bbb3b4d07b8e"
    "cs"
  end
  language "de" do
    sha256 "0b578bf37ac928f2b6f96949c4e3a31de4c140f35768200af873684090be8807"
    "de"
  end
  language "en-CA" do
    sha256 "9b00893d121ea56c2f4ca7d939f00a718010cede3b914afc320637bda3662621"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a02933dcb1845c2c7eb8f64abe6d003d779f9a2554c8264d8a7089764ac49f35"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c1be63fdd1eef7dc7bd3a63b86dca9b7fb6e1a6566956fc6d593d3bcaec2e23d"
    "en-US"
  end
  language "es" do
    sha256 "072c01e7464ddec5ca61236681519eef2ffd3121679ace0385ba10fc649752d6"
    "es-ES"
  end
  language "fr" do
    sha256 "4ff34749b0b5a49de2f5c8193467355937e423048465388b50fc3f9818edf0c3"
    "fr"
  end
  language "it" do
    sha256 "27e100705901e80bdca2d57f641f29ad6497f1b8bfd52d379142019fde511803"
    "it"
  end
  language "ja" do
    sha256 "80d43c190d8c7b1551a20b6cc2d41818aa0e208b9f0d2188a273363fc5ced5bc"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c61fafbcfdf4cf3ece7aad791c0fa6b1678a27b1c25808df24e96fced5b14d4d"
    "ko"
  end
  language "nl" do
    sha256 "25f75ecb4dbcca74a30c5407afd342775c9464a837fe31bd0e00037406d0f6ed"
    "nl"
  end
  language "pt-BR" do
    sha256 "3a0c4d18b0e50454c8bd020ca337b143304f9deb61487352fe82cd677fc2f272"
    "pt-BR"
  end
  language "ru" do
    sha256 "f85adc73889ba0bddd06863004bad27c8d8cc97d827d423d04964d55d2332a59"
    "ru"
  end
  language "uk" do
    sha256 "bcf42e9eac0614d4e17448ff6d351b8acc023a68f7aba1b055b4a2eda1180048"
    "uk"
  end
  language "zh-TW" do
    sha256 "89864e2605f403f543c46b86e0f09ee5c99586063058247a5398b708bf7b0e67"
    "zh-TW"
  end
  language "zh" do
    sha256 "c19b60f51802626e1e53487c82579ae61ed88d967aa003dc6366a1b5da2e9dca"
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
