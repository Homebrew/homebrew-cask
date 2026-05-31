cask "firefox@nightly" do
  version "153.0a1,2026-05-30-23-18-09"

  language "ca" do
    sha256 "1805d950ca0e20572b637d8934e6466e68b5e4e47085a62a13d72f131359e4d8"
    "ca"
  end
  language "cs" do
    sha256 "866ae522a8e17cc74e9fac62c95328bfe5573d576478f3e1034d07cb4145f1f7"
    "cs"
  end
  language "de" do
    sha256 "df7849b32feb828e4170442cb87c1c6c51ee7319078f5bcd4b16fdfab606697f"
    "de"
  end
  language "en-CA" do
    sha256 "3d499df2f85de1ce32b1da229667ed233d670f5fa699ebfd897b40e0184d8fc5"
    "en-CA"
  end
  language "en-GB" do
    sha256 "93beeaaef733d1ca0ce1a1768de895f59f92a5121fe69de22e90bffaffd0a261"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5e713a3fdb99be13fa20d8f0c1ebebcf1f0e5b21958709b54e5752d383048e88"
    "en-US"
  end
  language "es" do
    sha256 "f7e8a6b2ee5a4589070b290e0030abbe14c8a22628999ce003567f08f34c5806"
    "es-ES"
  end
  language "fr" do
    sha256 "ed9dd9c397e3448319b3fbd5d581f8a74a96828038a6fed181b5ab3e3874a929"
    "fr"
  end
  language "it" do
    sha256 "8363773dc0e5f028fd31c6bb2033a8af46b85e140a814ede0acdc1c52dde3bcb"
    "it"
  end
  language "ja" do
    sha256 "c73d2b9f4d43351333b6885bd57cf7a6652db2a462e12e70cbb1f9b4d0e46080"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "24878c30d29f223a4e249b1be588ae775affdc7da0fb7a530f4b13f889ebe5b1"
    "ko"
  end
  language "nl" do
    sha256 "adb7bf1e03f5bf8bbbd5035fc16dd1d2dd3483462dad57197ed53fbccf96da66"
    "nl"
  end
  language "pt-BR" do
    sha256 "8bbf8e352a42c7d281edcb93ea9ff30387fcdfae89bf6d57c388bca3495e3d32"
    "pt-BR"
  end
  language "ru" do
    sha256 "dc4fecb1f64ba5ad5e5600ece9fe04d2e8fa05faf685b2b276bb6b0ac1d2f62f"
    "ru"
  end
  language "uk" do
    sha256 "9179052e366b68e2b8e2d6f2fa5446126a808f4420d9277a67186d8d17f25e04"
    "uk"
  end
  language "zh-TW" do
    sha256 "caa19b0fda825297f5ec63c75272ebc4fab1bdaa2412db5a107678a165ca3b11"
    "zh-TW"
  end
  language "zh" do
    sha256 "4890b6714c527b0bdeb81040a7c11016b67a08a6877b18f28c5947ebd030e14a"
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
