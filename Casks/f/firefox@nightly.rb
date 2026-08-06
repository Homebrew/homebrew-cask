cask "firefox@nightly" do
  version "155.0a1,2026-08-05-22-02-33"

  language "ca" do
    sha256 "6dbdaf114983592a9e566be6ba01cac3c7b5cf88605a3ecf90d89c2a13052b42"
    "ca"
  end
  language "cs" do
    sha256 "e164b90a5e5979e316d2f3fe9a4a950e504a7d8bdbe2f1f493dfd2fd94ebb322"
    "cs"
  end
  language "de" do
    sha256 "e10506549c4fe3aa4ace9b647446b7948ac67c825adc569a83dab86231ecb6c1"
    "de"
  end
  language "en-CA" do
    sha256 "75126f76805832d70e95881f054c26b9227d6a02d9eda2ddfe039ca0fefff4a6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "224dd0d51d66f6506550eccacd876795a0c972d7c98b86d5152dfcd76ddde724"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8d729129ba80fb4da6bc47b52fd1d42aaff1c022c3030df76fb3fe7fc5a38153"
    "en-US"
  end
  language "es" do
    sha256 "e5be17ce4f64daca88f309414efa45c6f48c009d9f384a221d27978046c298c0"
    "es-ES"
  end
  language "fr" do
    sha256 "ecfd19679c0f91bc02efc493d290a90e8c8b219ae5d70143507cb68d96ab22d1"
    "fr"
  end
  language "it" do
    sha256 "0c9eabf1fb16154345f7d3ed4dcdd4984a8a5f1523a632fbfc32a43b2dc099ce"
    "it"
  end
  language "ja" do
    sha256 "1df3ee10fe07bdcd03be8a79172f2c042f8110ee8a075142dfda80af09224289"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "131dc4c216aeb5cd434bb827f393ba54d15ab753a90cb716c8efcf1d9332ebab"
    "ko"
  end
  language "nl" do
    sha256 "c96cd71d77cd33a8b14f12ae92057f77c8ab21085ada9a59ba17dcefd6869349"
    "nl"
  end
  language "pt-BR" do
    sha256 "172dbaf943a05bee0ea3db205555b2fb2c8748ba2fbf1ed3e51725e6e97f3f59"
    "pt-BR"
  end
  language "ru" do
    sha256 "9f95bda4ac5579123e837726d48a0f6174fd4f56afbbb84cd07d17c1adce1204"
    "ru"
  end
  language "uk" do
    sha256 "81136e64fbfeb3810843bfefae04d6efe39022930e40b5826b389eac20bc9344"
    "uk"
  end
  language "zh-TW" do
    sha256 "9a4faa4a4a31c784b3442cb5ac2521c4ef2c0e9c55e5d7fed52d5ea4a2cd0ee1"
    "zh-TW"
  end
  language "zh" do
    sha256 "0ccb9a513bfe8545b1d74d2593e0677c069a08e6eb1c6ea81d38b410efe7bae5"
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
