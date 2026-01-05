cask "firefox@nightly" do
  version "148.0a1,2026-01-05-09-53-46"

  language "ca" do
    sha256 "fe4cff8cef09d665f56dac4fa7a03705c5e07514ff8ba4064648f1851dcc8ca8"
    "ca"
  end
  language "cs" do
    sha256 "d8aded836276d7e545cfefea2d57cc81964b584379beeefa60e4270f3ef2f823"
    "cs"
  end
  language "de" do
    sha256 "71f08a76cb77ee370400c4b82827932f7d2b3fc543d86076c5eb7bd59c9577a8"
    "de"
  end
  language "en-CA" do
    sha256 "f6c67e2ce5504c6ce9016ccfd7a9be642de0f46d0e4347d23d359464f2b51763"
    "en-CA"
  end
  language "en-GB" do
    sha256 "451edb2c0563d3fafb5c2412b56991a1ab3604dd0bf67b7032f1436aa88dd72a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c78ee130b74e4de1e43adea8ec3341f5a77e23daa82345d443f579f4d1a2021d"
    "en-US"
  end
  language "es" do
    sha256 "e5f1e4a554bf07ee9452e2b2bd33f95dc1e84eaa01d6985aa3086653c12b77be"
    "es-ES"
  end
  language "fr" do
    sha256 "a284155dc726f2b0cce991de6a86e0edabf4a0a27b89c4c91eca522394af3ece"
    "fr"
  end
  language "it" do
    sha256 "7e87cd3a90711a4185545ccac9f2e73bd9631bda588fdbc1ea3b0e620b3bf84d"
    "it"
  end
  language "ja" do
    sha256 "53d75ca5df9f640c5c8ed77f6d61f1bc7908434f681de59c73e30619063c6834"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f585c8342c0ee59862319af48bf884e2468736e33989d77e3f4effd11455ced2"
    "ko"
  end
  language "nl" do
    sha256 "63a6a9508c25d808c87ec128f9c1ceb1918220d9466b98cef22166460fb3e703"
    "nl"
  end
  language "pt-BR" do
    sha256 "b1a927530278954c4622f907170b0e5110072eab99da0d64b662959dbf8a4022"
    "pt-BR"
  end
  language "ru" do
    sha256 "7b2331e1a38483fef85ea739579f31be5211bf79c7387529aae316392bc056e5"
    "ru"
  end
  language "uk" do
    sha256 "cba410f4efd43bddb2e6e32b5b5bf8be9ea65ac1413947949031ad020707f39f"
    "uk"
  end
  language "zh-TW" do
    sha256 "56a2718cba4a158d845967a20f3a9561a4c2c75c4d45bcabe9db90704e33244a"
    "zh-TW"
  end
  language "zh" do
    sha256 "7b7046ea13b9cf4a694722f60ebfc87f61353ab0c2758a67329df6de13e0bb71"
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
