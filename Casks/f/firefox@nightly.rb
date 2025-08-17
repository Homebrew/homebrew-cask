cask "firefox@nightly" do
  version "143.0a1,2025-08-17-09-09-44"

  language "ca" do
    sha256 "159ab7e5ed077e797fe692c2a5c6a41f5511a3f856c8d9af9b90124d659a853e"
    "ca"
  end
  language "cs" do
    sha256 "22e5b352294ccb231f487c49e8789fcda56c39689af45c21eea2773808ecc57f"
    "cs"
  end
  language "de" do
    sha256 "9773792fe3294d1563f98bae570f09287aef025b3966272fd52a63d87ccfba7e"
    "de"
  end
  language "en-CA" do
    sha256 "2f43d83b5561bfdeb7374c471d9562a30e3d22a50959aefdbd6c21471fb84132"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2ead87d7cd2296e1cf8bcdeeec4ad92b2cfe9486330407a35de32e2c7942adb8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fbe64d8dcfd5a768d6c93a8f45bce1a4511a69aea9a285cdf3a7d3cd60917d6c"
    "en-US"
  end
  language "es" do
    sha256 "d9781a0b2714f54212861c10890c42ff206af802141053255aa85f1810d82561"
    "es-ES"
  end
  language "fr" do
    sha256 "203df22e2572b28eb11041d8b0bda85a55c5f1608b2562ced30b5f6940f83172"
    "fr"
  end
  language "it" do
    sha256 "5bbda895dffe4cf66b3eb28fd4dd64c1817a9254f992340a6655641ea9354a80"
    "it"
  end
  language "ja" do
    sha256 "1b91bee545fde9df7f725d1220247c565415ffe6b916c239bc13cef250dd82a9"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "516205be6ba859f46fda51deccac2ab190ed41c03a073d015adb179af5c7eee3"
    "ko"
  end
  language "nl" do
    sha256 "bc0ae7df5d2678ffbfe524970e828101ca534950b3c06b18cfd33016199de300"
    "nl"
  end
  language "pt-BR" do
    sha256 "0184038dc37c2043cf6a0a62827e6217aa42f9a5a305df37ec28ec7a2c32b6e6"
    "pt-BR"
  end
  language "ru" do
    sha256 "286370c4f8b4906dea0365a24b8f3b7709025784454a150e2e0735430e7aedbd"
    "ru"
  end
  language "uk" do
    sha256 "9c443062ced15c4eb216b14d5705a6574928037f8c9fcb789f21e4ce4e9c22ec"
    "uk"
  end
  language "zh-TW" do
    sha256 "0cf340d6f2f9a8f5fc437349577f9e856a3d80dc097212b1c8a36e5b394ae9dd"
    "zh-TW"
  end
  language "zh" do
    sha256 "9995fb629c0bb2dc6be708c6c1ed4a6ea3f5f3a6f7e12a69d035810d013c163b"
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
