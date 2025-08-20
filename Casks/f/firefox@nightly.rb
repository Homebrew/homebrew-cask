cask "firefox@nightly" do
  version "144.0a1,2025-08-20-09-57-21"

  language "ca" do
    sha256 "1b4bb9ebe008a855352dff6f00d769b4047145eb2cb68e307694fc91a0aa8abf"
    "ca"
  end
  language "cs" do
    sha256 "4dcf355196d3934b246cfb3fb8f8c99b4b7db2d2d4f25eb5026b177a45686aa0"
    "cs"
  end
  language "de" do
    sha256 "42d9feb6d9de7e87577ce6e5732b43a0c32c8e9cd1d7a093ee9cad00d4e0f930"
    "de"
  end
  language "en-CA" do
    sha256 "e554a65833d619ae80bee3324107cce6d6db3abeb970a799dda170a8ee75ce8b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6a6c19fc4f29a51dadd61ac1da3d0745c74bd4e8b0e98bef4b13e6076e5418a2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4ca969422baf4bccd97eeb3c0b91774efa711910ae865e98b502de39ddadf8b4"
    "en-US"
  end
  language "es" do
    sha256 "0f13815a055ba350c2c13f128ead4cde8644be7efcad358ccc067cd975d073b1"
    "es-ES"
  end
  language "fr" do
    sha256 "5bce1a3a2b6c59a9d9d65b341cba439e5660c7898181ec7834dcb4ef1ec34fbf"
    "fr"
  end
  language "it" do
    sha256 "be9e75f6b57e501f743a1261dac2530cb52b2648d513c78ffff6c2f281f8d7e9"
    "it"
  end
  language "ja" do
    sha256 "27181a297aa4ada78c826ea442f829f91a8deb3565657b5ee20fc72bdbd54ffc"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0d296ba448d1cada4066542ce59a7c963900036c8a00c505ac2ea4c198da4761"
    "ko"
  end
  language "nl" do
    sha256 "606b83c8d7a94b14417e0aedb441914a66260d891ce42eef68f433186e9b50f1"
    "nl"
  end
  language "pt-BR" do
    sha256 "3e86d6d999c979aaeba80298b8f747d035aed37498a9ea544c0c8c4fafe4f782"
    "pt-BR"
  end
  language "ru" do
    sha256 "9ccc2e3c015ae69d67034b2e0cd2314e4058b53e1f76dc21af1fd6fd05638d51"
    "ru"
  end
  language "uk" do
    sha256 "458cdb2dc46ce74cee3bd566f92eb15bf61b535d52efb9d2c122a9a4d106f047"
    "uk"
  end
  language "zh-TW" do
    sha256 "504421912cd4581dceb3c2779e7ac2fcd80141229e1dcc50f6b6b3dbd338628f"
    "zh-TW"
  end
  language "zh" do
    sha256 "566b27e24e12adfc94a5b7e6a6fc4e29436191a0dfbf95dd60a723030ced441d"
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
