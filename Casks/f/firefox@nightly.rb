cask "firefox@nightly" do
  version "158.0a1,2026-09-12-21-18-59"

  language "ca" do
    sha256 "095c1eb625beaf76f0d9a59928e5bbcad8d651b44c8bb8c23ee2c9ddc14f6f9d"
    "ca"
  end
  language "cs" do
    sha256 "96845f9f9b01fcbb891d7a197f72fd075c49f7624b4d44f17b9606edf21b9b30"
    "cs"
  end
  language "de" do
    sha256 "2bb93c4095244aeb99c72b8e4908a63108b51edfda41438c16a464d1fef861be"
    "de"
  end
  language "en-CA" do
    sha256 "39a3e1592b8ba3d9cb09390603dbbc7e874c09a283675c57108937b19910687b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f5d64db5eafb303489e0bac11d412e33ccd93cedf2305412a94ec1c6548e2bdf"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c9f3a67894ba3cf25b60c0421c032954f1e3ade8c325ffdd575c5350db3a65e1"
    "en-US"
  end
  language "es" do
    sha256 "fceb6ba4cda2bd64835d3665c5f13629ea4cd0fe7680c0d96dddb43e67123cda"
    "es-ES"
  end
  language "fr" do
    sha256 "28023da7c35a78788f1e3f1d5b1d4aecb19cbc5bc3738a50bbdf412a6b50699d"
    "fr"
  end
  language "it" do
    sha256 "14d7d1fe494770fbe2079fa5278c43eff82bf711bbe06c4202dd843fd6b2b8c3"
    "it"
  end
  language "ja" do
    sha256 "17f9b14ed6b581e5f0602c7bdac7a2e463dd7cce02515b019f43bf626a23d1ce"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b9d828036b7b287cdaf3f11bad09978d41b1c4cfc1350a7099aa3abcac632c51"
    "ko"
  end
  language "nl" do
    sha256 "528fe7bccbab7a1870374c1afe4854bb1dfd9f2872c418b0267ad2f88edc9782"
    "nl"
  end
  language "pt-BR" do
    sha256 "7b879cfe8582da9f94599223111af32f060a12377e142e21d65ca5c63d3fda3c"
    "pt-BR"
  end
  language "ru" do
    sha256 "c6ee5a56369064e4955b2aecad77d93b76b8f05c961a779b2d4cba8807a380e8"
    "ru"
  end
  language "uk" do
    sha256 "2de07c7acab28a2a8cacc51369818478661cdd09abc7dbbc230ef486cf90de26"
    "uk"
  end
  language "zh-TW" do
    sha256 "6d03693cd0e171ba702ee69be79501768000ea01b2e5552963a4d7b56828f896"
    "zh-TW"
  end
  language "zh" do
    sha256 "7a32539d13abbbc1370ae4b338d9b53026dc9b821cae84b6ab822a60f01f8243"
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
