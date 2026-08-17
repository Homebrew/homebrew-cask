cask "firefox@nightly" do
  version "156.0a1,2026-08-17-09-28-31"

  language "ca" do
    sha256 "d53142ab3ff9ac2209ef3e135a9a831169bf8ae47f4755a49c7c625d393fb761"
    "ca"
  end
  language "cs" do
    sha256 "91a38774704c02d1a741e94831d31c799fd6579277fb3076606b8dee0c3b7cb2"
    "cs"
  end
  language "de" do
    sha256 "d02940f9f648515ef4b0fef493c840376947844cd2fc1156b67a6a8bd30b49bc"
    "de"
  end
  language "en-CA" do
    sha256 "aef27ee7c03ac5f4e67ee1cc2c5c4ae729c530fd2367e18d06975cc4924a861c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f8d44f03b0b01446f891eb962aa2ec950ffcb77957bf338ead9ee50f7b425a29"
    "en-GB"
  end
  language "en", default: true do
    sha256 "185ffbd9818ebd2c74697b929beb7de13a73acc421f6cc2ba014de0edf8ce5c0"
    "en-US"
  end
  language "es" do
    sha256 "02021944ebc0b6ea6500212af61597eda105a98999366e346753f3468c8b1da8"
    "es-ES"
  end
  language "fr" do
    sha256 "2d3a11c23c959d84006171c1456544c78d273d9238127d77992a12b0b23c60c8"
    "fr"
  end
  language "it" do
    sha256 "96201bed0b3a187bbc73f35b79754df408c9e913e1b298834e29f8d91933099f"
    "it"
  end
  language "ja" do
    sha256 "b39b420beb31b7ee1bb6fb3eb0a30e6e90218a05ee17847270b20580a9f29f19"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "00fe0d929ff56c9cbc66c4e2ec78104078af5c9782efdde12b64f3f29175f0f1"
    "ko"
  end
  language "nl" do
    sha256 "66e770770a02e943d2a96b76888be8a88ac7864bc16d0e9949251afcb2f88df7"
    "nl"
  end
  language "pt-BR" do
    sha256 "4ecc7bd422e64831c500b211238f7d549f99356172069a8b0b91e6f357859c75"
    "pt-BR"
  end
  language "ru" do
    sha256 "6b585ad194cf83c3ed4ca92bc886e666731a327f2fd3d7e68e6136f786992c46"
    "ru"
  end
  language "uk" do
    sha256 "c2ccef1f816218a3a7cf218cc1e0c0335ee0e60a6f65042e30d454c6772c6b9b"
    "uk"
  end
  language "zh-TW" do
    sha256 "2a5596a66f577d74aa7f3f00700e18429f746305564cd3b868cb74af21509068"
    "zh-TW"
  end
  language "zh" do
    sha256 "1865ede618a4ad4ad917b16087a3f0edf7bdf1df14b010326d1a06f3b2df1cfe"
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
