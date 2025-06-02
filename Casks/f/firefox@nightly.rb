cask "firefox@nightly" do
  version "141.0a1,2025-06-02-09-21-55"

  language "ca" do
    sha256 "54319341a4e712249e298233747c69a76b4c5bc300f380760f186af1d3519977"
    "ca"
  end
  language "cs" do
    sha256 "5409bd088610a52cc6bc5845cd38bcb66ffae5871c14f5234022dfc391c3d95e"
    "cs"
  end
  language "de" do
    sha256 "3852c704a84eded6bb5f698f810ccf1658ad7382c71a1d27f4e56eee24a1338b"
    "de"
  end
  language "en-CA" do
    sha256 "90e9e82b802881dee24c95f14788bc276779a0acb071dbf34c2202a1d1602ae1"
    "en-CA"
  end
  language "en-GB" do
    sha256 "883b0b10409da48e97c5a6f0d1f13c4e77157ce4871ce55a5ab71e4df4931267"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2eb101caa01e836eeddd210d29748061526e5f3c3cecb0b5e69b57eb6c61420c"
    "en-US"
  end
  language "es" do
    sha256 "9c2730ff5bd8a3d6358fa5fb89172c40516c6135a0da3022bbcd6805d2350455"
    "es-ES"
  end
  language "fr" do
    sha256 "260fba5e66e1711d1f03a95c4debb62e19e008baff1e83e256fa1a0be3618c8a"
    "fr"
  end
  language "it" do
    sha256 "2942cd9b32ee2272cbabf11a7b4c3a79aa077b7c90f45098ab86b422d633a93e"
    "it"
  end
  language "ja" do
    sha256 "fb3f4dff51919712ff84520a6ec0cb5825be52895952df6ac0bcadae885582fb"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "884486c8970446dd20b0167d48fb97da8d8ff0ae2c48f2f4ac883b015d08d35d"
    "ko"
  end
  language "nl" do
    sha256 "33ad96b1d42932486a684dc78dab2bea8057492b1e94bc061d3632d6a7a34d0c"
    "nl"
  end
  language "pt-BR" do
    sha256 "f34f8acb040d16bd4e1a20f7b14e3963a58a72831704da8c08e1e97b72dc2668"
    "pt-BR"
  end
  language "ru" do
    sha256 "f428cf884932283831901e4d860ba89eef4929e27031708ccf1c297285fba901"
    "ru"
  end
  language "uk" do
    sha256 "5443aaebd00e8310636ade7b96f3a81e4d1605156fd05276c983298eb81daeba"
    "uk"
  end
  language "zh-TW" do
    sha256 "d6e3d3278472a92aab3aa1c8a28587b73489e9031f213ece0f9c35124b4d36f0"
    "zh-TW"
  end
  language "zh" do
    sha256 "6be6f4f7c0af4dfc01dbe74ee9400fb6d09a389bc410de385b58c4799603a492"
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
