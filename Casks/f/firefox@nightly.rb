cask "firefox@nightly" do
  version "156.0a1,2026-08-20-09-27-44"

  language "ca" do
    sha256 "4fdd887fedebed21873df98ab2226e9e8b32e2bd810db89662664b91f08ca27b"
    "ca"
  end
  language "cs" do
    sha256 "16b542354372072edf1704479fea70a2ca87740c26b3de99954e1dc430341abb"
    "cs"
  end
  language "de" do
    sha256 "ce68bf2db0e13b922305ccbdc53983d4560491e553b8110cf87a8a1598877aa6"
    "de"
  end
  language "en-CA" do
    sha256 "2071e98c7de5b1eafbda2e8a82b3b5409b788001359f9cf44cab377fd5b64894"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6c8f78d97d740bd289d9bd78e03396d6fb060c8a59bd8581e21c1beb00cbdc87"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a3c8784f32c7216383727523ee4d488695840b83a757f9c5003ebe61724f6ca3"
    "en-US"
  end
  language "es" do
    sha256 "858b74dfafcbf653a687adfe7ea300c42216170a2a0db02938036555796d9b07"
    "es-ES"
  end
  language "fr" do
    sha256 "0e23be155e0f60821a50ad2341bffe6c78f247a1a3ba0d00bd85317a98189ff0"
    "fr"
  end
  language "it" do
    sha256 "a49a651fca428e99f00e72013164635e047a6784607aee749ccb3b8b3ebd123f"
    "it"
  end
  language "ja" do
    sha256 "57b691ed24bd378752a7dbb038a8707bed9bb4ce581a34dad445b9cda2dca789"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "609d1ba0c677e73e78384b1ed180c40bec81021ab47134fff02dae599627e7ea"
    "ko"
  end
  language "nl" do
    sha256 "bd2d82d4bbf304ee9a24c362daeb988e6ea906c706373821f9842709d6df6bf0"
    "nl"
  end
  language "pt-BR" do
    sha256 "d529890b4743d87d9d01e8958344396c81c624cd799a529308e81c3ccd366bb4"
    "pt-BR"
  end
  language "ru" do
    sha256 "226abd4af8977269b56dcebf08f906be24e9d90474c4be05646fb79e8ecefa5b"
    "ru"
  end
  language "uk" do
    sha256 "fc2f4e60e81ddf831648fe2cb8345862f3f0574bc16c17de49d0dfcdc4f6fe2e"
    "uk"
  end
  language "zh-TW" do
    sha256 "685bae41588d0293d6a43d8341bc8bff7aaf1ca50ecb090a690ef47b1753a1c7"
    "zh-TW"
  end
  language "zh" do
    sha256 "170a91a11fd0263b8a4e8656a67ffc7fb9dca401ec24f03779e9455b789a3bd8"
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
