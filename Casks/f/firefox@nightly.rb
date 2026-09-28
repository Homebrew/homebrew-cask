cask "firefox@nightly" do
  version "159.0a1,2026-09-28-09-23-19"

  language "ca" do
    sha256 "d70e3fab3c74dd1e4bf9db7edd7a1263f09d0e03dff05a661c4facdd79830c27"
    "ca"
  end
  language "cs" do
    sha256 "e9f05fa4ff5eb0685bb9cd3dbac152cd7006a5109bceff2ddd1544ced7f37611"
    "cs"
  end
  language "de" do
    sha256 "00ec9a75ad57df953593e4eecb918da2e36ded4bd667e597f3bdac19d5a8733d"
    "de"
  end
  language "en-CA" do
    sha256 "a479f1789ff8cdd4a2b155af7ed391d3066ff86174897a67a1a483d225373af3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e3d41638f3bdbf0174fbaaa2b6a4d32ffcbce4b334126307a21a0b684abc41a8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d6e6d4d14d67075c71a4d145daa518388ad929fb91e679bcc952c6e513c03cf3"
    "en-US"
  end
  language "es" do
    sha256 "5703a9acb1e5eeeb42084338102139be499d3a0997aab2182a9490e7ed5cef45"
    "es-ES"
  end
  language "fr" do
    sha256 "0ee88df1f942948454885b82d4c60b67aec4b46f0094806ea3a1beba5e3b6bca"
    "fr"
  end
  language "it" do
    sha256 "06d432ab880790bda218bceece2842e909ae5ad1b8360613d1c37935a2f2256e"
    "it"
  end
  language "ja" do
    sha256 "58a67ba1d791fa0144312cf0ecb768d909871bf3bcd1a87bdd6599293f378509"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "7623445239085558d93213bc40566fdfccfaa0dc145adf3c7e39677f5956353f"
    "ko"
  end
  language "nl" do
    sha256 "c69718d8968e1e8ba860c6228b5245591609789ce856f0818fcc82112d9abe45"
    "nl"
  end
  language "pt-BR" do
    sha256 "a9d26ca815176fee337f2fa4de771244e1ca6ab233bb6bfebd2c618270d8332f"
    "pt-BR"
  end
  language "ru" do
    sha256 "79608678796f5ce691468b832892aa5ca331286510305770c08dff58c7c2ef4b"
    "ru"
  end
  language "uk" do
    sha256 "a8fae9e9e83f15fe7c02974bc95a600bf98d11af51f22ae190ea29708a0b6baa"
    "uk"
  end
  language "zh-TW" do
    sha256 "0bf0fe70e3cb042fca31e1f8edeb73c208fc2da0c5f470c9c81f19cdbc2de591"
    "zh-TW"
  end
  language "zh" do
    sha256 "576ab31e7d7b4ff69409a8343ea5fd2864326af7d234c711893388795d785628"
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
