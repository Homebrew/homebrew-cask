cask "firefox@nightly" do
  version "142.0a1,2025-07-06-21-38-35"

  language "ca" do
    sha256 "8d51a161d9e2288522f74e513101094c834939873610134fdd6d606afe4856d3"
    "ca"
  end
  language "cs" do
    sha256 "c22f56781dc843814a3067ddef771ee69a26bb86ce507755ec34b9bddbd2c9fd"
    "cs"
  end
  language "de" do
    sha256 "c0bd71dd8bbbd46f9c4ad0812fd838d0589b987b38b900a60487a9023194a6af"
    "de"
  end
  language "en-CA" do
    sha256 "39bc55c67255a8c03c7c7ad9565f9137ff3752db839d8c3992531962277403f6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "57a290986c05a30be5e6bea296240a5e6a59b606fdce620a5a1b65c1082ad9f3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e022281b0f34adf4634cfef89c5fdc5aa3f5f021f2b239f78ede97a0d82a994c"
    "en-US"
  end
  language "es" do
    sha256 "510a3a6c2874afc26fd0cfadc3b61f9f4520bee81ff8f441993e72e1ba173718"
    "es-ES"
  end
  language "fr" do
    sha256 "3d6e82e35d813366f56f10e8f381337d4c478334069c33f721467ba005f25561"
    "fr"
  end
  language "it" do
    sha256 "96d2e3f44c455ebfa5b41a60dcb9cec784c8a96d0a447a3f534a0a56973cd34d"
    "it"
  end
  language "ja" do
    sha256 "e5d2be128aff40f5b55c7210fd358a24f47c1117410f50ae7c78a172d29c2e81"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "12d09608ecab388a0343365ab65023341e0d498f869786612b855a87a001aa3c"
    "ko"
  end
  language "nl" do
    sha256 "064887b46546a360dcc524cd97b241e359e9c10007434551b094c4d291831ead"
    "nl"
  end
  language "pt-BR" do
    sha256 "a75f97632272b34b844fdb8d449ea07429dc294963fe18d2276d4a4f1487b148"
    "pt-BR"
  end
  language "ru" do
    sha256 "5010eec199593770cd4fafd23e01105caf1763cb436e1847a202dd20feba9b67"
    "ru"
  end
  language "uk" do
    sha256 "2e7e73c3fc27b488992443ed0ff9eaf87c67c1179de275d0f24da03c19528ef4"
    "uk"
  end
  language "zh-TW" do
    sha256 "50214a75155206a2a68a3b77ebd914ab433ab377911f5f59bfa911e977739674"
    "zh-TW"
  end
  language "zh" do
    sha256 "9e18b649e4c8342ca40c68b4e2ca258bb220c78638a32b0998f51b85ffeb1e5f"
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
