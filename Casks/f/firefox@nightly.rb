cask "firefox@nightly" do
  version "152.0a1,2026-05-16-21-17-56"

  language "ca" do
    sha256 "5fee7ddafaee7d4d4c81eb294b2b1b631a0da5ff8c88d89613ea54cf69eb1a99"
    "ca"
  end
  language "cs" do
    sha256 "cee2e809d8167d9c3405db8da655e0d8be3c90b736e9184663cadce142ca15c0"
    "cs"
  end
  language "de" do
    sha256 "04b33ae24bc4fd2b7e08c2afe90a41cd8a28f1ea907f363465c192d01d042446"
    "de"
  end
  language "en-CA" do
    sha256 "a7b6c6d9224720fa45d52f653b278e0396234a2dc7172ecb6ecf5ab7dbf2a046"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7d0d703831243ec7f0e68037c5bec969af2a9f37efd5d9894d41b6ed7ad33200"
    "en-GB"
  end
  language "en", default: true do
    sha256 "79a78b27d5a5f61a50146a5b72981767507c8bb7d0d890f41a0bf017d13873e4"
    "en-US"
  end
  language "es" do
    sha256 "95a61e221060a10497ebb6076d4a2a44dcf665f4336f3674b3d98a9cefeb830b"
    "es-ES"
  end
  language "fr" do
    sha256 "bb65e9ea8c55cd2995ec66dfc48937efda18e565b9996e60fb5d7c1effd592ee"
    "fr"
  end
  language "it" do
    sha256 "377a3bb8f2dfe35ba1a8f5494a63a9cd897989508179610a3d12384b05df6939"
    "it"
  end
  language "ja" do
    sha256 "871224ab03adb7fab06954d7245b4218483bcf950e97c9985ea4582e16edf367"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "197c97c370cb572c401ecf4792f7a9c73aa37932d3e2ae5e6164a9521aeabc72"
    "ko"
  end
  language "nl" do
    sha256 "57b29c2ad92e1d22cdc6b86978ccb4a1d8ec6b96bbceb58b00ad3d42d0b9f013"
    "nl"
  end
  language "pt-BR" do
    sha256 "d4b4a9cbb9f9781e9a5428433a86ea15a0688a272da2c157033023e31ecf30a0"
    "pt-BR"
  end
  language "ru" do
    sha256 "6dc09b31740cf03ebaf6a75a9fef74cea808b4d6b6a543ab43334f5476d44a0e"
    "ru"
  end
  language "uk" do
    sha256 "6cf821b8f24375f1d3a63df7bc5ee4758e6ae6ca23d448b3df96540d22fba307"
    "uk"
  end
  language "zh-TW" do
    sha256 "f363b8c748cdf5ad272fd668fe21aaf1bbddbf9a690a59ccc60a924aea84735a"
    "zh-TW"
  end
  language "zh" do
    sha256 "d559b5dc1f715d09a856da5f32af9e6ed84ea40277affb7b44bd09e5c63c1a7d"
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
