cask "firefox@nightly" do
  version "141.0a1,2025-06-15-09-03-40"

  language "ca" do
    sha256 "1ac35de66a71586da2e93e32eb64425f8a048f68561d8d9f4d2a08cb0ff2ba5e"
    "ca"
  end
  language "cs" do
    sha256 "0168e22cb3af796eacbbb4fe0b96b9f260cb39fa6a0111ddf3de05764e680812"
    "cs"
  end
  language "de" do
    sha256 "27f5d1ba1376b3e358361b6ba607118771a002d824e96b282718d7c82513032c"
    "de"
  end
  language "en-CA" do
    sha256 "6e6c4dc6acdc61626af6a9bb8bdbfae120ccb142efcde330a42c24ca5a8f12f7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2098fdd2e77e84b9c103d68ee84631b8e4dda0e4489a213c42014050a1c75962"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9e8dc66e6e7c74f98f2ca4cd4b29d25ac17d000586d8fcd2aee487c21e1f004f"
    "en-US"
  end
  language "es" do
    sha256 "2267013c2b4afea65370ffc7af8ab1ebfc20a911c9f552297118e624d4ae1a49"
    "es-ES"
  end
  language "fr" do
    sha256 "020092b26d3ddc22195ec4225456d74f37cda75280359d05db83054d93859743"
    "fr"
  end
  language "it" do
    sha256 "62e3d6d16fbef4da959a1a9c1f98fd94f05074ad7543eb501b02f431bdbb9c0d"
    "it"
  end
  language "ja" do
    sha256 "dfc591c90d3c7ec6fc7026717a0c7cb558e541497f20cb0669b8a86c4f978103"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "1e27dc4c50328084f620c31bc88a44555051ee9c64ee4631f1f342a04bb9749e"
    "ko"
  end
  language "nl" do
    sha256 "c9702bb83e7b5c4f0392a848fc735ed79339985e66c4ceed348dade10b630ae8"
    "nl"
  end
  language "pt-BR" do
    sha256 "bc3217acc0ada100d32d9c355418f4234fb70f36f81ea6f3bc283e8ddc9de41a"
    "pt-BR"
  end
  language "ru" do
    sha256 "b4e7b21649461a189a45306bc94ade157df9323149aecc3ac5db260497d50e8f"
    "ru"
  end
  language "uk" do
    sha256 "d5571845bedbfd21c5e54148830764e6544e508b01a1bc570be5e9c78d4f7866"
    "uk"
  end
  language "zh-TW" do
    sha256 "e4f9e0d2594d0ff579eeb1295ae1c358266d2e2644f1f6491b84e0df7ca6b4a7"
    "zh-TW"
  end
  language "zh" do
    sha256 "a825893cb54ab495f906cc4636f7a28af323b8aff1e72f1f1568a6d8803f2b52"
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
  depends_on macos: ">= :catalina"

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
