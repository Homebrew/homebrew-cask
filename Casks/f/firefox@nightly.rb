cask "firefox@nightly" do
  version "163.0a1,2026-11-22-09-32-27"

  language "ca" do
    sha256 "c74d8a240a97001fbf70f4b09d0eb724ec75f7352c5bd3d60ac23f0958af5cd4"
    "ca"
  end
  language "cs" do
    sha256 "5b7c68c019f40dd21edd81fdbcc9e4fce24d620cd61befd5208f26a84f3d50a9"
    "cs"
  end
  language "de" do
    sha256 "426adf9db236519898f92b1b597f879cab6c111a05946fe6e5bd707c25000648"
    "de"
  end
  language "en-CA" do
    sha256 "b7bd3a14356cab8e64d7dea2d187e765fe4e570b5a6a1f55e3424d50d32bb027"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4e856fa7da3fa7db819ca13cdc9de317d82793119e46ea99f09f3bab4c2a1367"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0cd51733637d9c9419b4f4c6c9932bf7f8213ee4ff343abf956f87f621a3bff2"
    "en-US"
  end
  language "es" do
    sha256 "e03417c88a49d01a6a31252f3fe071a345bb51e75e9d912064aa18c4ff467857"
    "es-ES"
  end
  language "fr" do
    sha256 "91a330eb4c73d3f3fb75a6871a103ebf9e42883027837760df481de75c28c6c6"
    "fr"
  end
  language "it" do
    sha256 "38a89ecc2d38553c7bcaf6b1d7b3f1f0fe7491ed37c8f5dd97a8bf4da91b34b7"
    "it"
  end
  language "ja" do
    sha256 "d9f0c58776980afc6104865ff86220bc7c42045f4ab420685190b8939aae553c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "60b481ccd50ca381de8f3d8951338bc44635f4f44f8af352e17b03489502d9a1"
    "ko"
  end
  language "nl" do
    sha256 "567eafbf0972ab7fc55f48eda155084620a3aeff91d8ca5c81dee28ff2070342"
    "nl"
  end
  language "pt-BR" do
    sha256 "ba914cce596e6144e9cb174ae04394c71026461178a4728dafe0916946d6af32"
    "pt-BR"
  end
  language "ru" do
    sha256 "2efc2998022e225d59307e028a7f025401b5d1bb46e92e799198f1c43785c4a7"
    "ru"
  end
  language "uk" do
    sha256 "3501dee3e0af6f7682bfaefe98217c29060f1dcae1bc27c0f0a80b45f412936f"
    "uk"
  end
  language "zh-TW" do
    sha256 "4701eafa4ebe120d5e51f82f923c75bc7a4a5347ce9a51cfb9c32889816960f4"
    "zh-TW"
  end
  language "zh" do
    sha256 "16fca1c255e6c85dfeb3421538e18b02ede547a631921d3baeabf92192e0f4f9"
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
