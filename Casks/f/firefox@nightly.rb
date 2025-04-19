cask "firefox@nightly" do
  version "139.0a1,2025-04-19-09-46-13"

  language "ca" do
    sha256 "222185c42904794b4121c20062ebacf3c2fff0fcfba3f6b92fc9f20b7b7448af"
    "ca"
  end
  language "cs" do
    sha256 "119c9ae77d18726ba68ebaba13d219dbaeee43803c5e151837a2e86c2fdc6a1e"
    "cs"
  end
  language "de" do
    sha256 "3573635064f468148bd2123dbf6178f96986c438363c26700216fd388c025970"
    "de"
  end
  language "en-CA" do
    sha256 "0f5f85ef4fa3b78fa4735bae1fb94da549f0a8bd1865fc2e52efec5af4f1309b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a5791321568444aaf9c886b25252c83e5217da170381d90e01c4643f4aff8514"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2831865387b66c2a1f8390ed2fe24c2044da19c52f2b44ef2a249d384b724b4e"
    "en-US"
  end
  language "es" do
    sha256 "d2a241748a18bf13f37891b95eddab2240008a934d923969b216a9d4c5399ca7"
    "es-ES"
  end
  language "fr" do
    sha256 "869b10b00e76d0a99c4529cf38786a262e2f7c16bab19be41a3fcbe2d91a3e51"
    "fr"
  end
  language "it" do
    sha256 "59ed6014d056e5e60c85a8266353fe0e7edd2df37e720459b5b19a3a233639df"
    "it"
  end
  language "ja" do
    sha256 "f73572e1175229e60b446af7c7b0c5657927f66669ad1bd20a482221a6ec6e5c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e5121f46d8c301579799553e947616c5cf4ae22c33389577914a0f26ba783099"
    "ko"
  end
  language "nl" do
    sha256 "53db55fc29031c8fc8ce0d5a27f83660cefc39fcbfd312f13295fe2b6fbaa0c1"
    "nl"
  end
  language "pt-BR" do
    sha256 "f369adac3a86c3cab5539b4acc576af575237b8c070252560382aa825544dd71"
    "pt-BR"
  end
  language "ru" do
    sha256 "a6944dd359ce6cf52e053979c901caf8392d15aab9cf0fe499df27ac93090d11"
    "ru"
  end
  language "uk" do
    sha256 "2e99c01120af5a5fcd2a816837c59eafe57304392509a0aa5e20783151471f12"
    "uk"
  end
  language "zh-TW" do
    sha256 "2f6b12e56090739098f1a7bae85e537cff4703f1e882f7cff74dff247bf1a576"
    "zh-TW"
  end
  language "zh" do
    sha256 "d578f307a7cff374f6677c23ffff24d19c00671a0b060657486e872ce80d0b71"
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
