cask "firefox@nightly" do
  version "141.0a1,2025-06-17-21-30-38"

  language "ca" do
    sha256 "f6f65e603ebdf3b0899fcd1b0351f4251859c54ff39c3c2ce83642e76e0b161c"
    "ca"
  end
  language "cs" do
    sha256 "3691994d7d8585458fa1c863f18374f73bba8b189c278fbfb08f4d0531efb36a"
    "cs"
  end
  language "de" do
    sha256 "6206b4d81851f13e8935bd418217346db7a9df6d9940877023d48894f3f8e9e4"
    "de"
  end
  language "en-CA" do
    sha256 "a306d2299066e0e5a5152e7519f0585d921ee3b4f0e437e0fbce45bafbbf1251"
    "en-CA"
  end
  language "en-GB" do
    sha256 "944bdc2def36410b45ab75338c76be686dc86f0462277d9bd83338b936b5db43"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f2715f3726f94cbc13d8a7d260c1f06faa553a9551992634cc2699ed0caea05d"
    "en-US"
  end
  language "es" do
    sha256 "19546644b9be7f5e49d236f972134f8fd58b00430b500b6028e5188f947db60a"
    "es-ES"
  end
  language "fr" do
    sha256 "e9104b276d17e28944a3a5c7a7000c6c3baba9f98babc146924265501f944ad1"
    "fr"
  end
  language "it" do
    sha256 "975ef111576de3f1f0e0af66e104c876637286b664ee60297856f57796368255"
    "it"
  end
  language "ja" do
    sha256 "a1a82df9c45991d6bc9b8f65343a4d34285863c08f4aafce6267bb4ef5bb3a5a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "93ea7785bafe0234547e02b72cb070fc66130ec3784cf1aef0e215f367eaacec"
    "ko"
  end
  language "nl" do
    sha256 "2fe5fb9ffc13c28c4c4e12d3d753127875e263de4b4b61660848a60e62e820ef"
    "nl"
  end
  language "pt-BR" do
    sha256 "d5b29bf18271dfa2f0392b2496736bc729506cf3ae8ab21d1c8c16d7d11c8f24"
    "pt-BR"
  end
  language "ru" do
    sha256 "f73cb4dabd39cd32bdc99062bd2c2f41d11d540ccde340e7cb44e58f9d903500"
    "ru"
  end
  language "uk" do
    sha256 "48145e14c4883aee67b96685a6759ade7cc74f74c9c621ee2dffe672c244b23d"
    "uk"
  end
  language "zh-TW" do
    sha256 "6c534273d45cfd0ce87c0a7bb46c3813ad0f2d373dde30bbe8e38356688a469a"
    "zh-TW"
  end
  language "zh" do
    sha256 "51c4611d0b7451bbdd9e8ce4686cfa147c476888eac7bcaa51529584eb30973d"
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
