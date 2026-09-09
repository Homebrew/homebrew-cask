cask "firefox@nightly" do
  version "157.0a1,2026-09-08-21-54-17"

  language "ca" do
    sha256 "3a502a479ea0658f2e74b82604589125182a35deaf67e8ac6310a5fb97c37296"
    "ca"
  end
  language "cs" do
    sha256 "27a69a774ae2b8fa8c323a9ba876bf0683b5569aa4ffd0ee9e162b7fe5b85862"
    "cs"
  end
  language "de" do
    sha256 "a6aed88fd08025cf78f4516fc4eed2e2d6b2e2b6f4f314a567d54d0552e80ed8"
    "de"
  end
  language "en-CA" do
    sha256 "da3001fb76dda3305c40e9f3a43f5dbcf5173adf418bac202c530db67a6d7b37"
    "en-CA"
  end
  language "en-GB" do
    sha256 "74663f63beebfaf8be99d95d79723235c819f2b55f67409640a70a85c9d1ab04"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2de5209d14f4713e23f72fd8556ac64c007f8502c1330de67323ae98b1318ca1"
    "en-US"
  end
  language "es" do
    sha256 "ad2384e72c3cc90ed1a6bed98e4fe2a3e3eeba15d3bc0cb86791136972a42017"
    "es-ES"
  end
  language "fr" do
    sha256 "17a1c2d95bccc30e12ad519adce53e7f009266d257b716038d3161d3c34422d1"
    "fr"
  end
  language "it" do
    sha256 "210ad549762d23eef6cbea4e25fd0f31e34b493af55ae1f7642f5699bf824fad"
    "it"
  end
  language "ja" do
    sha256 "dad4f37c0f4668bdc01506e1389512d4f58037138566c4f035065449db5267d7"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a9de04cb4f9c97274b00dd9cd871408f9d0202dfb364d97802ebf111e4e394f8"
    "ko"
  end
  language "nl" do
    sha256 "5fb51065895d93c4da52f22dd2e825b66087846398fa4bf2c6c1de508ea5da25"
    "nl"
  end
  language "pt-BR" do
    sha256 "e53c8c08efbb8f721b30726dafe51601b1e8ddadfa739c8cd91554246c32f8e3"
    "pt-BR"
  end
  language "ru" do
    sha256 "4b38ff300468c6665a0d83e9429594bc1627d920fa0db7fa6f74fa836317549d"
    "ru"
  end
  language "uk" do
    sha256 "37da0ee3d2e6620977905497d1029658dd11876290a07d6ae361dcfee3be4fed"
    "uk"
  end
  language "zh-TW" do
    sha256 "1a6d1a7b6578bce46a23581254e77e092c5c86e690030f0a72c40e5eb8e0d6e0"
    "zh-TW"
  end
  language "zh" do
    sha256 "d01d7ca2cbd5aa49ee86cc8a7367d7586a668cd99ea57844d9ca96fe742b3081"
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
