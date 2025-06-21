cask "firefox@nightly" do
  version "141.0a1,2025-06-20-21-31-00"

  language "ca" do
    sha256 "ea7be7ad52f21e263a1780af9d3d779d28dbba20edf58d4ed64daf9c32b5c882"
    "ca"
  end
  language "cs" do
    sha256 "8220fd55d80cdb26d6e2a23a18dda8c6b2229d3642e8408ef1bb729e074d29a8"
    "cs"
  end
  language "de" do
    sha256 "dddc0619a24d6e480769cc036dbe2799afdd6a806f81fbe51316a0d7c4416784"
    "de"
  end
  language "en-CA" do
    sha256 "9e7e21d3b1b9124217965fb1f2892b151d0b0dd705117358a86e1d101297fb90"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a57bb1e3de4e78ca13064decf743c645561d7e8ef1b91ca85e3db088454874db"
    "en-GB"
  end
  language "en", default: true do
    sha256 "abf1af062b3d515d7798542b72fad129d9d2d15c25f9c0a89861ac057b6cbc7f"
    "en-US"
  end
  language "es" do
    sha256 "22f54172f569f08337d2f0a47a2559d0ffe0195cbed794242d4a4e104260b9fa"
    "es-ES"
  end
  language "fr" do
    sha256 "d2ce85b8b2890e49e67792835544ad6956caa718f400c0575b390861c04c3c54"
    "fr"
  end
  language "it" do
    sha256 "65d856d65db19a1212abaa07288b70b9395c6d7f48ddb478a183d882e9e86db4"
    "it"
  end
  language "ja" do
    sha256 "32406996da5879cc8858085d0561c36856972e90a4c23812d57ae7bc6d7cb6b7"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "81813b67725eb128870c36508be23f399f87df0de669fc5441896d9a0f8f27fb"
    "ko"
  end
  language "nl" do
    sha256 "2cc384304ea531ae479e6d443da324d65386563357abf88fa6c091e30d264ab5"
    "nl"
  end
  language "pt-BR" do
    sha256 "059e454d8d2a2d5499cfdb91af8b4748e0ce73cf50dba26003b55faeb4d32d8d"
    "pt-BR"
  end
  language "ru" do
    sha256 "14eda115b68bf72e75527a3544c2ebc31506ac83bdbe804a184b25abeb414b2f"
    "ru"
  end
  language "uk" do
    sha256 "60c21f88d65b6fe9c9350401056b678407b7c7de9ffe5d41ed0e42c7eafc2516"
    "uk"
  end
  language "zh-TW" do
    sha256 "1dc82e8b608983179bd23e64298878574ab0b42699e228767ff48cb61ef0f112"
    "zh-TW"
  end
  language "zh" do
    sha256 "e5e493500bb8013929f08889ae9965c4c14094a4a4c53e85af4322a6a5bc979e"
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
