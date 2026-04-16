cask "firefox@nightly" do
  version "151.0a1,2026-04-16-09-37-20"

  language "ca" do
    sha256 "15a374135f616a50a46402c5cea0645b62c3f853c38b3438ec22135909fe5cb5"
    "ca"
  end
  language "cs" do
    sha256 "9adad24c930fb7562b97882fd7fc08a79903aa65f9197204227e60060a952a61"
    "cs"
  end
  language "de" do
    sha256 "707745740e60ddf60f4cedfe2e3c5ccfbbff0ed75bc1b9e4020746094114d9b8"
    "de"
  end
  language "en-CA" do
    sha256 "255980bb4d23fa9533bebc9292a9255d6e731142077183abf1e826e5be638894"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3abce51ad0b8167e0a460d769e72dd69e6a0f200cc7912b3218b7c041bb9c0ac"
    "en-GB"
  end
  language "en", default: true do
    sha256 "139686a3284e6eeefe7c99d30092f08c8c41d25edd50df3dea7ae019c07fdee0"
    "en-US"
  end
  language "es" do
    sha256 "db55e64c97f76245c2b64a05869698eaa84486f12959063b72d7191f650aaa56"
    "es-ES"
  end
  language "fr" do
    sha256 "2f53024367bcfdb9a0af29b9bd95d70649c255102424ba9a75fcbd1a6734977a"
    "fr"
  end
  language "it" do
    sha256 "932e93281155ce94d68b208c514e4eafc039af785bb874f2f72223d23b1a6f38"
    "it"
  end
  language "ja" do
    sha256 "d2b064be7483e749decccfcac5a7220b219f851fc6210bd6abe71cdaf58b1fe4"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "8ff078f1aa2a88237b18ba899b1df779bcf9140e041d4d071cc30c9e5a01356e"
    "ko"
  end
  language "nl" do
    sha256 "fa7d6e438fc0c98962fdfe52ac92e7c52d65c4a992e7e202d16360897cc35924"
    "nl"
  end
  language "pt-BR" do
    sha256 "53408fd3f23486245c177d202bb870b915cf0c797e67d7119db3df8ad11d1403"
    "pt-BR"
  end
  language "ru" do
    sha256 "794be0e1b25994010028f47257f9ddc6875519146f39f79b3525c9d0d117caea"
    "ru"
  end
  language "uk" do
    sha256 "67cfac90a1d86bf02de5e136bb26299edd5857c28b6e5a1374840b5dd8537629"
    "uk"
  end
  language "zh-TW" do
    sha256 "ae0d02f1e93b9bc087932583ccb00b4c931b2e152f908464c881850223990924"
    "zh-TW"
  end
  language "zh" do
    sha256 "767856941aa5062942038da28c2129679e1a7e84f2bca519779454386ff63eeb"
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
