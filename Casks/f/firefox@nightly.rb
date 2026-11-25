cask "firefox@nightly" do
  version "163.0a1,2026-11-25-09-05-28"

  language "ca" do
    sha256 "ee7da62038bc4b1b259fdb55130c76cc1882fb908f22b0937aee0918b27b79c5"
    "ca"
  end
  language "cs" do
    sha256 "7fa79d99c7dbfcfd7b1ebb2dd050caa9112f811e1b1a3884474c9c1027aeb1d7"
    "cs"
  end
  language "de" do
    sha256 "31b7b2a99b48667e48adf0debed0696962fc34bdee4c6e438b6011314d5b70a7"
    "de"
  end
  language "en-CA" do
    sha256 "b75d443fccaa1a6d1beebd9a1f3b2e10bcf99c403f4c792185d57cb7c782eaad"
    "en-CA"
  end
  language "en-GB" do
    sha256 "85fcee315bbe1ee76908ad39a57c093dbb4bff2d7607f0ea1e866ad5007bb378"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ba2dbaef1c8ffabc6cbed2739932847db3b602376a2781e5d7ba26f67e9d91a8"
    "en-US"
  end
  language "es" do
    sha256 "71bdc14fb576627782cd88b18c0dc23ebd3d1123c258432d4301eec5547b0d9b"
    "es-ES"
  end
  language "fr" do
    sha256 "86733f52edb3850eb93c89961ff3658a63747c7e25f7801476941b33a8dfe86b"
    "fr"
  end
  language "it" do
    sha256 "694173011947ad4a9929757bce9a0095fb9c8bfcb3367ffc61fdddf791dedb7a"
    "it"
  end
  language "ja" do
    sha256 "5fba81576be33dddeea8d8b5169e9689ed66d472d656276b4572019b7fcc1183"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "93efe7bbbdd94a2e5d6fbbe5ba5a230f04e780e76a8c4fa3e93973b483d50935"
    "ko"
  end
  language "nl" do
    sha256 "6b2c8c77b7fbdebf664cda08e85200600db64e025d2366cd43a097e6c6ddf4c3"
    "nl"
  end
  language "pt-BR" do
    sha256 "6d0699b610a989f5d1602f4941e42e967b907734cfa6ab50582d3bbbca8754a4"
    "pt-BR"
  end
  language "ru" do
    sha256 "a15c9fc67ca30d84d60b411a2382d40c03edc15784ea771f0c7d7f20c0cfed91"
    "ru"
  end
  language "uk" do
    sha256 "810d8a76f5d80d8c262677a35a433e2d73aae76ea2c60d1d08c9fde172d4913e"
    "uk"
  end
  language "zh-TW" do
    sha256 "ff0bb9318a4a46efb89ee88ffa5c9fd73c06f2c50730c2a1e6f6abe698674e14"
    "zh-TW"
  end
  language "zh" do
    sha256 "da47d39853c55ece36a70f08624023a1b115ceb5d2fe661c47dc29842c6f2c6e"
    "zh-CN"
  end

  year = version.csv.second.split("-").first
  month = version.csv.second.split("-").second
  locale_suffix = "-l10n" if language != "en-US"
  url "https://ftp.mozilla.org/pub/firefox/nightly/#{year}/#{month}/#{version.csv.second}-mozilla-central#{locale_suffix}/firefox-#{version.csv.first}.#{language}.mac.dmg"
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
