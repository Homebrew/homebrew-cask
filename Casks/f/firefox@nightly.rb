cask "firefox@nightly" do
  version "154.0a1,2026-07-17-09-27-13"

  language "ca" do
    sha256 "44831677f748ae86b8c61cacea27df069244f4d25d70c4e2f72e1f65c5070bfe"
    "ca"
  end
  language "cs" do
    sha256 "6e43b66e18ec5cbefa93547e75195ce71b003e088412b89d561628656abc2bab"
    "cs"
  end
  language "de" do
    sha256 "bc9a52aac6b4a73e59598d387c7a608e95882d89f3a11fb131b4b63d070c8a36"
    "de"
  end
  language "en-CA" do
    sha256 "8083fa5fe33fce6bbd26043a5f16819d7ca32cb91c1b2ecb356f2cb7fe311980"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7efb04a8298d0c87e9123b396e81cde8e2c9ac701856d15cdfb144e7eaed6806"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d2e4b8ce0eb19a9d5c99c86bf0b0c660130e4b3357e056da92844c3ce47bb982"
    "en-US"
  end
  language "es" do
    sha256 "43501b5f6fe139f664e3245e86bb6165a24c8c27f9e677fb6337a7c1e1b6c92f"
    "es-ES"
  end
  language "fr" do
    sha256 "06cc69d23417e921b71d5eae79666f800baf2604cdc7538e3f759fd0ea35cb3d"
    "fr"
  end
  language "it" do
    sha256 "ff5c9cc4d672440a9ba40653839de7700ed18db39a68f4fa2d8180ba59b61e33"
    "it"
  end
  language "ja" do
    sha256 "a68f3c20a2cde5ebd7f8050e4404a5925fcc910e58b50aa4ed386d3026aa7ddf"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "49bfbfb3da3f3f73626010250ce93dfb9ec25833e88371fa6195a675755556c5"
    "ko"
  end
  language "nl" do
    sha256 "672ab630119bdfab0592d23c7c5d7bbddc02bbeceae70f5f59fbe6d34fed682c"
    "nl"
  end
  language "pt-BR" do
    sha256 "9582b4121189ad87c0525cb3e2dccd5b872966e6a78b1512c91be433a9fda4de"
    "pt-BR"
  end
  language "ru" do
    sha256 "16774cd2033356c325fbfc1c526188f6ef66dec27a1454a09012d7f7448935d7"
    "ru"
  end
  language "uk" do
    sha256 "ee972b2d5fa2dfd41366aeaf8d2a708b9cc1504402bdf3117027dc67c2411213"
    "uk"
  end
  language "zh-TW" do
    sha256 "ef458fde1f1fa09f2b891b23618d372729918cab3107c15f74c0d792ff9ff199"
    "zh-TW"
  end
  language "zh" do
    sha256 "f8e2076c884c97e51af4f58b0ec2e3f16e24de515f3e552c751e1534490c6dbf"
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
