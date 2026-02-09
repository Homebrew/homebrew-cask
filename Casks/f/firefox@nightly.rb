cask "firefox@nightly" do
  version "149.0a1,2026-02-09-09-59-05"

  language "ca" do
    sha256 "870470b3d0e5d8b2beb77315735eff295bd200918694af02d91c65499c14b27a"
    "ca"
  end
  language "cs" do
    sha256 "f2a5dfddaa0e082eb9f6f8390ff4baeb69047cd56e0b0c892ce4a052178423d2"
    "cs"
  end
  language "de" do
    sha256 "804ba30f7f6cf3a6b51ca2ca6d8ebbbdca00f5f06f6fc225e4c25de21a03645f"
    "de"
  end
  language "en-CA" do
    sha256 "6ae7e6c60c95fab8f2c965a40765920483862f4e7bde55bcf9e2f3aa4e47098c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f818efdb21b128efe0e657386502126179c8438a738fb563f81001007add8167"
    "en-GB"
  end
  language "en", default: true do
    sha256 "61a86a150bb414437451fe5872c290b0630bd88cf46142e5f0671b5785a6c577"
    "en-US"
  end
  language "es" do
    sha256 "86746ee8e695009f8f07bafc3f511544a63d40374f67b3caab5523a4a4d9e4ab"
    "es-ES"
  end
  language "fr" do
    sha256 "3b7de3a5b32fc75c70f1cf8420bfde4f342f3729135e9660d12101a216089623"
    "fr"
  end
  language "it" do
    sha256 "9c930326895bd892775be6f2f13d8fe801fca3b3ae347ef5383aee5d8d730ee5"
    "it"
  end
  language "ja" do
    sha256 "51de95ac9d54528588b55a8a058244b9f6624f05ea1093d2ae843fac0cee0db0"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a69ea086601e64800810a1397eb1c8a6503230083cabfc08be412df3b2aa1cf6"
    "ko"
  end
  language "nl" do
    sha256 "e01b5096dad66c6002fbd970c0185cdba7234436d8c9769c668f396fb22af2b8"
    "nl"
  end
  language "pt-BR" do
    sha256 "e186c52f2744bb9ae8ae97ce424e13ae2d0cd6b975607f584f36e40c780f81ce"
    "pt-BR"
  end
  language "ru" do
    sha256 "fab87ca6f188a637a847a80de049d5dd9de02ea1f59a418fad28e9316fa96ca0"
    "ru"
  end
  language "uk" do
    sha256 "654dfb1fa24e4f154f59e119d61d6eb266bf960f74bf31f4bd73c660f1064485"
    "uk"
  end
  language "zh-TW" do
    sha256 "fb3a6caff28271280f5d2f22a0ffefd47291f14d6a17480c074fc402e53521f7"
    "zh-TW"
  end
  language "zh" do
    sha256 "bb997ae3c33fabe95ed62f906b6990a1eb525e69a52bc345f8a193a93db9a9c5"
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
