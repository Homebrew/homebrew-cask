cask "firefox@nightly" do
  version "159.0a1,2026-10-01-09-06-32"

  language "ca" do
    sha256 "5a5f9c3c7d85de4d2ce7e875976bceb29c32e46357e8ee8724ad417a9203c2e0"
    "ca"
  end
  language "cs" do
    sha256 "10640a4b90d86ea72f5d7ddf608a8c94ca4bea0efbeaecaef658ee413a0a7f0d"
    "cs"
  end
  language "de" do
    sha256 "d60d728a6b8b1ea8f37af6229e2024fc86879909261ef521ca319fe83791daed"
    "de"
  end
  language "en-CA" do
    sha256 "dc6b7b298c690d4acebb8287c0283d4b365f73d665771b6864351ec6140c1af6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "052195bb9c27bc09a5d808befa4050caf9e20bb0118aab8b04a86a7f62f50a88"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f5f4998dea0bd74f46c600bd6fafc8e6f0117d553f8d6a5d87c11d2204366688"
    "en-US"
  end
  language "es" do
    sha256 "5ae93051e9109ff1d3179463dd3ac54db8a861c08ae6e175c97289bb2833f622"
    "es-ES"
  end
  language "fr" do
    sha256 "5391041fc939f760940db6c829b1bab3f1ed2db055004721aa32cf77e3a25de9"
    "fr"
  end
  language "it" do
    sha256 "80e85a9ed773cd7978c402d6aa6975dda7beb8653fc501a744ee943cc3c5862b"
    "it"
  end
  language "ja" do
    sha256 "f05856d6ae9b4d642a07674580933b39277f67e8596400eb2834978adb0aa397"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "25bffc715647038ff385a3af036617feef21be340ac8f88a4bc8a249da2feddd"
    "ko"
  end
  language "nl" do
    sha256 "c9f9e8969187e405956a0aa2a88bf284eafa866fa20774d2a043a39e4d459c43"
    "nl"
  end
  language "pt-BR" do
    sha256 "8f136fa803ecbc9670322cf769a796afca621f9d30548e9d02552b7f7e822638"
    "pt-BR"
  end
  language "ru" do
    sha256 "c8657218f8db0fbcdc997c8827f1599d204fca587d1c3b323c78b56404e9bdae"
    "ru"
  end
  language "uk" do
    sha256 "eba77b5b8c8d033fa1db640dd0eee41b50570828b5be392f3128c34a0a2eda83"
    "uk"
  end
  language "zh-TW" do
    sha256 "17fa2b66cd14da0281c774653c5979259108fb8bda239cecf5748a0ac597c486"
    "zh-TW"
  end
  language "zh" do
    sha256 "7a8142d236167bb539c691d74a0f1e0d1aa8ca0e2fc708df85a2666c288034c7"
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
