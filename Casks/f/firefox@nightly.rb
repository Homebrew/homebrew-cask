cask "firefox@nightly" do
  version "152.0a1,2026-05-17-08-02-34"

  language "ca" do
    sha256 "e56d9fee692b4387e03b8cb6a9dc90055338f95d27ab6e93c779aa5b499f4858"
    "ca"
  end
  language "cs" do
    sha256 "9a827648e6f65eb63ce053cd737665fd8a96f1e14ec2d6f23d1251d3854c8bb4"
    "cs"
  end
  language "de" do
    sha256 "14e7b3b2d40a3a2fffc3dc3cf2a99589d4b910b7baa4be1c50df5614d403dfcf"
    "de"
  end
  language "en-CA" do
    sha256 "fa2555cec1458dce57840fb1c5aacff6fac92dec39e1e912bbb33c2326332564"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ce849865386a17e8cfa7b2e345df9d771404d4044de707ec5dcf6b616f960517"
    "en-GB"
  end
  language "en", default: true do
    sha256 "52b944903607a4d5a9fac47407bab6d3c8a86a5c95ef1f04d21fb69d8238cfac"
    "en-US"
  end
  language "es" do
    sha256 "56106b2e87f12b61b529efb048484dc8427189d5bb7ddf7fb332969c18c21dbb"
    "es-ES"
  end
  language "fr" do
    sha256 "01fefe5a85c350e847cbe04ca56f3c7151dacc45520e50dc79ebf6696dbbb717"
    "fr"
  end
  language "it" do
    sha256 "a5ba8c4859ae439aa6ec043333665e0cd7c9da254bb1259355b3ccd8d1580081"
    "it"
  end
  language "ja" do
    sha256 "660780817337a1e70a9946b5f62eaca30e88e02aceb660a5e42b3e342230374a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d7788476b90deb36239e66289533c3053d558106b8f1e222a1402b6f81053670"
    "ko"
  end
  language "nl" do
    sha256 "b8314f02ca897137749b4d370e7294141dde2fc87c47963fdbe9e8f6f9069e64"
    "nl"
  end
  language "pt-BR" do
    sha256 "2a0f995772708c24b62ef59a653b90bd12afffe0cb12dda5fe0609e55c116122"
    "pt-BR"
  end
  language "ru" do
    sha256 "d658d8a76c634e7636f6f7ccf5453aedd1c30ea1801569952f26bad436f26002"
    "ru"
  end
  language "uk" do
    sha256 "b240166c9e9cd69c0f657fb8a9c4aca86bc4b43c12851741318176b37beab942"
    "uk"
  end
  language "zh-TW" do
    sha256 "10d36f9d4dc644d5848c7e1003b88ebced0e4fdbf6f631ab7519951811926880"
    "zh-TW"
  end
  language "zh" do
    sha256 "2ee9b9cb8b5947b56fa107f9599b00e8617cba2bce0650d6f288d0f7f9c05efa"
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
