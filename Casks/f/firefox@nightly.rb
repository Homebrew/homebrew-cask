cask "firefox@nightly" do
  version "149.0a1,2026-01-30-09-21-47"

  language "ca" do
    sha256 "2d0ba3a325fdf5c475e05ed7c676cf1f8ca7da36d5b9442ce15841c138c32e47"
    "ca"
  end
  language "cs" do
    sha256 "f4c05d713cc17ff5b59fd08ef5cc98701148c4a61566d026e94acfa0690c67e0"
    "cs"
  end
  language "de" do
    sha256 "515730c9354b70cf0ef2c13e8c1b979eb9507e8748c539c9f906cd4ff4642da9"
    "de"
  end
  language "en-CA" do
    sha256 "d9380f4284f4da2ecf427b172e32ffa09a6a3b949d4c0ca73033661294cc18eb"
    "en-CA"
  end
  language "en-GB" do
    sha256 "021a0d913e2ca7b1fb772035111721aa9ec1be86e38edace2774f681e059de60"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c08f5ece393f86adb9e648e905d9d9832d5b3a570e82ae29f05e05352965adfd"
    "en-US"
  end
  language "es" do
    sha256 "fcb8e677f8dcc267fb78cc4180fea0e0f0232d71993c38930d08a8f15e65146b"
    "es-ES"
  end
  language "fr" do
    sha256 "e4cb23445cc537ad9b6e8c49856effb0f6f0766407a1b9e445265edd71894fa1"
    "fr"
  end
  language "it" do
    sha256 "feb35357333fc8be6e53cdb167a7912bec386186f9a2827100940b0466a06d34"
    "it"
  end
  language "ja" do
    sha256 "09641dbe35aa1465606a1809d169006552e6e00cbac9ab8cea076f03d12f2637"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ea24d72e395125db23b09327067725910108dfe84862d7348a473b6564d0b18b"
    "ko"
  end
  language "nl" do
    sha256 "08eb1d5524679ee72fea6140cabc746d503dc8064122be3bf5a838291514bf1c"
    "nl"
  end
  language "pt-BR" do
    sha256 "387807b082888d2458344f2cf76e4b7afcb8baf12c5c6f8a805c12a499918726"
    "pt-BR"
  end
  language "ru" do
    sha256 "225d709a3a88ed8a39c54efb3c702d464cfc0f3b8506d8ff221e51e2c2e56f1a"
    "ru"
  end
  language "uk" do
    sha256 "1d3e53d923b068de1531143e1482d962c10643db4b2466e2ee42bec04fcbb796"
    "uk"
  end
  language "zh-TW" do
    sha256 "d04af5d804e416404335ad85f59aec69d5a6c456caa66dceccb4f483472f98d1"
    "zh-TW"
  end
  language "zh" do
    sha256 "869a2b41466430a122379ee97a43bf7cc51c4ab6f13a377ec9b8ec61c36fa0a7"
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
