cask "firefox@nightly" do
  version "163.0a1,2026-11-23-18-46-40"

  language "ca" do
    sha256 "4e302665b0f47eee54e3fbc852a33cdb812f95ce98769d9b8b65e0321ec30e6b"
    "ca"
  end
  language "cs" do
    sha256 "4ddc5270b44cfd447bc9f11a6e0c3f143ca0fe471a05329a3e7324ae2d0397a8"
    "cs"
  end
  language "de" do
    sha256 "f299d4e3f3499d8290c1e5cd9fd8f57df6f68a09eed9554d61317a169fcf7c2f"
    "de"
  end
  language "en-CA" do
    sha256 "c072ebc3eefe4fa28d499a359c7917beae4fd0e157be0e17728fc48b5dbac82b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "81df23923736a77f5a41a401699880c433146dcc3b4f86e96a772e217c0d8645"
    "en-GB"
  end
  language "en", default: true do
    sha256 "58ebf3110afd3ebd6a8ce35046c84d848b9f71c811a22f7f51cdc832758ef748"
    "en-US"
  end
  language "es" do
    sha256 "f5314fa016ee5737fc2a71a889779d558a1a7d255bd138ab07f03bf8eea01d24"
    "es-ES"
  end
  language "fr" do
    sha256 "12be60c30ce60115644574b99d54bce072fc4cedfc1d8358662e1cbb71069413"
    "fr"
  end
  language "it" do
    sha256 "9c34f20465e068fb824f9b793dffc11b8816ae31ab493862ed8bf80ebf3b436e"
    "it"
  end
  language "ja" do
    sha256 "a7af6e20416973cb3dd786e9753e612e635cf02dd33f0e7e121299888a20d40e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b2b5d63a8a12eb567576dd0b785a539b96aa5759201178d2cb02dde2cfb2637a"
    "ko"
  end
  language "nl" do
    sha256 "46ee297e26978a031888729f4b648d6a887958d188608d1b9037ab7a7e2bef38"
    "nl"
  end
  language "pt-BR" do
    sha256 "aaf0421df1a996f69fc856091b7eeb7b4b4208539c5cd53316bdb9cb52785459"
    "pt-BR"
  end
  language "ru" do
    sha256 "c23659803f959fd967d75ccca45bd09d60bbdc372132367434f080fb7172ef6e"
    "ru"
  end
  language "uk" do
    sha256 "6e1b5f40332fd7e30c9b9da4a68d3fe0120f53411d3a1589d29e4699435b1fcf"
    "uk"
  end
  language "zh-TW" do
    sha256 "67f073a2d1568331e2ddacc9f9eb5f9ea607b6e2417cfddc79bcb2bc35291abf"
    "zh-TW"
  end
  language "zh" do
    sha256 "c4f11b019adfaa77e330f0b652835d1b16981084b37e758e7a2c6d15f6c5408d"
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
