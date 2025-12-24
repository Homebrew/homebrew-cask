cask "firefox@nightly" do
  version "148.0a1,2025-12-23-21-50-30"

  language "ca" do
    sha256 "b446ee9598110e0537e4eecfd1d34ebee69e9236ddb4e08a319f1ce2a23a13b0"
    "ca"
  end
  language "cs" do
    sha256 "4024f51bfd99ff95200494223fce79232aa3f9080ac4213b8e76251c2b683e16"
    "cs"
  end
  language "de" do
    sha256 "63f2fc78fe023d98e87f41325e138aff9d2bfcc21995f8695ab5ea9e72f71642"
    "de"
  end
  language "en-CA" do
    sha256 "72ad118550420226b4cc5254208b98194a98e3632100cef05f75f33f4893191c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "61b0a24b8f91850c7c9e2264a229cb7152b7cc01c731036717f93f9fd17dfc30"
    "en-GB"
  end
  language "en", default: true do
    sha256 "da595ab5a418a510b7baf0f6acb5bfff52578417053da8dec328753a609b796b"
    "en-US"
  end
  language "es" do
    sha256 "6da730f9e767c74163e0d9a0c35b3bead06be00a2483a77d8f046047efd26f12"
    "es-ES"
  end
  language "fr" do
    sha256 "10468bc28ec66f25f1629ecd4d334130cb1a70accc0bdbe982d7d9de4dcd24e9"
    "fr"
  end
  language "it" do
    sha256 "4a06d090ef830bc9a379caa5f8c6b43d77e74ae02a8a09a0516fa597c55bc75f"
    "it"
  end
  language "ja" do
    sha256 "ec8912d0e2bbb2c1cb6f0510ba0754c88104456256d76ff7249c68fa54488d8f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "92d0b62e599b4c8dd65a1782bf46008b52f31d1c35c4ee2b8b23f9e6ce75e9c5"
    "ko"
  end
  language "nl" do
    sha256 "dcbc9b7758e086f2562630817283ba2e0d225fb35f2af19431c7695f79465151"
    "nl"
  end
  language "pt-BR" do
    sha256 "fc04bbaeb9d21cae08305da1d1a33a49492fb3064231a66764e6dcd0ed8fcd2e"
    "pt-BR"
  end
  language "ru" do
    sha256 "755772204b3e3668a6b75d7743a022d8a7634397492842f84c3aa77d50579ccd"
    "ru"
  end
  language "uk" do
    sha256 "5bddfe40efe73e81215de8a9c5680d4e769c5d0283f566a30a97b0adb873adef"
    "uk"
  end
  language "zh-TW" do
    sha256 "2c6c90f2d40ded96cf7dc3f6092f358808f5d2459aec06df07b51ce84886351a"
    "zh-TW"
  end
  language "zh" do
    sha256 "2c147cb1b617eb4800d316b66736885564f558cd6b97fd99dba8ce41962377b8"
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
