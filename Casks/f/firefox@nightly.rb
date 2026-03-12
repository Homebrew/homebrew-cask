cask "firefox@nightly" do
  version "150.0a1,2026-03-11-21-24-28"

  language "ca" do
    sha256 "e59e4e2fadc822b3a31ba3cdb18a11d575ed2e907ddd7c7055db0defa1c8ddf4"
    "ca"
  end
  language "cs" do
    sha256 "a110589c9161fc0ee2f144bd682ff208d2c4694d12737fe3ccb37121edc31786"
    "cs"
  end
  language "de" do
    sha256 "e8abc655caca17b3d8415304c49a165ffc7d384cdbe304e59eaefd41f605a15e"
    "de"
  end
  language "en-CA" do
    sha256 "be94ca7febd4f051f330b560419d6711be33ac8deeb5475f6846b913cb0398a7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "dda04627556ba3e709c838af5bb95d5b08115f373323ab302a29628fe08b5c09"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a4f17336ec3b10662abc8b137d9151ac6b55cc5ad517c430d10af40d6c77dd01"
    "en-US"
  end
  language "es" do
    sha256 "6b67276dc04de9f6b311cd355be943dadffafbc7839018d4aaadaf4e71aed88a"
    "es-ES"
  end
  language "fr" do
    sha256 "494d558c896c414d2d8c37b24ef41ef4693e6083fb788ad2f7c8d29039a87092"
    "fr"
  end
  language "it" do
    sha256 "383b6fc14f318fd8e9bcccb8d8858bf216c95fae8b517e3f70322b73a5bbc1d1"
    "it"
  end
  language "ja" do
    sha256 "c4b6043589ca3bf14f52661bccdd27a3cb5c86ff834f59b103bb27439f112db9"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "492c8f2ec9b9f12877bf62f7f238ff84b40d3566276a436d1a1ebb99af0945c7"
    "ko"
  end
  language "nl" do
    sha256 "aa65c4eba44dadd12ac68509df6dda9cf8a8047b7b5ac56a9437bb69cb42ad48"
    "nl"
  end
  language "pt-BR" do
    sha256 "58f5a36ccefa3542cb88b62ed607a2762bfa62a4c5bebf19c9d9ca92ada7d79b"
    "pt-BR"
  end
  language "ru" do
    sha256 "b1665fc9e0f42411914b628e1bc7b5c2b082c55906a3abe27873d81f4b47daa9"
    "ru"
  end
  language "uk" do
    sha256 "ceb7da0194bf0348b71c26fadc15ad6abbc40574a7e5fb4516647eefa83611c8"
    "uk"
  end
  language "zh-TW" do
    sha256 "713bce5d477e34915de4d19f3fc907783582e762a13091f75dbbdb5c7d2e850e"
    "zh-TW"
  end
  language "zh" do
    sha256 "65678e2dd09e384abb5651b4674c754f2c299326936ffd10b5756d5ac18fe968"
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
