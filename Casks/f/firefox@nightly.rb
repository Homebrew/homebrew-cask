cask "firefox@nightly" do
  version "140.0a1,2025-05-18-22-00-19"

  language "ca" do
    sha256 "ccafc142d0919542845a96e1ab2ac432e4db0599336c4d52e2cac505146ec55b"
    "ca"
  end
  language "cs" do
    sha256 "2c7a1d67823761632f10bb4329bcfceb8a6709281bfc1634a87d32cb4c2190a8"
    "cs"
  end
  language "de" do
    sha256 "0371c890d6bdf738376a70e42ef70158e4fdac6a114221245818af98460441bc"
    "de"
  end
  language "en-CA" do
    sha256 "8ce388510a2283e5385ac25a971be8111565e3d38874c9723fb6e7f50948ba08"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5fe59f7ef35f25d7b190b752c43041219f553747bd124b8f737827b739a644bf"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e0adbbb7afabcd041c07850cf39c1f7ea6c143c7270346ecac04c31fb550a95c"
    "en-US"
  end
  language "es" do
    sha256 "ed489fdd96523b1b03f07c3db3ed646d1fa58271954ff156d0c76c4b94e6dbec"
    "es-ES"
  end
  language "fr" do
    sha256 "a9236cf6f9e41422805e31b4b14963190b5f03c0a36f2555961fdc9e46a89dcf"
    "fr"
  end
  language "it" do
    sha256 "a82b8c52f1f367b7bb6f0ca2ab9c8c383335859488589dfd6f4ade808e8e920d"
    "it"
  end
  language "ja" do
    sha256 "9ea78e4aeccbab103f711fda0bb35c5f4575979c7778efc550abd840049ea997"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ee6fd3ec9f2c5d75686acb8ac2aac55bcfc84d79a7109f9c2783f73b63e8bd9c"
    "ko"
  end
  language "nl" do
    sha256 "afbd7d158f107c193c7320e35ec7bf30a1e36c930245b3b39cfc740de94d9086"
    "nl"
  end
  language "pt-BR" do
    sha256 "7a53f33d78736c6397ae25357f3f1d0409ba30e1600af05cde8a1b907eb76f3f"
    "pt-BR"
  end
  language "ru" do
    sha256 "ab739fd8530b84a33ac6b37d8d10f9e53350633ccf9feef990e5d70569f224ad"
    "ru"
  end
  language "uk" do
    sha256 "271693fe18aae0a964b0f06bbe07b39d204e4d1ca950a230471199e7f57afa86"
    "uk"
  end
  language "zh-TW" do
    sha256 "dbb6ed71c9f95ec13587ac6bf2a848f9a2166b2447729bc9d42426236115f880"
    "zh-TW"
  end
  language "zh" do
    sha256 "29a2ef5679a842c12f1213c6fc43b2bf36cdce12c91a751378b2fb6b7cf4ef82"
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
