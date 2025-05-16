cask "firefox@nightly" do
  version "140.0a1,2025-05-16-09-29-40"

  language "ca" do
    sha256 "808e33ed3c6fae3ec2e8a040bcc48c99d404c1c5de2336aa9c3dcb79d4cf28e3"
    "ca"
  end
  language "cs" do
    sha256 "a60b3a828f7e7c98d6765a0e87a808c169e4ad108e5fc3d3cbb14d7fb423ed07"
    "cs"
  end
  language "de" do
    sha256 "d8c212f6c44142d3491d0eebccfc07a0cdb68fca5b7f98fa27ecbadfb751a146"
    "de"
  end
  language "en-CA" do
    sha256 "3b52cbccd5a37d412470725937b45e0dfbf3f5cc701d503706e238a956d3e98a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1ef198704b66294054ca839baa8e742148490534146440d714b303740a2582a1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "334a83153c8f49098e41470df59910bdfcaad78ea4c22f0317e4f644abbcb960"
    "en-US"
  end
  language "es" do
    sha256 "9be6ac2d976535a4d04c2d7cf06992adb934dd57bba9f0266cc2678e75f98cf2"
    "es-ES"
  end
  language "fr" do
    sha256 "37344e9778939199daa82af17636d21dbfee4817bfefd2d3ae7b08c4df87bd6e"
    "fr"
  end
  language "it" do
    sha256 "6be4847465d89abf50c1fdf80b91bf6ca7e9a232ff46d1e7e0e0bca7ae215d76"
    "it"
  end
  language "ja" do
    sha256 "8f09a43767290310d277a932f31b639b78684b04761199f12cd9b7dc135cfa5a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "938f818ea109ba6e6c60871d46acb72475f874f87e6b978e4208c8fc9a79ddf9"
    "ko"
  end
  language "nl" do
    sha256 "a010b208697353fc135ff98b3758940ec4b328b2f20171478f35be222ceb4138"
    "nl"
  end
  language "pt-BR" do
    sha256 "04f8271245cf536be8c88e47fb2693dc5d312924fdfb60908c2e3e95d729ae2c"
    "pt-BR"
  end
  language "ru" do
    sha256 "0429a672deda104473beceeb2d0761bf71881b9c163caa157cc1a45153e0457e"
    "ru"
  end
  language "uk" do
    sha256 "d0a7899ef708a8df596c6631b40c439892668144f32e8db5958624353339e954"
    "uk"
  end
  language "zh-TW" do
    sha256 "eeb6a78f53df892c82a1a66a3513ea0604a38ada8fa7378ce253020161f766d0"
    "zh-TW"
  end
  language "zh" do
    sha256 "08596d7ebffe6ab9fd5c2c029bce00677d60a1285b3612a1d173c2ee1d818ff6"
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
