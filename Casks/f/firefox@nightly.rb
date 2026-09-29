cask "firefox@nightly" do
  version "159.0a1,2026-09-28-21-03-05"

  language "ca" do
    sha256 "96f2c015ae1fb0e2e8ab054f70b8452256449ae173b7abd817bfedb011a06561"
    "ca"
  end
  language "cs" do
    sha256 "0655a9badf841e7b08a90c721911bd04e4530985d1725e7cba56be3a4d472f20"
    "cs"
  end
  language "de" do
    sha256 "3f07cd33d66193d851f295f2cc3884d0231a71574212b22321d7eb3b89371753"
    "de"
  end
  language "en-CA" do
    sha256 "c2fd2d6fc56d436202a547a282e22b4f10c93b45eb4d3b7ccbf72b51e90beda8"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b409d728bf18689031a6d33a52598091af569e1ae03a25951377a06595329ec7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "cb7b4fbcf01aac32b984eda02947440fadc5756746c335b11e71b6c85a23621f"
    "en-US"
  end
  language "es" do
    sha256 "c4af31e0acc22aa924cb03b1089b24773fbf40aae63ce008a22510172d212425"
    "es-ES"
  end
  language "fr" do
    sha256 "6e091150cfb6c9e47083a28452f34c15d6502447d69fab95db161634707a0cdb"
    "fr"
  end
  language "it" do
    sha256 "11699b1be076cff40735aa19c26b1dd1a379863262b1ec8a2e074109285fab20"
    "it"
  end
  language "ja" do
    sha256 "647d18a38bf2b157438c69ee14c6e4ebbe63ef19502af3a07632f2dd76155126"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "16d2709a1de80047248a2788995a535f319fa2b4b8eef4bc1252f06b8a262beb"
    "ko"
  end
  language "nl" do
    sha256 "e877367d76b7101a4f7924c86cbe59ddaf25c107e8c095fa907f79a624cfb54e"
    "nl"
  end
  language "pt-BR" do
    sha256 "8c85d224ff7b2d9ffc31efbc807643ee730fb697507c66a047817047350966c8"
    "pt-BR"
  end
  language "ru" do
    sha256 "ba3f3434faa0a698a792fcd498063517f59b2f9f6f38b31cc99088d3f9a75b62"
    "ru"
  end
  language "uk" do
    sha256 "a1533f1d77a04aa3dc5d373e64f95ed1d32f86d5b724a8536bf36d4d87c224c6"
    "uk"
  end
  language "zh-TW" do
    sha256 "8dc9f3207a2a237750f2dc7194ae3c3b1a84aedce3d583c0120328141c0fcfa8"
    "zh-TW"
  end
  language "zh" do
    sha256 "f39b4e01e88211c0103111f9857f557d4b64042d1ed0a4a56ac1b92c053003da"
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
