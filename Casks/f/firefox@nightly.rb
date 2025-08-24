cask "firefox@nightly" do
  version "144.0a1,2025-08-24-11-12-31"

  language "ca" do
    sha256 "f7959d8784bc2341431267759ee0b4d327a3aaeadfc31d522784241bc611103a"
    "ca"
  end
  language "cs" do
    sha256 "c1aad0b19e6605391a739b65fe8c8c63ba427d205a634b03266bc0b4662ebdf3"
    "cs"
  end
  language "de" do
    sha256 "9f6470c41490730762d2a29db079833ee5fe6d5dfddfb4aa2a573577284a48a7"
    "de"
  end
  language "en-CA" do
    sha256 "5e804d9493fa9c6db9cef2d7fb60c2e1460f7ae09f665dc6134a1d86452df636"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f77ff17831d8d7abbe16b677e499715fdc4b0cf47304b87967588ecfac34cdef"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ced694bb5ab1e11971272a7131487c4814389b5fcd029f500fba46c5efb37290"
    "en-US"
  end
  language "es" do
    sha256 "70b59eae827ab5eac49f1a6492d790c24951c6b0d23e9a6fddffff0cb1b72964"
    "es-ES"
  end
  language "fr" do
    sha256 "f1ebec675bfda86c54d6291cbb8935fb5a31fd5fa18a1426dd7091a255c066b4"
    "fr"
  end
  language "it" do
    sha256 "1654ab9051fbe4c7ee89f0c8c219c5fae1dbc45603d3e0a18683777278827705"
    "it"
  end
  language "ja" do
    sha256 "6547bed741e0dfba00dd732c6e829c6f003b7671f1d92423f73244a3c6cdcd74"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a82993df926fd0b50a5d7ebfa0b58ff6792e68de01c258f00bd3e7491c4a5854"
    "ko"
  end
  language "nl" do
    sha256 "32e8a24acd572890cc99cab6028465c5debd8c6f3d1d825c47e199cc4b4a4a73"
    "nl"
  end
  language "pt-BR" do
    sha256 "882e3f27b946e1a6296c66f8c54e9cd7a9f2e5a810b14cb6fbf9795db8ff4290"
    "pt-BR"
  end
  language "ru" do
    sha256 "44a70d289dfc764a4a05cc9c4f61830217f085cfa072e8871f1462d88ee6c5b2"
    "ru"
  end
  language "uk" do
    sha256 "99be669827c06fa95f7be9f4df38704f4c81af8a92d3dc52a08d3a6cf621339a"
    "uk"
  end
  language "zh-TW" do
    sha256 "a754a301015389c341cc92cb84f9e2567c6c0b8eaafba52378ed0679cabb07e8"
    "zh-TW"
  end
  language "zh" do
    sha256 "0fc05b80b34443cc97be740c9fc807e28d4f029a238b37832156ee4d070db47a"
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
