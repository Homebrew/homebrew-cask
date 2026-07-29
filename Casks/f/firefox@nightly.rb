cask "firefox@nightly" do
  version "155.0a1,2026-07-28-21-43-28"

  language "ca" do
    sha256 "b05f89502b1b690bb8ba339ed1cd1b9645c84f23c39cb6a85355c67e0dcfdf67"
    "ca"
  end
  language "cs" do
    sha256 "287a26f8dc96eab88f90c52735947a9d90b9d58a2bbed47a912bd83ac9cf284d"
    "cs"
  end
  language "de" do
    sha256 "c9253602fc2e840d566c02550fbe0130e6b63c354b430401d5fd37b374f3e8b4"
    "de"
  end
  language "en-CA" do
    sha256 "c5f39aba72a9d8163a7b8efaf81b359e58a1c11aee51e1d414f3db2022e99dc2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0fddcd6014b71378afc2238e19b79201e8381e40f189b0c04d4562e71953ec09"
    "en-GB"
  end
  language "en", default: true do
    sha256 "577d26e89ceb203d6f1a97003e4d95340d2c567c30bd0cf2e3a098c184938615"
    "en-US"
  end
  language "es" do
    sha256 "464cfa130c4a15af5e071268a780acd9b05b43f3b169a96e2c70fb728be09b09"
    "es-ES"
  end
  language "fr" do
    sha256 "cfbac8a8e95c520e276d9d81703eb7446c6c8948386007af64556a5fae2787a5"
    "fr"
  end
  language "it" do
    sha256 "ba35134cb64beb2171a91fb36f994004f666c8a45263cb0c309b8e6dec96fc85"
    "it"
  end
  language "ja" do
    sha256 "4987abfb27a6ce18dcc2fe18c513150230021503c264e3f429d2f39afa7b830d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "6ef7c6f700701a980faab3e0ccec7807460260dab173636087bf72a78e08c411"
    "ko"
  end
  language "nl" do
    sha256 "34208e9fb936c36d0e727a85ad05d78f2c3e0bd4b1485abc5a85cb02ba7e227f"
    "nl"
  end
  language "pt-BR" do
    sha256 "6d8cbbbe2d326abd64ef829da232db9ff2d19aa364ce12fd7d1b766ca05e3a43"
    "pt-BR"
  end
  language "ru" do
    sha256 "012cd827c7c49f5ed43eaeba13a0e45bfeeb6bdecec54d13358146e5854454a6"
    "ru"
  end
  language "uk" do
    sha256 "221add7c06740cfa42e4ac5c7ed88137a491b15c6fa93367b8e1f1ddbd4a5e4a"
    "uk"
  end
  language "zh-TW" do
    sha256 "bc086f857a4f5eb35ab651512435e4da3180c8036260e58f8321f43d5c5236f3"
    "zh-TW"
  end
  language "zh" do
    sha256 "393bd227ac70d097efefd4b1835b5d3a1b32484c1726cabafae993fc23ca56ac"
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
