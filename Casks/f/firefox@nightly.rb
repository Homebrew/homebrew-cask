cask "firefox@nightly" do
  version "147.0a1,2025-12-07-21-28-32"

  language "ca" do
    sha256 "ba72fb9e04e5873a1348243eb397f270292fdef968cd67853401552ef49e2b58"
    "ca"
  end
  language "cs" do
    sha256 "9faa69269b7678107fee391e8a63b3e84a485d1e54214213158521de24e77ba6"
    "cs"
  end
  language "de" do
    sha256 "6bb8d83055bb4595f8b71f2115f8e124ea4a93ae821490ab7cb0459c6a290343"
    "de"
  end
  language "en-CA" do
    sha256 "ba82c5794f102ff4c97f212336810f11e25ec26d61afc3a0a31ca0e5ac09fbfa"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a03b62012b6a36b4203f08e9e4f91977f60b4ec6e0b7f1987061b5bcf22febfa"
    "en-GB"
  end
  language "en", default: true do
    sha256 "34941f6e3a4ea5853ff1b6600b0049674f6e0836d8e5a743713313c35db849ce"
    "en-US"
  end
  language "es" do
    sha256 "f4abf576a4d2a1179f39cc000de63f5d8c85c38654cee348e7a83c82438d50a1"
    "es-ES"
  end
  language "fr" do
    sha256 "9d7d1bfe7813b2967244db923f3bd6286a530690c2d4c18d9623b4ad63369369"
    "fr"
  end
  language "it" do
    sha256 "1c549ddf19f8ce1a3d9e858d4d8b1593f15e1c5e2d886ec5ab57e146f3380eee"
    "it"
  end
  language "ja" do
    sha256 "198891c23cc0f9d3a7acb1696fac1f4c1c05817db17a1e3819b09dee1f28d14b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c55ca06a7b115a74c41b53675b59e3548ff627a5da938ba664170b78a54d8364"
    "ko"
  end
  language "nl" do
    sha256 "a765f8dc56412dd33403d25544ec006809238d0711093209a8aab583cd4eece1"
    "nl"
  end
  language "pt-BR" do
    sha256 "5f2833cdaf31824c5fa62867aab76206dafbc55bbf296202d7e46f6af859be69"
    "pt-BR"
  end
  language "ru" do
    sha256 "fa36b53bb811107ab043e97305cecb32065742dc457bbde8bd8ec3c9beb3472b"
    "ru"
  end
  language "uk" do
    sha256 "7a6eb2ba2f1aa3d120cc69159fd89d960e2a78d94e5e4feddb73c991bc16291f"
    "uk"
  end
  language "zh-TW" do
    sha256 "9e5304b66600c5a171e27b6bef9d8b0458157935c173b92e230d8a986df51986"
    "zh-TW"
  end
  language "zh" do
    sha256 "4aae35a9b4f1fafa5f2a2275be308087b98fd2f27067db5b417190ad45e9ece4"
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
