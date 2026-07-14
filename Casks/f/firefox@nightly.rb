cask "firefox@nightly" do
  version "154.0a1,2026-07-13-20-26-34"

  language "ca" do
    sha256 "2559d30bfdffbade9a79222897f05739de6e6b25eba7944fa5601f8cefb559af"
    "ca"
  end
  language "cs" do
    sha256 "fc42855eec43390e93849c2c73741aa1a2b07e5c8338f4c80d6d4966d4e4eb77"
    "cs"
  end
  language "de" do
    sha256 "860c839c9a45e9fd7019c6fa6183f52cc26684e27fa0197513f56c975e1c64e4"
    "de"
  end
  language "en-CA" do
    sha256 "a935e4ebadf0ec89fe93ab106a0854ed5af1db3502378a7a87f68ce347c7ccfa"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4741bba25f3486299be0b00c827fed44c8697ac261c98f8b0445df42ad5e886c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "052ab7a7035125b46d03255f061a0dd850ae80d4d6fd8d1cf5d2170fc0a5e21c"
    "en-US"
  end
  language "es" do
    sha256 "ddcda5f294ca9a76f063d10531c282166e90a1a9216a0ab69d819fc02a472c21"
    "es-ES"
  end
  language "fr" do
    sha256 "fed189b6c1f675e9a5665e417c677dede4995e6c19d868241f4bf9a50cfc477b"
    "fr"
  end
  language "it" do
    sha256 "63a5a70960d931b034fdfac9b961cb5319ebd3a15cd687c134ea89158bd757c8"
    "it"
  end
  language "ja" do
    sha256 "220dd8e13d15a121d8778b35ce2d2bf77ba58920460aaa355fb33a1cb79ad4f3"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "dd374b78b903e4623ef9e1355b5e93630e47ff4ad88845c7770040b0123a5d82"
    "ko"
  end
  language "nl" do
    sha256 "e706d206c90aabd41f2233542a1fba15daa9c2de05172f8ca7d263fdb43bc2c3"
    "nl"
  end
  language "pt-BR" do
    sha256 "df7c259b2a509940fe53a570e8f44979a283ff38fd9aeb5ab71632f90ad546b5"
    "pt-BR"
  end
  language "ru" do
    sha256 "5478175f9f92ea9e41b2ffdfff9656fc5b95ce6f36bf29120225fde3cf242759"
    "ru"
  end
  language "uk" do
    sha256 "828e31083f9ffc60a31c8cc216bab02f8a758002c08f68c49ca27189eac54274"
    "uk"
  end
  language "zh-TW" do
    sha256 "179bb4c8fcffd96d48c987edde947113a1a11470d026794f6c2a9a3b7c1aee79"
    "zh-TW"
  end
  language "zh" do
    sha256 "569ea1eadca9389385743d63010dcb34901a19e96db7f9e36b8734022bae2712"
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
