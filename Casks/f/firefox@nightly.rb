cask "firefox@nightly" do
  version "139.0a1,2025-04-24-09-21-26"

  language "ca" do
    sha256 "b44029ddcac7bcef8cba85f57f5dfaa9b4711793b46da15b7d232dbef760daff"
    "ca"
  end
  language "cs" do
    sha256 "e5e86b621b486feb53b7653d46c04bdf14d6b8cdadb076c631041625c37f52a7"
    "cs"
  end
  language "de" do
    sha256 "196635d2e18428de179e141c18c3d2717f9c11a9e1610aaf1f2970e2c360a2df"
    "de"
  end
  language "en-CA" do
    sha256 "aa0cafaed24ee989865ece965be8de208cdcc960231924765424652bf3a4d2a9"
    "en-CA"
  end
  language "en-GB" do
    sha256 "9e555c1104c9541d13b508d055b27b698a7a2a65bb3fef7dfc1b5141f99e2beb"
    "en-GB"
  end
  language "en", default: true do
    sha256 "032d3d3f18bf85744cda255e7dc005504b6162c162d32f13bf07f3bfc42b48a6"
    "en-US"
  end
  language "es" do
    sha256 "f39e9ba34dc87d57bf5c5bfb1c08184b9550a1c16da369d3757a0dc83d52fe56"
    "es-ES"
  end
  language "fr" do
    sha256 "3deb709672627f29ac93865640937f1a8f37f6db921be69e449820ab7cd91d81"
    "fr"
  end
  language "it" do
    sha256 "5c39d908c0cecc771d7897c3e119581421bebc630e1befe990bdb13e57789578"
    "it"
  end
  language "ja" do
    sha256 "5e69877435319ae50d8bd3b236dc3b12cde8b3d184d7038f3e301a76b56ba00f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "03150472e08b494328387cf4c0e8ceec9a430c0589fae842645ec3180b9b6a6d"
    "ko"
  end
  language "nl" do
    sha256 "b8bf17f363f5a465011430965a8ebe7dd8f1f025963d598822439ef9d7df7104"
    "nl"
  end
  language "pt-BR" do
    sha256 "db6fabbb3b9b76e77d1c7f61efc26a34859f9e20230c76f92057864234124b0a"
    "pt-BR"
  end
  language "ru" do
    sha256 "3158a163be48b8b85d987f43d947103b0eb6ca30410c1cc254b31630f817b7b3"
    "ru"
  end
  language "uk" do
    sha256 "493567e3367f7f2a7513d2c3225bf37a3f3693fb3569164a6f943e9114c75fc4"
    "uk"
  end
  language "zh-TW" do
    sha256 "d1c2ef2dd30916923a3f60bd3adae7a717aa8748d3bc072d0699bb1d7fe05b82"
    "zh-TW"
  end
  language "zh" do
    sha256 "bf25db20ac6d0ac2628563d9b28873e818f2f73971591064a8822a25f4719bfe"
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
