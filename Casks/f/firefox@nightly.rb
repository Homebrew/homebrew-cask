cask "firefox@nightly" do
  version "144.0a1,2025-08-30-08-37-07"

  language "ca" do
    sha256 "24884050eb361f84c83503c54f43a5b75f9c4cf99c35d9d89dce085eb0a61f18"
    "ca"
  end
  language "cs" do
    sha256 "2188c26342deda4ac03dc4e4be0fe22831416a0c6df434b4a27979bc20d29e41"
    "cs"
  end
  language "de" do
    sha256 "6132d57565a435aa5a79f26177506d07cfdc1af596fda1cd1752ffdf22ad7e61"
    "de"
  end
  language "en-CA" do
    sha256 "fe54c373c2d162bf460eb0e491eb59e3867e9200edb28d7c3b78d3b5684ee9d5"
    "en-CA"
  end
  language "en-GB" do
    sha256 "530f64e345a1101a735ac1052b048f408b8e3b077e601710147a6413971ed8a6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "078fb8afff5c70aed77f26afce168673982d4bd9fd477a7e808d7ab511449776"
    "en-US"
  end
  language "es" do
    sha256 "78dc93695e0131ca9fc6775ae1263ee53ee984f00fed451c50a0065e9acde71f"
    "es-ES"
  end
  language "fr" do
    sha256 "febb49cba6bd26502cbe89edcf411580bbb69e3a6fcb20bda9021612829ec25d"
    "fr"
  end
  language "it" do
    sha256 "e98856ac88fa57f7a453457224cfac015150338bf16dd6a81ac2ef261b5cd244"
    "it"
  end
  language "ja" do
    sha256 "321edc459375db668f3b6a11b5a8afad78310ebda8cb1935cac948a88524562e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c991961cf8471831fd153aee175e53c74d6ad4e64023a3d5320f3ad49b506d49"
    "ko"
  end
  language "nl" do
    sha256 "78315101b2952c7a337e1b783c62fa06cea031932b30dd589378194fc786e19c"
    "nl"
  end
  language "pt-BR" do
    sha256 "e64d7427e53c1e09c2ad40625cc3d43fae5039857a4f3de328e981c067ed222b"
    "pt-BR"
  end
  language "ru" do
    sha256 "f3d268dffba55bd50e7b93b2ec73a43a47c2921f3ecaa0f578e0dfbfc4d69133"
    "ru"
  end
  language "uk" do
    sha256 "b7074fd716c48fb99f6b80f45a3fefdf3b441c85fbdcf5d0564136bbc98c5d5a"
    "uk"
  end
  language "zh-TW" do
    sha256 "d05da69321b8753a0f2b02bcd687eec71bce9810e937e0b7800b684a78c3bf33"
    "zh-TW"
  end
  language "zh" do
    sha256 "b4e1f4498da02610eabada03e1dc59913205ce76924337c419fe9fe5cbfe0db9"
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
