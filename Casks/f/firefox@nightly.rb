cask "firefox@nightly" do
  version "147.0a1,2025-11-18-09-07-05"

  language "ca" do
    sha256 "f9e54343268440be320574661a4e511286b35b102c16dd9e49795369813e438c"
    "ca"
  end
  language "cs" do
    sha256 "0bdf547cade3de6e9b346b70d63f801dd73b3c297ddd870bedfcccc40a5cff97"
    "cs"
  end
  language "de" do
    sha256 "4f9d1d3ea38f40eadf9d6fab7ecd466edd3933b5653398b44b12841d37ee04dd"
    "de"
  end
  language "en-CA" do
    sha256 "6b26a2922399ab93e61c27e12fa8a20b694532a19fe283efc7e34ad6a7c2e1bc"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c8ff7128b1d5fab0cf3441d95a40197b260d547e4d61f1a05703d53cd036acec"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5eabb79bca2c94c27a657dd568258f1485731ee00b44f41f99d3d449754bd3cd"
    "en-US"
  end
  language "es" do
    sha256 "acfd94596f2d8dc80a1be58ac2b8ae0be899c3f4ca3a6fa8279a008bfb87009e"
    "es-ES"
  end
  language "fr" do
    sha256 "dba87252a20a90b932861b4b5d0fe8249547de0fdb2dbbf952ccf06354209a45"
    "fr"
  end
  language "it" do
    sha256 "d89ae61d8ba5725f9e980a4555b33f31c7d165a2fbde4cd8ed7736aa0e164c5a"
    "it"
  end
  language "ja" do
    sha256 "195fc96953aaea5672417c94cfb003c65f609f1460b361e31e2d9d20e97f609b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "761a6afc2697cd62b4dfebf264df49ee2a30ae62f86a42d105b4e3745c2bfe6e"
    "ko"
  end
  language "nl" do
    sha256 "f5593d3e62d2899c603a2237278ca840b27d4f1b54ab6d073aa472179a216636"
    "nl"
  end
  language "pt-BR" do
    sha256 "e79bb35917861479c9970e9f9ad5596ca5a69429ba31d03b348f0abaa01a5409"
    "pt-BR"
  end
  language "ru" do
    sha256 "1e52eb4873d6e0bb775aabae7ff8a0414244d3be22394f48813c2b8389474049"
    "ru"
  end
  language "uk" do
    sha256 "88b934a486604509f1c34735d47ac3e587706979b7862563d46c2051d8af1a10"
    "uk"
  end
  language "zh-TW" do
    sha256 "c5dc7e34d404dc816f7169a0b43cea86ddccaf0ba472ac24659c316059ebbee3"
    "zh-TW"
  end
  language "zh" do
    sha256 "1ddc6eaed9902fffb7201347fc4e4d510ca38d98aae4fdab3ce201d82ce2fa76"
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
