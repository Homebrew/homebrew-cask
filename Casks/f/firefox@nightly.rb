cask "firefox@nightly" do
  version "140.0a1,2025-05-07-16-42-02"

  language "ca" do
    sha256 "d15132d1e08cd40d74559ae96a8dfeb36bb04c4775b6cd3dbdfd1535876d2dba"
    "ca"
  end
  language "cs" do
    sha256 "6b73225f528df765cf4acf8ec24ef68062e5392223a055048e5d8a5785cbd39d"
    "cs"
  end
  language "de" do
    sha256 "4fd901d8f38fc419e5b92dae684fc522227c4a5a6e0aaf4c9e14fc787d782143"
    "de"
  end
  language "en-CA" do
    sha256 "d5baa214e02204673c728f4b926c24ec83829cef9ace93731d9ef1483cd8d1af"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4a9fe147ed3c563d013589e69f0614767bd9a12aed4617ac8ba0c3d025d82399"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fb157d67a65ddef97d20c26578b13685d8d2b4749e9ec4adf9e146588fd5b3f9"
    "en-US"
  end
  language "es" do
    sha256 "871aaa3fc67442ca1e071a5b0822bd1cb3568b58829ce43f15b830f20f6a446c"
    "es-ES"
  end
  language "fr" do
    sha256 "ebd1a70159fd6b45ea5abbcd48c6e8a1b1d345dc34859f93d6f00d0a085aa904"
    "fr"
  end
  language "it" do
    sha256 "3dd502f2c6f075906379ae510f685a33dffb2f0f37ab82c8e95cb2f0443035d6"
    "it"
  end
  language "ja" do
    sha256 "4ef891db097473a520072efc59b094c95da546e3792483285d95fc5514621204"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "72e0042d7f5c3fe7409bbb4e7e7bc38321434961d610f16b3e4aaf8fa25ea20e"
    "ko"
  end
  language "nl" do
    sha256 "110678773604f6bbdc5fddb0edb15a82e8089b54116b915e66e42615f7c8a695"
    "nl"
  end
  language "pt-BR" do
    sha256 "075da4b7d6d005d13139e1343a75dcf8f23a217f3e260f97c41367796e24d752"
    "pt-BR"
  end
  language "ru" do
    sha256 "84bb83704a3e17fbbc2eddadd49684529a31822d1ad87bdbf125ca72ce4838bf"
    "ru"
  end
  language "uk" do
    sha256 "3d94d8e25769963ca98f78850031fa798baeebfccce04b56f9c1a9310c1ac134"
    "uk"
  end
  language "zh-TW" do
    sha256 "95432ee1df9d3441d9821fb797b61791e89951cda28704d42c74c371e45b2cee"
    "zh-TW"
  end
  language "zh" do
    sha256 "aef753adb149f6511425feaf758efa2e22a30fbeb789d1ffce474b4cb670d1c1"
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
