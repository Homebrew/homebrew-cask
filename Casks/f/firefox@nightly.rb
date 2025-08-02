cask "firefox@nightly" do
  version "143.0a1,2025-08-02-09-28-37"

  language "ca" do
    sha256 "929cd842158f5f07f4682f304f3e8e32190ceb4a5ccd69f0e7ec7d2270cd463e"
    "ca"
  end
  language "cs" do
    sha256 "ab516e23cab43e1cad172add8ee46a774f75e19f52948314510a2f73f8371464"
    "cs"
  end
  language "de" do
    sha256 "d6593fe74248a64cbf1f5e0cf0760a855acc5d0fb47d6476caf3e15834266cdb"
    "de"
  end
  language "en-CA" do
    sha256 "f72ee65558ad2aa81096880bdbd2845a900867b9ee37674395d7a4e86aa76195"
    "en-CA"
  end
  language "en-GB" do
    sha256 "cdca4e4c501ac2e29cfc47326f99b9e811d98110c0f8d53e621dba992963187c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8ecd91dcefb07dcfab70231effb15348308e54e4329b35b1e746720a2b239b7c"
    "en-US"
  end
  language "es" do
    sha256 "8b50aa6eec5ef6ff502f9d2bdfb0a4fd3f8e6617a7b2a294e91fcda2cf5e732b"
    "es-ES"
  end
  language "fr" do
    sha256 "30e145094507aaeed6308106ac70bcaf98eb35bfd84ece0af651b8eb70244b5a"
    "fr"
  end
  language "it" do
    sha256 "b204b800e1b03d038ea3b29c15ceacae6b7a41fad5b720ed2c608191225fb6a1"
    "it"
  end
  language "ja" do
    sha256 "f945948f98c189281f8dccbb0221858c7c0bc19d708f6a74113c2bb284f14587"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c1a1f6c2f5fdcbb01bc963734008b21f2be48b2df37aca4cc4d0b320605e6af2"
    "ko"
  end
  language "nl" do
    sha256 "fafa65b7da9a66885c56f1d07c6344d44cadb3b98e74e8c03d4aa481340050d2"
    "nl"
  end
  language "pt-BR" do
    sha256 "3fccf2ffea6f66ef48527d761848bccbb194bd0d021ae2bee5aca367c4748c9a"
    "pt-BR"
  end
  language "ru" do
    sha256 "6886c7e66458cc0814a3407001633d1ad82809476203bfc89cab37d41739d527"
    "ru"
  end
  language "uk" do
    sha256 "cab2efff3d0e23cf2f29a647f9210506767798854395b5ff25715a838c774905"
    "uk"
  end
  language "zh-TW" do
    sha256 "abc23d7d9257e6b5337d4093c002fff597191d0c981e51eeec41e71cd6832b2f"
    "zh-TW"
  end
  language "zh" do
    sha256 "9f9d7c12bf011764c8893901109d7f9e92210f49ccb4eafa2fa44b0e694e72f1"
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
