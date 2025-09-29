cask "firefox@nightly" do
  version "145.0a1,2025-09-29-08-15-33"

  language "ca" do
    sha256 "3191ba6ba10b9eb867fc9861bc1f738a3eef5bcd82ea935a1b74d6253eec1bc9"
    "ca"
  end
  language "cs" do
    sha256 "78a4360f664bbdc9228ca3b2cf5c4b51fbef548697597fe8595d5317cd6ed54c"
    "cs"
  end
  language "de" do
    sha256 "db911918542c99e6705894d341b0f05e432d2e7d1119d1745f173e0d284d4fbc"
    "de"
  end
  language "en-CA" do
    sha256 "c3ce0a6b0820ab1d99426e73ffb8fb6159c538f5e35b98562e1ef53e1aa5b5d8"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c505acbcdf3a619eb87e71ec1751bec70352de01c00cc71dfc84c15647d8a541"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fa46506c9f00a6302ee1f1a6fa084aa631c35d97a9455fe9838b414457c2769a"
    "en-US"
  end
  language "es" do
    sha256 "5fc3f88a4297394dc87017927fb306befb54c767cd62705fc8330bfea70131a9"
    "es-ES"
  end
  language "fr" do
    sha256 "f49db8d0b9672108633e93b0cf91b1f9511065395966ae7e3709af522f54dc83"
    "fr"
  end
  language "it" do
    sha256 "85e677d0a877cd084530e455fd7d42992fbd921d03452ed9964df4e52c4157a7"
    "it"
  end
  language "ja" do
    sha256 "3605eee540b9f01bf673bce9eac379b91ee3749ac0130f1f5146eeddf2cb987a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "239e6926bc448370851b36ab43321d5d4f3a8618417685f6d33e6421be2532bd"
    "ko"
  end
  language "nl" do
    sha256 "65089b8e1954f4a87be59e9165ab88d97561001b0d6a437629286dbfbda9ebe0"
    "nl"
  end
  language "pt-BR" do
    sha256 "6175c0f9a0c58969990a7c09afc1fc219246548f3e06ae4cd5118f08d019f9d8"
    "pt-BR"
  end
  language "ru" do
    sha256 "199192a149fab4082f00077ac5a00e615f9c4e93ea20f19266fd71ac72e9f4d2"
    "ru"
  end
  language "uk" do
    sha256 "568b2f1cfb9e7df6593a73c222e29c20af2a8d0c11560ab06ed66fba5e7f5fde"
    "uk"
  end
  language "zh-TW" do
    sha256 "316ac7d626a0bb6f3bab6e258fa93b4ad187f6648a9ba69e9113e1090770ac36"
    "zh-TW"
  end
  language "zh" do
    sha256 "300d12558cde6396af53b63bc09f545dffefb334a32d0dbe7680e1f00089c1d7"
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
