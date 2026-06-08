cask "firefox@nightly" do
  version "153.0a1,2026-06-08-09-32-28"

  language "ca" do
    sha256 "e9762894a3f45f560db8953a80854c59f32b67055d861c08bc71f3551ca8225d"
    "ca"
  end
  language "cs" do
    sha256 "51747e4f735d1d745404d7603ef895132af3dd2065a9b53315ccc4d34b342c02"
    "cs"
  end
  language "de" do
    sha256 "81f846510b632d1de7066136683aa8d6bf4b69d188f98dd6fe0d5a518d0c0013"
    "de"
  end
  language "en-CA" do
    sha256 "2a963cbe309278b73e56cfe5cd8bac9b36e53b92725102fdddf717eee31a4cb9"
    "en-CA"
  end
  language "en-GB" do
    sha256 "10b283baa91df85d31f1fd43c33846a754472f66a7c51539534cbc5e45bb1e36"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a7572bbe94808e9063e728008b37663cab6b37bc78d5020b54906ac6a9e68a9f"
    "en-US"
  end
  language "es" do
    sha256 "b5a63f663c853e1b919465de00de1c2086d31d12917a572e462e0833cb673b36"
    "es-ES"
  end
  language "fr" do
    sha256 "3f4f910c2074487d2bc8c614569dbd4ad8212e2687aedce8baa658230a68a762"
    "fr"
  end
  language "it" do
    sha256 "3498f6c88253e244a5c1dbc92852dfefced2fd37589ac2170028599d5be67685"
    "it"
  end
  language "ja" do
    sha256 "36979b0a16c978913177bccda5dcc8318937121ed420559c67f8ef82640b3ef5"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "7106fa50275fe2847b650cfe9a9d18966c19360090bb6fe00f57b2e20fd88abb"
    "ko"
  end
  language "nl" do
    sha256 "3bac3a62de98ad73acec1cc0b8246135fd2e9f2ce9d7e2ca1c76baf59e1ed10b"
    "nl"
  end
  language "pt-BR" do
    sha256 "a627d5ec741919c9f9df1598201cc5fc829579c46f9e44b6347d54e8dabe87d0"
    "pt-BR"
  end
  language "ru" do
    sha256 "25fd71981ecd0138564a234241c9f3169ab6d363fd08ff1b5ac2a5888f5d3020"
    "ru"
  end
  language "uk" do
    sha256 "e915cec403ab103983068cc3acd1b5c8998d81c02ffb1b15959fc31533546569"
    "uk"
  end
  language "zh-TW" do
    sha256 "64fc5bbf9d9c3431d1880ea4bb4156e3ca01adbbdc7edd70fdd28ad57438f1a5"
    "zh-TW"
  end
  language "zh" do
    sha256 "a00cd026e93c9546dd56a1c89d1193616bc3446e2b3388b8f61af39fc3439ecb"
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
