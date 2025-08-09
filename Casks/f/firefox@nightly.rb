cask "firefox@nightly" do
  version "143.0a1,2025-08-08-21-23-04"

  language "ca" do
    sha256 "8e504e5569d7a771c8b5985aee4a0746815e67cde7593b385db83e011e96ab65"
    "ca"
  end
  language "cs" do
    sha256 "687b167b26a1e2207acc05fa9f1c75ee3fc5f0d987dc6c89ee8ff1763898abc9"
    "cs"
  end
  language "de" do
    sha256 "ca1e59b7377b9ce237fe6eb157910b100ac8e2598fb9983be66522141ce0b999"
    "de"
  end
  language "en-CA" do
    sha256 "1e8961e6a62964ad2a0ba814502cb599fcd7cedb8de7ff25b1db573d71d2f3c3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "45ef5f0b2f6a31d43eab8ef8926518a9b173af442943330f4af8e8f1e6824576"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2d31bf89bfac70f9766f1a18a6c6065c48fbe64ff0fc64297ff5b5977ce379de"
    "en-US"
  end
  language "es" do
    sha256 "f7d23ea230ef0674e60dc2f5fb7ac6e3e913ef96d41583b3aff9e84efa56c6f6"
    "es-ES"
  end
  language "fr" do
    sha256 "0106050e78f1f35421faef1a3e0b63019ff3168bf0f6bda16a3adec91ffaaddd"
    "fr"
  end
  language "it" do
    sha256 "02a71e2f88035a50c4449187342f024c1485a7cbfdc50384817f3ca6a3bd0c2b"
    "it"
  end
  language "ja" do
    sha256 "c1623c3c530c53d69b80901df19a2b8e2009fe9c07d67b782cf796b2c2ff8482"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b775c111640fd03f72ad61690e8f0cb97507419383517edba15043a99e264021"
    "ko"
  end
  language "nl" do
    sha256 "304410e79785c90ad308e916e9e84df8fcc1387fed077b519f076c437fe8f4e1"
    "nl"
  end
  language "pt-BR" do
    sha256 "c68b20b12e50c0a2fc0a1394d18a327410337eefcb7d0636b56aaa9198ff92af"
    "pt-BR"
  end
  language "ru" do
    sha256 "0d301269ee328e53223879e3421c3828d4e923d335f8bf569ed4e16c9fb258f9"
    "ru"
  end
  language "uk" do
    sha256 "ef82e43072c91e93b3c427c265418502164f281e567b7c2c5e982b72ee313c8a"
    "uk"
  end
  language "zh-TW" do
    sha256 "a9e59fd4295b1b8e727081e6262fa8a2090a3f494067a7f356867a7f6629b13a"
    "zh-TW"
  end
  language "zh" do
    sha256 "f862c314b88211a5a268aa46c210a2a53e82f5aa29c8f1aab2dff726d5113c81"
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
