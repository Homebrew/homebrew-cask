cask "firefox@nightly" do
  version "145.0a1,2025-09-15-21-44-14"

  language "ca" do
    sha256 "c23771a8c305dd8c5246e2634442fee315a339f0c697058838587bb411dfdfec"
    "ca"
  end
  language "cs" do
    sha256 "ed2e060d81938199fc2b244ca607db5fd7e78d437173c071a79b89329bb40a55"
    "cs"
  end
  language "de" do
    sha256 "15df82831a0d8f87513d989baed737bf5ee4a07a74804a31d8c1f0ab183c02d2"
    "de"
  end
  language "en-CA" do
    sha256 "620dcf3381938cc5736d31715129375a4a66f2f941449a052021cfb75cee9fe7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "02f103bf8932e76540bec927e80a40029dfeb820cca7a039d4fe388927d66619"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fe6a2cd13400280c6e04fff6eaedfef1173d11532ad288b1815328dc87d05ec3"
    "en-US"
  end
  language "es" do
    sha256 "1ffa023430e886e6db24e0dd6d5f4b76ce9c2e55abdbb5f4d60b8dac9c8dd526"
    "es-ES"
  end
  language "fr" do
    sha256 "0962f78aaecdec1d85d1b52f513ee99cbb660c1626df15467e62f17f0433a1fb"
    "fr"
  end
  language "it" do
    sha256 "93cc62367b0e1da6e1c11645bf90268de7d3c9f846b43c14be8a97c1d1ebf9bc"
    "it"
  end
  language "ja" do
    sha256 "d2cb8bd9f62b8a5245dabd4bb47ecd8cb1ff71345fd6b6cc6ff2db6c7bf6e9cc"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d03bc0171f3d6ece84c9c0c4ef5ed2550e255d755a3fcbc08e8c0efc4088c8e2"
    "ko"
  end
  language "nl" do
    sha256 "085e913fc5991a1c0a8436681526e8dad8b75d8b3cf2365bb85bb15d2bfa5b63"
    "nl"
  end
  language "pt-BR" do
    sha256 "65bf258cc78e769bcf10307eb5ec0c109db73543f83e038fc879a62ed109b726"
    "pt-BR"
  end
  language "ru" do
    sha256 "723dab4f4c57ad16a6adec37f24f9de910adac6856901601ae776341c41f683e"
    "ru"
  end
  language "uk" do
    sha256 "16a9141cc834a21727e7f5a3126191d10492ad6813be41f0cb2e248b79772c9c"
    "uk"
  end
  language "zh-TW" do
    sha256 "0fd411aa84653765d29c78989c30e23c4e9479d6c3cd4d3e211733bdcf699038"
    "zh-TW"
  end
  language "zh" do
    sha256 "12b835019a4b455ad18d2f0527d3cd023ab60b5564e83247a876854566da6cb5"
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
