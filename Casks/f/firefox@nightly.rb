cask "firefox@nightly" do
  version "149.0a1,2026-02-08-09-17-40"

  language "ca" do
    sha256 "63ef5945cd76519589864c590d5ceb4c6e3bea4a0506ea45c47f0c7852efd6e2"
    "ca"
  end
  language "cs" do
    sha256 "ae4b8a1f2d0f5d79e8ccf3f8de31f21c2d778d793fc7b4a9a5e0e83042f3a4ca"
    "cs"
  end
  language "de" do
    sha256 "8e199046a9bc6b23d337234b8c3718d09c6a14b19289adc474cc5a4835626c8c"
    "de"
  end
  language "en-CA" do
    sha256 "ef79937a57b45d68059701b819621ef69cb63dac118aaad9af938eb3533205f5"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e2296832d3efe1db59be4fdfa5c40e4e303713e0cda556ccea22196dab9f3196"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5e39c09c38885936362eda0860967d5ff41385234d35cf616bbae7bf26e18cff"
    "en-US"
  end
  language "es" do
    sha256 "93fab2f51d8d9d4ea2ab9147710a61a5209fa41c98ef11f39721d5bcfbbd20fb"
    "es-ES"
  end
  language "fr" do
    sha256 "56c4202e81260f325d7161743094d8069b7502f9f0e6e5048ce77a0f7626f0b5"
    "fr"
  end
  language "it" do
    sha256 "b6be27cc4b6857bad4422549ce7598be730829c36677fc2aa746ca36885f2e9c"
    "it"
  end
  language "ja" do
    sha256 "3ea75b214ade98fcc4b5ca2486f791c2078f96877ccb469f86be2261375b0b7b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "5ae9a0cdeaa90861b5e68f03992d91bd7bc77f9b113a4513fabc6a141c1c9d18"
    "ko"
  end
  language "nl" do
    sha256 "5202da4d940df2a8c57cc536d85212c868927d3bf36c6cb3bdcd2506792bc129"
    "nl"
  end
  language "pt-BR" do
    sha256 "a32c330976b15ae460d50b34f0462042f9b098535a2337915a24b33097ca822a"
    "pt-BR"
  end
  language "ru" do
    sha256 "5a28657b73e93d5430dffb3c64b2d6aa7bb931ee2fc690d7e78969f502a7c1fd"
    "ru"
  end
  language "uk" do
    sha256 "0c825921674509a4a3d8529089185ae5f085caf939662a05f48a12dbab28a15e"
    "uk"
  end
  language "zh-TW" do
    sha256 "4a5c9b5042d7bd167a622f28a35bcc172e331a38eb1f525cd64e34e94e73f2e3"
    "zh-TW"
  end
  language "zh" do
    sha256 "d055369160e8c66346025a2ced2550943f87784befcdafcd4b8bde6e3753b5ab"
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
