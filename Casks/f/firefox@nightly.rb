cask "firefox@nightly" do
  version "154.0a1,2026-07-20-09-21-50"

  language "ca" do
    sha256 "8cea1f7f1a181d286cef4656bf7eab4582e106cb5563e4aea041819a3e2bd5e5"
    "ca"
  end
  language "cs" do
    sha256 "ddf5af094c673b7ce28d4078ff4027758c0640356adea57755cb8848380a6696"
    "cs"
  end
  language "de" do
    sha256 "1a8e2701b0c7b0326f828b0d8d2e062ec8509c3ef58c87a838092b9d6412f729"
    "de"
  end
  language "en-CA" do
    sha256 "4c9633676b23f4d0a668bd0b2004e42de7875194e1f5ba497ce90c57219b0cbf"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8935690ce82c93541c18cd01fa063301b0560e10972b434f59304a3677c5591c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6fe0bd463bb0b26cec010ce6bd0aceb6655e120befc435f0705fb7b3d1be0ded"
    "en-US"
  end
  language "es" do
    sha256 "78dec632383d4730dd3624b71ef73bd10184e387fbfdec41f36193916269a618"
    "es-ES"
  end
  language "fr" do
    sha256 "5d34439ae3348051ade73ecf9f1fbdf5a0fbcad8c6d95e41511595732aa54fa0"
    "fr"
  end
  language "it" do
    sha256 "43b5549e430133f4edb12196b5b851804613292cad4a0d38411dd92f8a9b0e45"
    "it"
  end
  language "ja" do
    sha256 "abafc78a979e537114cb31e6d0f26676a76341cb9a5be9a65338c2a89b4cb319"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a8744d5bc832d0d2cb04ed836e6897ad5b0c3ec683c9d406fd6ace8dd403b99d"
    "ko"
  end
  language "nl" do
    sha256 "9492fd1bdc15fd63f260186cc9997d6397346adbdb80f2d06f6760b0277d1576"
    "nl"
  end
  language "pt-BR" do
    sha256 "734b24e2fe2d227b33a6446e0a340274582415968561dbb9065465fef3e1961e"
    "pt-BR"
  end
  language "ru" do
    sha256 "924a28bd95d482972e9d629ca1ca151dbd83a7d749d833a3bff1c0e26583c8be"
    "ru"
  end
  language "uk" do
    sha256 "f08483efbc81c95a5d93cf1662cbc35e38e7f227f34ed30f25ec4d655a8d2fc6"
    "uk"
  end
  language "zh-TW" do
    sha256 "d3c463c844c372b5482e9ec68a753e4a199aa4af9a372af5976e1a4be36c159e"
    "zh-TW"
  end
  language "zh" do
    sha256 "6a972a43447b0ead719a232b5d018554ba5c7603a3d54f7df8f0e526f9b5e403"
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
