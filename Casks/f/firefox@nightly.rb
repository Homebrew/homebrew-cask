cask "firefox@nightly" do
  version "158.0a1,2026-09-16-09-46-07"

  language "ca" do
    sha256 "c950a2a35b47b2107e779dfd71eec51f7db4fb4bf13d27c0250f1accd71b4ebf"
    "ca"
  end
  language "cs" do
    sha256 "3d91292a3b90d0983f1c4b3a2961f9c113f5e79945a1b1125e8c017404e20d4b"
    "cs"
  end
  language "de" do
    sha256 "28fcdff4d687cc3fcf978b8d7fa3af56aa4ef59061d594f31cecbbf2a29da7e7"
    "de"
  end
  language "en-CA" do
    sha256 "d899f9614c0f488e4e9c1de6f41fcf55d765201b75fedc37393640ee4fc8ecb7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "701dc1fee1ea09ea1998ed86872a8de6cd59820effd0b25a88488a08bf164300"
    "en-GB"
  end
  language "en", default: true do
    sha256 "48aee684b99ee383300f4ecd4948092d2f5432eea40d507c528189278eeba314"
    "en-US"
  end
  language "es" do
    sha256 "fc601bc2228fc8f83bc5f9651c3d296c9c680bd20724c981c60aad3931185899"
    "es-ES"
  end
  language "fr" do
    sha256 "fc5965e703f0c6de2007ea30fcb80589c4ab0f913863036182fdc2714f5bc60b"
    "fr"
  end
  language "it" do
    sha256 "9ca4e8c068fa4b15300647bd90c78d50408cbc265466ee3bcac54e4a60537718"
    "it"
  end
  language "ja" do
    sha256 "635709f4c1e9f1d0e69764ccbd4b42cdbec0de7f8d19423f535418e312160bea"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4822d3e67a153226fbeb9916174e0d39b6d249c5d63b2ac9b8aee80db4cd1880"
    "ko"
  end
  language "nl" do
    sha256 "5647aff9d2a21b794cfe4308671be5b6804cfdcdd3a24d916b9eef788f1e4d30"
    "nl"
  end
  language "pt-BR" do
    sha256 "d6d58ac1d17b079f25ae55de2d819734a1a4dc5c9c7fbba041e874722700a62d"
    "pt-BR"
  end
  language "ru" do
    sha256 "aa8e8f5677baf109461b52f235c65c29b6a11f023740c0cb2e6b78cd434ac327"
    "ru"
  end
  language "uk" do
    sha256 "aafdf0d731bb7d1bb518b9407612d210333a6c561455cd1da8f37f34dc3d3c04"
    "uk"
  end
  language "zh-TW" do
    sha256 "3438668676bdc815fea7b2ecdd473849616b7f7d89c3eb5f5635cb0dd0057aaa"
    "zh-TW"
  end
  language "zh" do
    sha256 "64474b43344147e1b7fde4ac1eb7228f0ba768440ccf14efbf72c34139fb421e"
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
