cask "firefox@nightly" do
  version "142.0a1,2025-06-28-20-51-11"

  language "ca" do
    sha256 "f3c0545cdd0e7ffc808925cd24c4d9471a602b560b4ff92a635863fc9173a68c"
    "ca"
  end
  language "cs" do
    sha256 "0dc5dc5d4bcd3356002b87998ab1feb8e089cef7e2cd38bbeff48d61210d2739"
    "cs"
  end
  language "de" do
    sha256 "e2e15702c2cdd8fbbb42d516304671cfa38a77c8217e170249c4aec5b4eeeb9f"
    "de"
  end
  language "en-CA" do
    sha256 "8b7d7ff4566b53b1817e5aa957b7ab0c521f522a396247a5c4d605e3a05c1dbf"
    "en-CA"
  end
  language "en-GB" do
    sha256 "48caba2631d727b0cb4a2db9ab362eedf3feb1d212fa9d0dbc165db698dadeca"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5a9642be849f1ae31c3c32ffc24c98dac886de8f7f89fb5e93bd1980db60c393"
    "en-US"
  end
  language "es" do
    sha256 "8d887cd3de5d0fadc14ad28b709c326d2dd14f9c89f8f1e8558720071e8e83cb"
    "es-ES"
  end
  language "fr" do
    sha256 "6917514a4bf5d61292d6e90fdde85f53af1225e665b2fd39be769ff395fa8acc"
    "fr"
  end
  language "it" do
    sha256 "fb0ac4877f61da864a15bb5a21538b5139e008aee9cbd9d399cd93aa72b405ff"
    "it"
  end
  language "ja" do
    sha256 "1b209a3080513222fb8b35d2373defb8304a0a70fa061cb527149f381099fc39"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "167d2cf5e8431038928da3bedc4e19526be9b6f15824042b671de390dcef4432"
    "ko"
  end
  language "nl" do
    sha256 "eeabd326eaa7d2ea7c49eb776a8167e1906c8f2badaa3c1cdb24ec8c2208b7a3"
    "nl"
  end
  language "pt-BR" do
    sha256 "defd0c61f08e50efcac6600e56cd05e4286978a3c4b2bda1f36738d3e377dcd4"
    "pt-BR"
  end
  language "ru" do
    sha256 "790765885a81421f800a5b4af8ae2d964c904fc5b2608b656a1f18ff04ab18b5"
    "ru"
  end
  language "uk" do
    sha256 "45c7b9e22fcf63fbc4992a95fb36c0b1802bfbae9087afc69e518aded253fc1f"
    "uk"
  end
  language "zh-TW" do
    sha256 "7f78e710dc91bc9384f254c5aaabc32c2b220244005bd4df543d272eae54bfbe"
    "zh-TW"
  end
  language "zh" do
    sha256 "704ed898ad3855782575f5e6dc893193a6be476ea8ac0e95db0dec58768a3a0e"
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
