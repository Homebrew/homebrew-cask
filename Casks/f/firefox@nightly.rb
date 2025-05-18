cask "firefox@nightly" do
  version "140.0a1,2025-05-18-09-14-32"

  language "ca" do
    sha256 "8b5de1eb4cfad0f34e4edfbefc59d9e9fc15cc9b550a9d4b289f97b721db0f57"
    "ca"
  end
  language "cs" do
    sha256 "6de884c6e428518f651ebab3bc12eff1c749a7a82d752c574db5921050ea146b"
    "cs"
  end
  language "de" do
    sha256 "13d39d5ea18409fcea342f40f74af10a193ea97a6993dc07e0dde8482846e8fd"
    "de"
  end
  language "en-CA" do
    sha256 "df19433124a00853d4062199c94e3186f0678d6117a9dd6042664b2262845402"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2539e88dd25b99149633dd08625375834937b8efdb0cfa314df1cf31cd22ca4a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "023f33ba4ea2c85354694ca54955bb80f80bbc7d5cdaa4930b0d36e0faf19fa9"
    "en-US"
  end
  language "es" do
    sha256 "d5abdb7e23cf826cfddba80405a71e8f0dc062c93e3d5c1b727b4718352dc046"
    "es-ES"
  end
  language "fr" do
    sha256 "f4da220b6b79290f96c8d23ebf18382c79ed787009b7c62b65f0128d99e52c5d"
    "fr"
  end
  language "it" do
    sha256 "87dddc7321cc5892cea309cf75397e6c20128a248c9817fac93da8a6c04029c4"
    "it"
  end
  language "ja" do
    sha256 "f34c4e92d9f340f484ab54dfaf01ee37f2229d30eb88b702eb452bea72bf88de"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "5a41017b56dd086d11cdb994bdd58b53b99722abf7f48268db4cf9ab470b3cbf"
    "ko"
  end
  language "nl" do
    sha256 "c604700a11f7778a75d201161fc14a5efe0ef99486406d6520f3f2d5421e5014"
    "nl"
  end
  language "pt-BR" do
    sha256 "cb2ee9c78da3ba30a2a9c29847394ae5fd95c629c19ddc870676e1cf2a87be6e"
    "pt-BR"
  end
  language "ru" do
    sha256 "40d8011c8141c87d50b50213d8e2cf089f04be4791bc19971cf8a2bcb82975f8"
    "ru"
  end
  language "uk" do
    sha256 "e842649fa02cc4894fa1aecb67fdc0b862741d41570757a7bb4610816e2ec795"
    "uk"
  end
  language "zh-TW" do
    sha256 "37eb8b39f8560a19c0fb3d10acfa473332bc317b19a6c44b426230bac086699d"
    "zh-TW"
  end
  language "zh" do
    sha256 "79053f0068487bcb5f85bdc32eebfb50067f698b5009c6031bf2c5f976a9ebdd"
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
