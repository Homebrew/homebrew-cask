cask "firefox@nightly" do
  version "152.0a1,2026-04-24-09-31-21"

  language "ca" do
    sha256 "ad235e15b3167ed71edab19745e040c8d5620b3708218d9e54a3bd681771d0f4"
    "ca"
  end
  language "cs" do
    sha256 "060dcd0559a02cfa82a9fdfa4336fd127b04eaa986b933d879d3cdf8d1ffa668"
    "cs"
  end
  language "de" do
    sha256 "6d612d777288bc45e9ec7130f6159ff126b379471d4fce501f16d7b588e8aff3"
    "de"
  end
  language "en-CA" do
    sha256 "0c5fcd27f4f32c768a0021277ab54da0acd9589450d15fd9ef4311f62d463922"
    "en-CA"
  end
  language "en-GB" do
    sha256 "359193d01966f76c49dbb866fa8ae879f8a1c25a175e8bf012220abf4d21a754"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7519e4811e9c13ea1c5eb8c307c61df504eacead620197ca8130ce0eccbe3293"
    "en-US"
  end
  language "es" do
    sha256 "ce895d81360a0b9d25acc46d5d3bfc60be6d5005eac78faa02463c54acd3d0f4"
    "es-ES"
  end
  language "fr" do
    sha256 "8732f0cfe76f75e6a331973b6aaf270929615bca83536b539b50497561052a99"
    "fr"
  end
  language "it" do
    sha256 "251ef268b3b8081ce86728e7324f6e8a248f80f298a4dadcda2929e002078801"
    "it"
  end
  language "ja" do
    sha256 "d331eaaf305faee976ff9fefc593f00a8bde8eec4094c22f416c96d3e350e1d6"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4bf15e35b275468da66f068504fdbeb972ee8fbef0bd83be9e4d74b0327adb18"
    "ko"
  end
  language "nl" do
    sha256 "167119dde40425b5f98925187f3fa3d02ac6d305ab1191839fb07ddb785fce7c"
    "nl"
  end
  language "pt-BR" do
    sha256 "fe2ffb6e76e7067a8583d84af802d007aa6065ea032a9bcaa3bc417fc77f07fc"
    "pt-BR"
  end
  language "ru" do
    sha256 "58c5329ed8c6ff89e76d20b094d652f72cc48bbedb457e2aa9c96c38200acfce"
    "ru"
  end
  language "uk" do
    sha256 "b3343c1348be73a82d8620a9a622bc655c8b28cb92e578bcf1c7812ec0a63d80"
    "uk"
  end
  language "zh-TW" do
    sha256 "5103dd70d5e182376f2099df068f40fec5ca3d18a8fc851fab6c50dd76f0e4de"
    "zh-TW"
  end
  language "zh" do
    sha256 "22bd4da1e5844e5261de7448b74051ad50dc05ab2dad1bd3d9ae31a1d50b6af2"
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
