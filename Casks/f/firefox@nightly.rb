cask "firefox@nightly" do
  version "152.0a1,2026-05-09-09-30-42"

  language "ca" do
    sha256 "2f5247bc6e8fe4a548fddd69f3d3bc5afe0825954d2f2de0899746ab6ad23740"
    "ca"
  end
  language "cs" do
    sha256 "76667c82b191fa07ee5d3e6938e71368d484c0594077fa53dfc1920cf772aa11"
    "cs"
  end
  language "de" do
    sha256 "29a8b24d1f2901738b5f64cf63c3832ff5a985fa1325589920b971a75353bc9c"
    "de"
  end
  language "en-CA" do
    sha256 "1f70cdc820e7dc4682cde52b334df1039c6dd56d7d80541090552a6f372db0dd"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8216ae276cadc927ba83dc32ec690cde0a507c3c50625d8524d2db5e6bef5069"
    "en-GB"
  end
  language "en", default: true do
    sha256 "19a3bec8abdf1261585607ee618ee45f2e6bde5d557d8d1cee5aa229062fe6b3"
    "en-US"
  end
  language "es" do
    sha256 "5bcd730a38e094dc847dc081c82bf0324b14a705675c4b61434663eb4bf85f61"
    "es-ES"
  end
  language "fr" do
    sha256 "599128249e4015f69a56eb811b0f689f37986702eb45fbaeb3fab07f6e25accc"
    "fr"
  end
  language "it" do
    sha256 "d56d088eb47aa95bc9c16cb56dd7bb5f403afa19d00f44cd36aa3654f38bd18b"
    "it"
  end
  language "ja" do
    sha256 "9f4fcbbb75ae4588029ebc6a6b00981d5e23bc95341b9e6dbaebe0d7238bd4d8"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "39933ebbb3d5759972098aa4e3e1e245d2c22ad71341c9308d52ad40b0fc0c8c"
    "ko"
  end
  language "nl" do
    sha256 "dc10be421be9d91fcb5626364ee60365c4007cbd17f8a54b46ce34b548c4b7cc"
    "nl"
  end
  language "pt-BR" do
    sha256 "65831fa6d6a6a54701276e10516431bce03a9210f787dd0e789aba4f5963f91a"
    "pt-BR"
  end
  language "ru" do
    sha256 "079b57d76dbe6021c87180255e420e75fe90a9e8f6789d1ee624230fa7014349"
    "ru"
  end
  language "uk" do
    sha256 "37b2a23f8f4925652c523047906a328615b8dce3065070177c12ed771c1621a4"
    "uk"
  end
  language "zh-TW" do
    sha256 "673c1566e809ac5ceee004f9afe0a5ead533e082b30a4a9718a066bb7c6260d9"
    "zh-TW"
  end
  language "zh" do
    sha256 "9984e49e2a81ebf7e69ffa78f13824a143d9bacdc548a15e74748c1f90f30e98"
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
