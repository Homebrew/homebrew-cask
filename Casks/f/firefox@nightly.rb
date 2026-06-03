cask "firefox@nightly" do
  version "153.0a1,2026-06-02-21-44-19"

  language "ca" do
    sha256 "8d0e44f9daf996638bd0b81971a399e38562c8467dbb5fc0261e94a83f48d464"
    "ca"
  end
  language "cs" do
    sha256 "f804be24b2c4e5030d3f7656512378a6b22a483d9b81fa0e614f166984b5a642"
    "cs"
  end
  language "de" do
    sha256 "138013c95651b0a90b17d1bcb5d81f22c42c110d8cdbdaf41ee8e55c1eb08ed4"
    "de"
  end
  language "en-CA" do
    sha256 "d4ce195865bd2f704a2ce37d8038c1a1de5b48510924baf3fdebfcc444ce0a6f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5e448ba4d2dd2d632cf6cdd059760177e3812b7d425e3f92f10de48b81330473"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1de644178e4921fbbf1693a1dec537c3ffb021598021ed3ab52e0148531370b8"
    "en-US"
  end
  language "es" do
    sha256 "87f897c80f7ce5cbe497d7d7fccc6e2cd44ba04fdd3134c125a6a72a607aa7a5"
    "es-ES"
  end
  language "fr" do
    sha256 "45ba8d92692268038460aeba86791de82e9b0bdd230015db9e51215bd92b7a54"
    "fr"
  end
  language "it" do
    sha256 "e63fcb23003cc3af0180d01f0bbd6723ccab696c166cdbc70beae59a3ca0feac"
    "it"
  end
  language "ja" do
    sha256 "4052ae33f3ce60c843984fa4b96ad170f60eff9ed74d22ea83b97ca1fac28052"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "499f5930e6f41922b782483aa8c200da530697697ff7f41dd24f4a055a64f809"
    "ko"
  end
  language "nl" do
    sha256 "43416c057153c59cb5f3b80994aade79020d377837aa2b57e35611d8db117477"
    "nl"
  end
  language "pt-BR" do
    sha256 "bfce6077c8c75675638913eb1c878eee9a6da805266d6b58233d74897436203c"
    "pt-BR"
  end
  language "ru" do
    sha256 "4389a0883358a59ce42f6d54e50b111261b76bc88030256d867f92e484cc7580"
    "ru"
  end
  language "uk" do
    sha256 "d4ce6f4022f70664c020ead1c150b624dd4ae97368b569bb44d6191f81717395"
    "uk"
  end
  language "zh-TW" do
    sha256 "c7443ea745bec223be9debac6e0e83ad863b55b3dd743e3b9295f5bf3f16d5f1"
    "zh-TW"
  end
  language "zh" do
    sha256 "12b57bbe3cfc97ea64ed53cd55a7d36799e83d4ef482d12bcbc0a8420065e4a5"
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
