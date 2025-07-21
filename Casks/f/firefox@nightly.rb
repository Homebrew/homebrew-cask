cask "firefox@nightly" do
  version "142.0a1,2025-07-21-09-09-29"

  language "ca" do
    sha256 "c71c65bb539cc136d93d745bc3ad5d67a1b2c9ab1d93ade65549c85d7c79f06b"
    "ca"
  end
  language "cs" do
    sha256 "dc750b26e4bd8d402e9defb4c85bd2cea7aa559605be16c9b51b207f656092d2"
    "cs"
  end
  language "de" do
    sha256 "1d4676c8dba57454f5d1ee25f0c62bc44145e142d474298b0be1a430733762f8"
    "de"
  end
  language "en-CA" do
    sha256 "e4712f2c06933f18d19bfd4178e419958ded2758019fe215e203b75aa97f6996"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2615c687f4cb400b92be2a0cdb98fdc66898782b2d76c89599372f9211c70bf0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "856b2f258e876662cbeb7a304a3f8168c73da7813f96fc06882da6ba36c698c6"
    "en-US"
  end
  language "es" do
    sha256 "c9291a0721a5fc9864d55a458233459d6087a977c5bd794d040f218172a21214"
    "es-ES"
  end
  language "fr" do
    sha256 "8dcf28961678c466ff69bdb873eab471ebf0dbf7c3ba619107a8ae48b5f86af5"
    "fr"
  end
  language "it" do
    sha256 "7210598356b9604dfac232e0b7a1414a49985cde69abbe552507c4e91fb05b7e"
    "it"
  end
  language "ja" do
    sha256 "9d276bff2da33bb18cd280f19e12222d38475dbfbc9417c091ec178a5d0fb822"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "6eb5ddaa17a6ef4c5cb3efbe651f434209a4d395df33cb2e5c41765488db29d4"
    "ko"
  end
  language "nl" do
    sha256 "450ad62844f0635f7ac27684b42f09f3a1d41d19851b998ba2a4cd91c228493d"
    "nl"
  end
  language "pt-BR" do
    sha256 "caa7f120152aa057013dac194bdce0a75195d01d097e0a25dee5ba9ac75cdb12"
    "pt-BR"
  end
  language "ru" do
    sha256 "7ebbf7f17da89ff6d5a815e4ecf9395e5472c6d00843ada4865b9fedd60dd6a3"
    "ru"
  end
  language "uk" do
    sha256 "b97040404c25fa514861a27057016d1a9a25fdc980b5e613fc73ef633492b4eb"
    "uk"
  end
  language "zh-TW" do
    sha256 "11e23859e7573a7bae677abee3860a690c0cfd693296d11b534d979cb90eeb52"
    "zh-TW"
  end
  language "zh" do
    sha256 "ba0d8e61da2a29645d440ae517d7121dd09f775fce4286de15db6d82d95f635a"
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
