cask "firefox@nightly" do
  version "147.0a1,2025-11-17-09-50-36"

  language "ca" do
    sha256 "5ca44ff2c367c14db97b8e1fb3671e052d35a8e50d1f8b718297bc7e34851b58"
    "ca"
  end
  language "cs" do
    sha256 "d9fe7bf8de43fdec7c69a80d93e960ad5d3b0b613f95009420afa78f713d0e74"
    "cs"
  end
  language "de" do
    sha256 "69fd12679d8e0ec2a2fc343db0c76c54e8032e83339f62e7fdd439659612bdcf"
    "de"
  end
  language "en-CA" do
    sha256 "1482cadab3a44e47d0aaa9e9b31ca90c1558caa34e9c702db797ccd34f510a6c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0e6a3eb7843973405d5a828766c5028d30696bf462e4de579a740a8d2a4f4f7b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "48ca50c9afc3f9d2a8a8a5fb9a5a5ff32c30d8db27bb969ba23345eb0d481e1b"
    "en-US"
  end
  language "es" do
    sha256 "7b274a127310c0961ce13c0c72c9003853167ec7b5e7cdd6cad135b8c3ee2c1e"
    "es-ES"
  end
  language "fr" do
    sha256 "63567ae07b1ab7771dc447497340d62be761a35852354fd1d14527057ed8c44e"
    "fr"
  end
  language "it" do
    sha256 "b993bf29a1cf0fa2267a37c27d1b2ce5c9c91a70f688048176888693c9f2e4de"
    "it"
  end
  language "ja" do
    sha256 "77d24366c740bdabffa9950cf993ef0c2a339a541bbabee8fcd0442dd21533e8"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "1a5bed0c3f2631556c3c201dfdd3674c4221c24f63c3a296cd178ae7d8f68b81"
    "ko"
  end
  language "nl" do
    sha256 "c57edc6c88bab901e2fed21cf37bd34a40bb97f09a3cd538ff5ac579772154ce"
    "nl"
  end
  language "pt-BR" do
    sha256 "0f2e1c80c3f48d9908ae88d4ed8099b94de1e4cfacebc0903d862e04043e3fb4"
    "pt-BR"
  end
  language "ru" do
    sha256 "900b874da1b96673c631ca28e973ae320f0b70354c853011fe1bc8e0b8c3fafe"
    "ru"
  end
  language "uk" do
    sha256 "6fac399f4af691326b112873540c1cc17968d3220151464c015201251bb1122a"
    "uk"
  end
  language "zh-TW" do
    sha256 "ed2231eb13c0a78c3b0f57354a5aa2f13f71907630c95138e82ad4d65c5f4eef"
    "zh-TW"
  end
  language "zh" do
    sha256 "1c7d0b2b544905c9f187281b29efe533d20f99d1980e21356e667b6d7b09cf0e"
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
