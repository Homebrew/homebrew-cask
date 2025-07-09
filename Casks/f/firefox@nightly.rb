cask "firefox@nightly" do
  version "142.0a1,2025-07-08-21-01-38"

  language "ca" do
    sha256 "fb251ae5681872265838215417dcae092757c54303ac7330e676757e1363f898"
    "ca"
  end
  language "cs" do
    sha256 "141d3d31c34658753ec7b19b72b5c388adedd87c7f922480bc7eff9a8496c7e5"
    "cs"
  end
  language "de" do
    sha256 "9b2e10df92b2a7f6d661ee8cba0031894365b389a02d44c48c34c33d1cb1fb77"
    "de"
  end
  language "en-CA" do
    sha256 "e3e08ed2b6ce1e931121dda395fbc36c8136ffc7dab5a9ba5018bcd15129132a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "68fb2c52ce8a5b64b866bb05e6a4dfb589df7be9a007a79b191f68e7dfd4e211"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7a47adf2aef0c37762a67f57fa2e906ab9096854e52b202a2bbcdb1884cc709d"
    "en-US"
  end
  language "es" do
    sha256 "24fa44a30fa0083a903fee2b1d05f755f938bda1f58afbc83e88e694ab965e54"
    "es-ES"
  end
  language "fr" do
    sha256 "e50257cd0a9a18569b78c14efff08af12990d14955a18fc53f76aa4bfcb3390b"
    "fr"
  end
  language "it" do
    sha256 "aeb0e38bf4c0d6a355151fc293842a3b0c49fe979ae6f9c51186b422fe518c0d"
    "it"
  end
  language "ja" do
    sha256 "6ef613dbbdb988ae3f67fbcb3e15aca6c6d43e68858ca22a066ef4463a84fe10"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "3af9f4ef224887aca42b2decd722460222935d7f541e6edb639bac56ae81f0c5"
    "ko"
  end
  language "nl" do
    sha256 "bf5cb65acbafc312f17cf41f3d5fd7b281ef9e70022c30052bba776b7da62726"
    "nl"
  end
  language "pt-BR" do
    sha256 "e0ac9443800a239417a638611fa6945dac39c0ef92750cbfb3a5d53fa1454614"
    "pt-BR"
  end
  language "ru" do
    sha256 "35720a415b2ebd741830ac5cb757ed068f1f49acc8128ae1f513718cc4947fdf"
    "ru"
  end
  language "uk" do
    sha256 "5d8edd5eff90bd23f5d18f5e6a05f7ddb67bcba69e8ce47383cd904050309606"
    "uk"
  end
  language "zh-TW" do
    sha256 "3fcaac601b36cf2644fa8afec3a434b5dee938dcb610a5da8a33d8f45264d20d"
    "zh-TW"
  end
  language "zh" do
    sha256 "89ce757d0ea0dbc55559568383ecd3b994ec6b95bad35eb29a9c6bb62bb24ac7"
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
