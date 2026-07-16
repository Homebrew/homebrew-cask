cask "firefox@nightly" do
  version "154.0a1,2026-07-15-20-04-02"

  language "ca" do
    sha256 "7bc34db991530c3dd8aa6f2d21751763a5b30bc7ebedf19a6cf1d05ab8bd7176"
    "ca"
  end
  language "cs" do
    sha256 "feececd2530aa036a6057955c1c96f5762ebc28bb1ec1151846b0ad5c16fc2de"
    "cs"
  end
  language "de" do
    sha256 "da3e8f4ea2bb7697487209daffc2ddb46f074e7d7e32ca0ecdae874e199ff818"
    "de"
  end
  language "en-CA" do
    sha256 "bfff0f6124384c8cf055d1a22a6617028d1265fd792747ee2fb850cdbf6e2234"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2cfaad94be41dc9adb3cfd899b1af9b836db3a4c5f65a98d316cc578b673c20c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ff5a3664abb363d1394bab0c2a7b6719767a86987c9a9e2e641d46a445744f89"
    "en-US"
  end
  language "es" do
    sha256 "be0ea71cc30ce7e988c9e5f56adf2f3359765a2925c99446b42a2ae331f390af"
    "es-ES"
  end
  language "fr" do
    sha256 "5873e9812a9a52a71edf217c83410ed5265279280d407292eb3ce6e816cfa03a"
    "fr"
  end
  language "it" do
    sha256 "19d3fa66aea2f26f8491bdd583b2adcdf8ea82a92e750572e16bb59d1cb8e6fb"
    "it"
  end
  language "ja" do
    sha256 "cd076d364bc84dab9f73ac79d03b69866e8a79306dd6426741e34b22772a57ac"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c947c4e6944fd0e764f0cc7032db75ab95db5a751b206910bc9d2716de088375"
    "ko"
  end
  language "nl" do
    sha256 "f58a10bb83e7442a3b0b9034d8af5df46a919d155a15492524d22a57409809e5"
    "nl"
  end
  language "pt-BR" do
    sha256 "e74e609a5bd9e22314edd59353db8e460c24dae15cbc6895ab8f4db9f3b290b4"
    "pt-BR"
  end
  language "ru" do
    sha256 "e81ede7b258f5328aad90ce959bc3a1bf3143b231fba6699e7c75289fa41fa99"
    "ru"
  end
  language "uk" do
    sha256 "9e207337262f3333f9f344f0b0211c4518ecf89cfb59320ecd992e6ef6d074e3"
    "uk"
  end
  language "zh-TW" do
    sha256 "9daa5ca5ec8696c2804a28c6645a13699c12fc237640f784a02a35115cef472f"
    "zh-TW"
  end
  language "zh" do
    sha256 "2119ee839ff3f901f5ee468434132f31a049816dfee1d6a11f5f5f71bb560dad"
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
