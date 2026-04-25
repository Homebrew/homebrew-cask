cask "firefox@nightly" do
  version "152.0a1,2026-04-25-09-10-49"

  language "ca" do
    sha256 "8200fb9362cbebdeb07d7acd37b2b2eb053ebb294f2f7e69ddd75be4d52de31e"
    "ca"
  end
  language "cs" do
    sha256 "98f05d1b595d76fcc7f256108e9f630e763e1e40843250c13b1b83fdaf27a4ff"
    "cs"
  end
  language "de" do
    sha256 "d8d56a39b52de28d22a8a898f301e4fba513934a9b720c2e94cd69648388b016"
    "de"
  end
  language "en-CA" do
    sha256 "4883f2b1cdff503dcbd6c4db0a9599145b157e397a89e847c6cd11aaa6d77118"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f23539d306056cd67bd21c4b16e6aebdb1048a1650909b9f5a06905f28f7bebf"
    "en-GB"
  end
  language "en", default: true do
    sha256 "581bf8abf9ea051759d9e5efa86d73e7814042a262d2fe56a5b199289f596068"
    "en-US"
  end
  language "es" do
    sha256 "65201d674f8c0ab8ee3626bc95b59bc937d2c3d322db4e2c11da21092fbaf98c"
    "es-ES"
  end
  language "fr" do
    sha256 "324cc52e7285f466349a39340cbc8481012d65d2db47350039869bc877dc7df1"
    "fr"
  end
  language "it" do
    sha256 "ddb8efb16f88f4085c875ec4887bb990bdb606bb6109b8d911aebb3f273ace96"
    "it"
  end
  language "ja" do
    sha256 "285ce36f8fc9ad48e3519c5533817bc4a168e070f3749844d358c2cdf0a64c61"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "5de2d1667979b5d186c9f26316061be7ea3007a65a63f840805f7450c872e7c4"
    "ko"
  end
  language "nl" do
    sha256 "eefb3f55f07b10f301242079cbbd66ed266fe7fd9cb0d1cf3ea38c2a05cc009d"
    "nl"
  end
  language "pt-BR" do
    sha256 "6bbc368b3ed15fdf903eecb9b04e93eb0e0aab23c1c5cba9b8ab1f6211aed55f"
    "pt-BR"
  end
  language "ru" do
    sha256 "90d57fbf3c116958242b5365d2b73eae2e5c435ca64bb66189729c8abda11a9e"
    "ru"
  end
  language "uk" do
    sha256 "5dc621ef8ea52df5a52d9208a5fee50dcef2b63209953bf2596e4285b3708010"
    "uk"
  end
  language "zh-TW" do
    sha256 "3fe8b9570312ad833e69ecab8bb975ca58c66b9d4e6dcc51c78ead7f2f0278da"
    "zh-TW"
  end
  language "zh" do
    sha256 "307ae7dc78c93cc02370e94c89ecff5c1870c9cd7058a9b876f924ec7914246c"
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
