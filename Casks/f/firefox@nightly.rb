cask "firefox@nightly" do
  version "147.0a1,2025-11-13-03-58-12"

  language "ca" do
    sha256 "245556223eba105e33e3d5c7773e2163ab8d8ebe6298a4f248b5ac46d31f6380"
    "ca"
  end
  language "cs" do
    sha256 "bbdd9df8beb17bd7dd3c5f94272e2aa0c9a37b2b651ea2bd0345565d2800d190"
    "cs"
  end
  language "de" do
    sha256 "2e6ed950716c8b2810578d0f90393da904ed853dd18c6d655a3913a927381a99"
    "de"
  end
  language "en-CA" do
    sha256 "1719d238abb65057c1151bc753f3d1b648ab5440e41cc07ddaa729bcee5a5c60"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ffd753debb8ff59bf8deb18524db811ab26909f7511542f9a46c8adc3f82d532"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e7f3ac4c1dbb48c5a54843c90616487afa4d704b5fcd744f75cd843e4d6da3d0"
    "en-US"
  end
  language "es" do
    sha256 "33852eec977a715f60c4cc257341afa6b18ad2ea543bb97943af89d02461b9ab"
    "es-ES"
  end
  language "fr" do
    sha256 "c0af1de6f2540fda7f93323ba4285f4131c71c6fe48c2ee6b16e5bd4ccb4a388"
    "fr"
  end
  language "it" do
    sha256 "9e9ca811f0c3488513a106ce96c654e1ae9785d3e13291b7810630c0625cde7d"
    "it"
  end
  language "ja" do
    sha256 "deae256badb007909b62ead502de34e133d55ed4ec1df70da436412da4edf1e2"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ff0797acdc1cc3b85ad008a15f5a9609ae4518238e32b209c02f64b529605b37"
    "ko"
  end
  language "nl" do
    sha256 "3a89ba8212909f2180a101b616ed9d1c454e4dd12f294ca29e82710698b26f9c"
    "nl"
  end
  language "pt-BR" do
    sha256 "24f27159eb0582e1c6bf3480f6004616223e0468d4c712f93afdf41f0c83c041"
    "pt-BR"
  end
  language "ru" do
    sha256 "f8eb8feae21bf90237813784c9d6efc78a14e502ac30cbb2a8247485af327a71"
    "ru"
  end
  language "uk" do
    sha256 "c733fa77c4d0348a35f8e77d99cef619cfc3f2cda834103429ff9f71c092074c"
    "uk"
  end
  language "zh-TW" do
    sha256 "ce24c9d4c088840b808351a3e1e88b3ae323ae930c61f805c8599a7280d2ae04"
    "zh-TW"
  end
  language "zh" do
    sha256 "e236e3cbebb6440b85f7feff9b444b51bb85d85e9023da287870ea83549cf90f"
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
