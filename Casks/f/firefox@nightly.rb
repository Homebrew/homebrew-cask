cask "firefox@nightly" do
  version "140.0a1,2025-05-10-21-04-52"

  language "ca" do
    sha256 "f580c0298c929639cf93a3803cefdf086c0fe7290365943fe4ee8c9e359e967d"
    "ca"
  end
  language "cs" do
    sha256 "981936eb2968f9c1d61b8e7343c0aa9d2f3b2cd78234024618069775d90f4cf0"
    "cs"
  end
  language "de" do
    sha256 "66d4cf46722bda670b7f4dedd12227eaa6dd2c965cc13a86cab98afdfba29286"
    "de"
  end
  language "en-CA" do
    sha256 "c7a27746bd450602173bafbeabb30042231a771496da8e17dbcf818e47324dd0"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c0b7df58d06bc11b714c4b993b449d0ab18242f9dd7cfe6da2e76718abd949da"
    "en-GB"
  end
  language "en", default: true do
    sha256 "325c1e573f032fc1e5b7b968784ddb7c29395bd1300b5a56f148350034786e2e"
    "en-US"
  end
  language "es" do
    sha256 "125b1a495f6bf5dd8e86895f3d69bccd5b660472d7fad22ea34cc4b2d3be8263"
    "es-ES"
  end
  language "fr" do
    sha256 "d3f19a90c3c0c87581e7d57b9b85ada270f1ddd68d7e9be2257ddc6cbcb76438"
    "fr"
  end
  language "it" do
    sha256 "a4be76e4d16b60aebae603ffdbf0601b6a6948fb24f37f5ba658fed6043cb8b1"
    "it"
  end
  language "ja" do
    sha256 "73bd14f3875136d1cff02e1f4c4ccb0ff00afb676dec3291b3dd89e8803fb0c1"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2f2200ac1fe0729df746376bd8d4ecc21bcf89d6816b6f92bac6190085e216e8"
    "ko"
  end
  language "nl" do
    sha256 "a30c6e2016e51d391630335fed8afc03d0bdf01aa6b449532f44079615807145"
    "nl"
  end
  language "pt-BR" do
    sha256 "211d54b10c01aa01e6487683802576d5c5509a306b39d23d816f2ce45bdcfd67"
    "pt-BR"
  end
  language "ru" do
    sha256 "07184aafae2e458044c289cfca95aa21eb214f0f2c72d1a80f85b8830cb7d531"
    "ru"
  end
  language "uk" do
    sha256 "d9c1ac4e842cd9cd72a3724c6bf99addf47b31c0cfc12a62baa70e8385c6b329"
    "uk"
  end
  language "zh-TW" do
    sha256 "93f59eb3245d7aa56e28d278d0fcb4da8bca1df3c1aec7db3c5af11be8b9eb95"
    "zh-TW"
  end
  language "zh" do
    sha256 "9d0e37e50dc0ba5ca1556eab25e2ac5d89dae0eebd5e8426fce0c489398a381d"
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
