cask "firefox@nightly" do
  version "155.0a1,2026-07-30-13-27-38"

  language "ca" do
    sha256 "f9fbb058302d5266a3425f1e9b2b2f9ceb3291258796b1344f1c6424c4bcaf0a"
    "ca"
  end
  language "cs" do
    sha256 "41ae21c95823059c8b6f3af2b515fa5dfadccc3fb9f0aa9cba8207bf64472c08"
    "cs"
  end
  language "de" do
    sha256 "04f1de4ca85d1f64a26c515194cbfbe6df469ff47f6a4a2016fb7ed22f88155c"
    "de"
  end
  language "en-CA" do
    sha256 "c5131dd4c81db05d9033d6288d7f1acfa51cbdfbb2364874ef8ce4f60e01b88e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e3cebdc4170f7ca7564d66a67c288d984aacacd9bdf530ed61bf914797087ad3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1b9c3ed590041bb06514a514c46881b93614885f1277109a8395865022184af2"
    "en-US"
  end
  language "es" do
    sha256 "9ed1db4e7560f270b12b372accc347f4d9def02b03351c2ae6f00b66ec9b5ec1"
    "es-ES"
  end
  language "fr" do
    sha256 "d28cbb79ed3cdfd5f396ce95e3843ea0a8fcfea81eb518bc5bef679f5fb9b455"
    "fr"
  end
  language "it" do
    sha256 "3c6e8f614f8051af37e5331547ab2db02054562018cb30f3f45f04cf56f68d87"
    "it"
  end
  language "ja" do
    sha256 "9349b00b5efc9fc6970a235e594ad9693a8692dba1f5281c2e888d713bdf61b8"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "8e710d4884bda10c91d6dde20231196c90528c35be08f4499328517c6a018e55"
    "ko"
  end
  language "nl" do
    sha256 "e16e7a46297d0359b240edd1d1aaaeccbcec0b865372a972cc97792ac0a0a2d3"
    "nl"
  end
  language "pt-BR" do
    sha256 "cda2c489c01af84ddc7b35cf152cf494a17a06f3c37055fa82141ace00a79aa8"
    "pt-BR"
  end
  language "ru" do
    sha256 "71bf64e8797203462f5ef399a2f10180da3d33f3c0728d01818ad5ce8804c80c"
    "ru"
  end
  language "uk" do
    sha256 "9ea4d9af6a612947131d389578c53b656397620922fed1ae09cf1684a4cbdfa5"
    "uk"
  end
  language "zh-TW" do
    sha256 "8d6129f9e2a5b3c67080fc2ebd6364d7a25ddc1cd98d4504d4897534ca48643b"
    "zh-TW"
  end
  language "zh" do
    sha256 "033271070bb87193a0c5e952d12c0e26c09d876ac30224b011ef2ab83b7e5924"
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
