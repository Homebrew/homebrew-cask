cask "firefox@nightly" do
  version "153.0a1,2026-05-19-04-09-44"

  language "ca" do
    sha256 "04f1d9e79e91bda7f076390e0954f4b1120d8438ede3db7c3a4252e9b73c8f12"
    "ca"
  end
  language "cs" do
    sha256 "0513a0bbc8904f57731aaefec45bbf2177d531758a209527ac65d1d2b72d84c0"
    "cs"
  end
  language "de" do
    sha256 "87545f3f81ea36b1f099ebbde26fb949d4564ab8b9a577d7ab15052e014a2255"
    "de"
  end
  language "en-CA" do
    sha256 "85628fba1489447a2ed97a0bdc3951d7c5eaa29b3c1f99597c0280aef7e6a8c7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4da3256ff467adee05bd7b22eed7064a1cb7264e45c94b01c63cf2b5375f3862"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9d24e0166f3f7fd071dfe17fc83ea6d33ad36ab32a637df93ca40136710c7524"
    "en-US"
  end
  language "es" do
    sha256 "b24a419bbd98e77c3979f9a04cd7c96f9f75e5f8e31fd3c2e7e2ad02715bb1e6"
    "es-ES"
  end
  language "fr" do
    sha256 "8412039f51b2ce5ba579262a5380d5b9059fd60ce06eb5c42753102d2431e8b7"
    "fr"
  end
  language "it" do
    sha256 "6cb596af3f296e8a262fbdb21c36ad7bc426a2f554a629f0efa4fba352101f06"
    "it"
  end
  language "ja" do
    sha256 "361e3dd8a099e639bcd61e8816bbc9002e7715c2400521339f3e64f312b4ec9c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "efefc357b69943cfaa29dc415a289d9c3695e39ef15045f690b4fba97afe7159"
    "ko"
  end
  language "nl" do
    sha256 "41d4610ec14cfd43f140205dc38ab2fd55e50b054bc47ee97ee8bf74a066abd8"
    "nl"
  end
  language "pt-BR" do
    sha256 "688b2a12002303f79c5d26755d179f7bbcb13fb261453b7acf66c2ef17857ec3"
    "pt-BR"
  end
  language "ru" do
    sha256 "1a08d644258ea3e74999679eaf9499b9940b73e17e7e75b5b622524685415763"
    "ru"
  end
  language "uk" do
    sha256 "dd80e1ccb365adc3620fb2c8d8ac0fdce04d4b03756e7c3893b26afdc1b65a4a"
    "uk"
  end
  language "zh-TW" do
    sha256 "e68bcad2c9373d52deb7c6edfcdaba1167c5c360fa98e723c818666d727d1a50"
    "zh-TW"
  end
  language "zh" do
    sha256 "1a642b207b7c543f04f604750445889909de47c828658009da5fdb3dbe71d02c"
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
