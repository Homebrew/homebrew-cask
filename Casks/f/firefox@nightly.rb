cask "firefox@nightly" do
  version "147.0a1,2025-11-20-20-36-29"

  language "ca" do
    sha256 "84a2bc8de6b6da931e05b7a47ccec1fdbd3cc73e50ec5b0296cd46f264c3764a"
    "ca"
  end
  language "cs" do
    sha256 "cc7a6aef9c2dc02ce4d82f43a8f65e854f2815644b1e7df3fafee519cfe402e6"
    "cs"
  end
  language "de" do
    sha256 "b515bf8a4c4336e0e70984749ac538a001fe4304113d7e8d2fde3d940b454cf6"
    "de"
  end
  language "en-CA" do
    sha256 "8c56ae775ef3694350b270a18dd2b498f8197c2fd58fa0e8beef6b104cb57745"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d5ca72332f7df615c08be658f22fa5a9940986ee256b16ea9ff563a4ba969e8e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7667f234d9bf94e612a3bea1d422ce4fdb27db993c94920ac668028ec38ed982"
    "en-US"
  end
  language "es" do
    sha256 "d675a09800b752243c46f375d9b7eec1dd1bcadcc1f949483bc2b13b91bf77ca"
    "es-ES"
  end
  language "fr" do
    sha256 "6e9c902974907268f5c49c5e572c2817468b1fd6304e28ee5b422a3d71a10920"
    "fr"
  end
  language "it" do
    sha256 "d34f685bf004377282c251fe44708b75120dc207ce3921ace8d4d3657d9eb71c"
    "it"
  end
  language "ja" do
    sha256 "0c5782d5e8b80a6f3466d07911101b80ebcc7f9d1df29a360e0d3e96cd25cc65"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f6b5ea766d399ee57128766be168920ea0b9872c32bc03bb49719b0da0eb940a"
    "ko"
  end
  language "nl" do
    sha256 "2f59562c332a454d7fe85b5c14ae1cc65dd75ef39e8576de0a558fb1ee13c2f9"
    "nl"
  end
  language "pt-BR" do
    sha256 "8dca56d842f6549c8bea8e91e1da1fd24c13696146d5b27eedbe932fe92462d1"
    "pt-BR"
  end
  language "ru" do
    sha256 "0d1937ef27b704291cbfd1829190b9826c50688acb30ccb4e45c643df4a47705"
    "ru"
  end
  language "uk" do
    sha256 "608576ade6f0ac308c6a2e30b914c345ef160cb4f427c9e28127b6bcf69637a0"
    "uk"
  end
  language "zh-TW" do
    sha256 "af24df2a7d766caf252eca0dbb2c580fe22f22210e01013b5511f0c986ced734"
    "zh-TW"
  end
  language "zh" do
    sha256 "297fa4d1c8bc9f73e3b11c5adb7a0a218fcc0b8f805a361864f909b2af7575fe"
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
