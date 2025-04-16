cask "firefox@nightly" do
  version "139.0a1,2025-04-15-21-21-06"

  language "ca" do
    sha256 "b2119fa487edef5028743354ad163237b4559e1dbf99146a4f6d7b776c1ce8a0"
    "ca"
  end
  language "cs" do
    sha256 "77de93c2b3038fe6127f0284012d2b062c4f150f18c37102aa293f5ce4a4b40f"
    "cs"
  end
  language "de" do
    sha256 "c166f512d8ac502878f8ace47ae5ba88ddc64b8a560a6457e82ce39d60e3f30b"
    "de"
  end
  language "en-CA" do
    sha256 "064a1c527f372fe476f70d1d6e2f960e86318aa951552bdcb7d5d5d016aadab8"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e72c0692f2b9c8f042e89675b6a48e81c0f258f5dc45329b06cbe541becd1b58"
    "en-GB"
  end
  language "en", default: true do
    sha256 "93bc196f2c9b3ae615a83104a02a1b7ee0513bc67cdf6ef4f45846bb9d7262f3"
    "en-US"
  end
  language "es" do
    sha256 "7273ead1df583ebfb529036da4e780a8b95e5b8198f9853d8ceb159d67361f38"
    "es-ES"
  end
  language "fr" do
    sha256 "2a6fc36d834073404ebe79d9210d5008e508520335c88ef85a4c39a8b876bcfc"
    "fr"
  end
  language "it" do
    sha256 "34abf6b7b0fc27644601e61a33f69e5d5d47f560683e7398d0ae761b251e9314"
    "it"
  end
  language "ja" do
    sha256 "88643c9feb458782a087b55587570c5fd15123983e4d45927867b3b3c5f2cb4c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "da4ea0e6d5f17cd5296c26dff07264b3b2a2b0d8e85d2cf4fca7d6dbc997e3f5"
    "ko"
  end
  language "nl" do
    sha256 "94ff605b87fb7a1ef7c97a11c28a61ab03ac89bcff7298d29bb65949ecc10b92"
    "nl"
  end
  language "pt-BR" do
    sha256 "da488b09430c666652695052b22005fae822a9fee433aa35ad293957dde14c8d"
    "pt-BR"
  end
  language "ru" do
    sha256 "c97bccff0aa635515ea83f835873e132c7b1f3b46b8deb54b05e17982fd328da"
    "ru"
  end
  language "uk" do
    sha256 "a7047405554d593d20214e45edc8973bfc692770dc8a2b0c412e242399a60c8f"
    "uk"
  end
  language "zh-TW" do
    sha256 "81bef1b1e13458a707ca65d8965662db1bc6f717fc687b4a6b40fe14e0a76074"
    "zh-TW"
  end
  language "zh" do
    sha256 "612ce10c9a6a67c1a2e617f1dcebc5dc1d130e093a162af86a62ca415f1cc8a7"
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
