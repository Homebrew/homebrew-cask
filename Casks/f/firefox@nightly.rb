cask "firefox@nightly" do
  version "145.0a1,2025-10-06-15-52-29"

  language "ca" do
    sha256 "e3f6ce62c7c86ff2711f176aa2b63fd4b411441990ac34523345ed52c8aea87c"
    "ca"
  end
  language "cs" do
    sha256 "164551eea99d7c3926abdddb7961ae401edf24c4248b9edc758b43a178d93cce"
    "cs"
  end
  language "de" do
    sha256 "25f4f950c75a54c3dadc0747895b14208cc670ce944d5b2201a9b37aa6536012"
    "de"
  end
  language "en-CA" do
    sha256 "e7e5a3e433d9804d84314935c3024ff1b69fab7b609884f21634cc3231e592a2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "77441f05a5ff21bbd592fa8cae2f4acf9785843b53f88b6dfc0652d723cbee74"
    "en-GB"
  end
  language "en", default: true do
    sha256 "97e894d7fe704384a8b8ddbfcdaf3797033b50708ff87bf40b0210f04a7c784f"
    "en-US"
  end
  language "es" do
    sha256 "2ddafdaf0bda91fbd7a74b2d0712a303e0f29ecfd7a5aa66cf7dd24b7f306f8f"
    "es-ES"
  end
  language "fr" do
    sha256 "40d94cccfef0df28fd2d3db284fe2fc2f866aa0172fe642d2d7770eb2e14cec7"
    "fr"
  end
  language "it" do
    sha256 "88444048484f663e98530a616681d692a8217059f4540c55a54dde857c82d7f9"
    "it"
  end
  language "ja" do
    sha256 "fe299f0534f990bca466322b308ed983c34b528d0ef8722aaf65e648e66b7ed8"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "54562eb34db245d95e1a708468a56680699acd5503a902c0f8fee743979e62cb"
    "ko"
  end
  language "nl" do
    sha256 "e029a2ae0e717d06578ec03115ba8bf32db97337f9474aa4d66093806155eb4d"
    "nl"
  end
  language "pt-BR" do
    sha256 "ab5dd74425f06c3b932841ff01e9afc23522befb9d4d3169b360b21df5908a3c"
    "pt-BR"
  end
  language "ru" do
    sha256 "4ef1a017d8291ea5d7419435f11657f4661ab3ceb81e954e5e8a43f23bf0d9d8"
    "ru"
  end
  language "uk" do
    sha256 "1fd09d0243ee83a8154de458179e4fa6c189760ed8fbb292c24f1475b7817aef"
    "uk"
  end
  language "zh-TW" do
    sha256 "fce334d14e4f7e0428a87a5bf1f9f53363eac73ad1c2ca7d49f144858388a6a6"
    "zh-TW"
  end
  language "zh" do
    sha256 "210c1c791a29017939c27741a4a521e41ae1d7d853ac247e9bfdcbbc0557432e"
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
