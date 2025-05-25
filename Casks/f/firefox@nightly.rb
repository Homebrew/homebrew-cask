cask "firefox@nightly" do
  version "140.0a1,2025-05-24-20-06-39"

  language "ca" do
    sha256 "28e6462d5ffc06645e7fd1bab006d3d3ba002beb413bb67b1f32bc9d7283e596"
    "ca"
  end
  language "cs" do
    sha256 "9eec2008e863c6899282a366e81391eefee03cc4709302030713521d415e66c7"
    "cs"
  end
  language "de" do
    sha256 "eb81738a7033c7568dad36bbcab6657953a0f7d63efa2fb692653e571f914dea"
    "de"
  end
  language "en-CA" do
    sha256 "84a67160e8dfc31e89a4bff1d555fe93bb60c5350b0f8846eb7a993465708b6c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "53c2e2c8d1eca6c4125beb732787eade037fe2b0b8ec05efe170eaed4e36c9ec"
    "en-GB"
  end
  language "en", default: true do
    sha256 "739959dcce9d2ac4b4ab62b48875af35f94b4eec6c7774495129c5914045bb68"
    "en-US"
  end
  language "es" do
    sha256 "624aeb107a7bd13072eb5a490cd1192bba0da9c4b200d1832fc1b010aed07d87"
    "es-ES"
  end
  language "fr" do
    sha256 "8336b8ec66a2916e20cbc72391a0e86138a5bad0d588fecf1947c8b410435dab"
    "fr"
  end
  language "it" do
    sha256 "86305592fe031f6fc27f51086109a6e31a29583317219033a381f7175a398dfb"
    "it"
  end
  language "ja" do
    sha256 "b3a5dc42a98e6452a29024c625cb9164ac19e76139b8adbc86791a34d984a028"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ff8b66af813e7805de653016346c57c34ee467d121e0f36d5aef1758d308c6ac"
    "ko"
  end
  language "nl" do
    sha256 "e3714c8cfc13b90ba64ae2fce77808903507acf1b3e3a4739b406e18c172c6e1"
    "nl"
  end
  language "pt-BR" do
    sha256 "e666f7abc98a1592433154511fbf8ff7cb04c732b319639fc60fe888be148f28"
    "pt-BR"
  end
  language "ru" do
    sha256 "66fbd03f20d749a78d4b6c3e454c3085e8971de088d75737ed466f84a16a9e91"
    "ru"
  end
  language "uk" do
    sha256 "b6a0ce68aa5a8c5bb9e8fafa9e4200f1c5f8248ef20287862bb03c984162b7b6"
    "uk"
  end
  language "zh-TW" do
    sha256 "08ef91ff803dec0e39f09675cc88ac2bc26aec712af0c4bf87f3482d8023ef1e"
    "zh-TW"
  end
  language "zh" do
    sha256 "7956c5f1ae16df9af42726fd5ae4a5ebca662dcce42d22b8a55a523d9955b961"
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
