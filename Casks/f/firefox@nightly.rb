cask "firefox@nightly" do
  version "159.0a1,2026-10-04-21-50-34"

  language "ca" do
    sha256 "34b6dceae449d773319d58f88e205cd24e3f5cd931ecb6429914dd572bc67de9"
    "ca"
  end
  language "cs" do
    sha256 "a47ba717f421aa0ebc2e03eb680c7e8697f36f79a2e4490ee5d9e5380b4e81f0"
    "cs"
  end
  language "de" do
    sha256 "3f8c1a6e0fcd8c609afd4226a884f5aaac3ec8b849714774cacbf969ced6c64d"
    "de"
  end
  language "en-CA" do
    sha256 "feff6d65dea27e7120378f5f603a618ae34897aa7ce7f23ff3457f19821e64cf"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1a73c94ec8dd3b7991e02541707acf3152da3c27968c60f3f95f4348ceb0e8fc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d17598c8fb2c633e0ca1ede69537318460366cdeb5c900af87c37b9ed3cfb385"
    "en-US"
  end
  language "es" do
    sha256 "335680f19e713a536118df988c952b694f31cf2000bc4ce9e80a0990c71a0337"
    "es-ES"
  end
  language "fr" do
    sha256 "07931e345cf4d14f4b161d8df3f1fc9bf8bc406281462fc04c7a5abadcca67c9"
    "fr"
  end
  language "it" do
    sha256 "0f4765dda1186e18cf36cffd05b4946effc28d001a6d39992123f6f5012fd893"
    "it"
  end
  language "ja" do
    sha256 "f651638718843bc89e14bc208e2c1244f49b862771ecd224aaac8bdfef23739d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b3ad852af419b76c690678cb440dedf33ff1dfe4b6509e29c6190e2fa194b548"
    "ko"
  end
  language "nl" do
    sha256 "36c0f536532850c450d86e4a83cb46d10d0f0348ce10a2bd24ca09ba1f14571a"
    "nl"
  end
  language "pt-BR" do
    sha256 "067265b3b148e9b616751ed2827e5f8728cc157ea906f8500cb2881d41ca131c"
    "pt-BR"
  end
  language "ru" do
    sha256 "f5afab2626adf1bae4308caaeaaa0d08f23e767228821a8a0fda5c4aa511ca95"
    "ru"
  end
  language "uk" do
    sha256 "a6211ee715914d9b2ed9a93098e7ad10c0b3a548f0d0537761fed770ff1d9b3e"
    "uk"
  end
  language "zh-TW" do
    sha256 "5b90532fd2a6aa32320d70ab5fcc98da2ccfc8800ad9820d9b545f27eec2d75e"
    "zh-TW"
  end
  language "zh" do
    sha256 "0e3903f337e0a742b6892f0d5627412199d706dd4777d0d2e8f904e8029bdf5c"
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
