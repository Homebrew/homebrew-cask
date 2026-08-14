cask "firefox@nightly" do
  version "156.0a1,2026-08-13-20-09-18"

  language "ca" do
    sha256 "260c363855dbb6002efc2997809c7956f1b904d1c4c7ad17e2b7813f5d1230a5"
    "ca"
  end
  language "cs" do
    sha256 "df4ed1b17ce229363da8b159174337ef2a587f09debed02a0e3bb14a1dc3c156"
    "cs"
  end
  language "de" do
    sha256 "664ca72f2c5fc519e7c291a433377b07e745a30865eebbe3b69ebaa87070542e"
    "de"
  end
  language "en-CA" do
    sha256 "7dd8de5ae63cabf48772ad82a5756d827392c9de578131e34bbe82cd044691b8"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ee5e72f03c39012352b6f664bc2f15d3a49067ce3dcb32942f8d88aa299babba"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7ab92173507de9a7b2e194a6f4a0ba0369b985afc2d8016d5fb113dd74c9c3ca"
    "en-US"
  end
  language "es" do
    sha256 "e0db5addf2320ac6ced3485ae18d599b80ac59c56083ebcf3a0be205c583e09e"
    "es-ES"
  end
  language "fr" do
    sha256 "01c063a61cbff9307c6871c0fe5be435c0790a8b4042bdac611e1c628ff281d8"
    "fr"
  end
  language "it" do
    sha256 "c70cac32a349a834df8289c8b74c6deb01a965ed744590d6af3e6ec5e88e9246"
    "it"
  end
  language "ja" do
    sha256 "c0791018e8dad07d3ac562c7d102c1ab5483c939e7431d32829035aa42844de2"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "13f6cb2b058e7556014d7c0659347507222930db8cf88154f2d520ea1b29fc6f"
    "ko"
  end
  language "nl" do
    sha256 "29aa4b59aa3f21b76b4ca2f41586738d334518ed172559eda7a3e69e321468b0"
    "nl"
  end
  language "pt-BR" do
    sha256 "7fdf4672ff8800ddbeb4e93c603e250ee30688dda7ebebfd4c33916b87a57051"
    "pt-BR"
  end
  language "ru" do
    sha256 "55b20f912de63b633a607cc81234ef2115a5b3ba295586e01887c7d39365fead"
    "ru"
  end
  language "uk" do
    sha256 "f184249647ff72d41275fddbe4cb7daa0466831a399e187532c5bfc1621aecc4"
    "uk"
  end
  language "zh-TW" do
    sha256 "ffbde3905c3c3d4b8f09c23ed048891aee77fb27174b9c2321745a5500525473"
    "zh-TW"
  end
  language "zh" do
    sha256 "50e29f971998437315e561522d0098c0eb588e2d6cf3284e47076b19b62b62d3"
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
        "~/Library/Preferences/org.mozilla.nightly.plist",
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
