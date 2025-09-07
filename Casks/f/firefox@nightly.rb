cask "firefox@nightly" do
  version "144.0a1,2025-09-06-19-39-53"

  language "ca" do
    sha256 "ac536d7b27a7e277a5ae60bcb49c0d4a99d21a7138ddcdf2423d64a0ed0342ab"
    "ca"
  end
  language "cs" do
    sha256 "9c5fa7c186498f7bf1ad9cec7965968daea49631037c974351f4db2e7b309a8a"
    "cs"
  end
  language "de" do
    sha256 "2fac4bb1b6d09fa39df5a97a5268433403f1a8e103ad9279eb28ebb435d11b81"
    "de"
  end
  language "en-CA" do
    sha256 "9c9e3242386aa6917c6db36b13c4b7656aab6a83c46ad5835602ec1a774ad7ba"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3ebbdd3daa64c2ab76dab439b5466acdddce69f125f67f9a96bbd510e25d996c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "adae293bc20ac668035aae42ee7da790d5bfeafb1c907ff2b48e48f08e1d1abc"
    "en-US"
  end
  language "es" do
    sha256 "3dc199251915859793b8102096f17734f78290e988856a7e41d5421e81504d3d"
    "es-ES"
  end
  language "fr" do
    sha256 "1fceb9228cabdadb3cb76b3b6c44e1bbc2e550bbae35ef7e1bc2fbb90781b29e"
    "fr"
  end
  language "it" do
    sha256 "d7d1c7532950afe4aedd7ea9a4b40616fc128f07c201a8c95b4201ca43396527"
    "it"
  end
  language "ja" do
    sha256 "6f33b241f662d4f8f3280754330f5c066d765c3ecaf03d4851ca185e939dc2c5"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b8577109a519dc5270af70cb1359e6261545848c2a56a75a7fff167bf7425a21"
    "ko"
  end
  language "nl" do
    sha256 "6366f68ba4bdadb6113d60f6dd86e8e2e3478f505115b20c33c7215743da0a7c"
    "nl"
  end
  language "pt-BR" do
    sha256 "31ff111bbe5b885f46b0bd40ccdf547f8a20a888dfc82855c3d0362b04dbaaa8"
    "pt-BR"
  end
  language "ru" do
    sha256 "69398678c411a030043706cc7b11017a1182f1f7dd801977c52a2ad7f13c3b6a"
    "ru"
  end
  language "uk" do
    sha256 "90d6a8e3a5983ca09b1b11fd987799729cfbfcb2f310fce0c55ff8b7a578c6d8"
    "uk"
  end
  language "zh-TW" do
    sha256 "0e0de0db1abfc5b144413eca89bb0a3640429d2ad1c8dce14a4ae6e885f9a6c6"
    "zh-TW"
  end
  language "zh" do
    sha256 "a9b79b96bc60a8b72958f75044aa3c98186c5e769279f339c1acbcf24e32e910"
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
