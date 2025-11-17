cask "firefox@nightly" do
  version "147.0a1,2025-11-16-21-09-36"

  language "ca" do
    sha256 "27b3276bcd443d03fce637dfaf77b2ebde8b5a95a02d238102d40382285e6aaa"
    "ca"
  end
  language "cs" do
    sha256 "4f7f1c3018147eef4bd65cae9de6624af322e0b6b2df9f751f617df520a96db1"
    "cs"
  end
  language "de" do
    sha256 "107fbd04eb783a372f847edf6d44c198c5720be35927da94a9f7c20d4eb94465"
    "de"
  end
  language "en-CA" do
    sha256 "d9d19566a235c55aa34acc85f12be1dfcfcd63263bcff66e9636972608f26fb2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "19419a1cdb0e3af137fbe88d0eac70f89aa876651a78c3c9f5a450e47df1ab56"
    "en-GB"
  end
  language "en", default: true do
    sha256 "bd0faaeb7cf4e4c24145b9759a602b4f094b88fdcda6372cfa0a330ed9250e74"
    "en-US"
  end
  language "es" do
    sha256 "57369bcc1e9364c9c7d4a09a20bd465eb902e0785ac8f14f9e1aa0b760ddbec8"
    "es-ES"
  end
  language "fr" do
    sha256 "fd600d0a301f1a5a439b29b697b46a5a66cef71052636e1279b50309d63287ab"
    "fr"
  end
  language "it" do
    sha256 "166ef5c76e0fa5e8bbc4ef2f65c38e533d6c399f2fb3f82cdfdd7ee67a4418cb"
    "it"
  end
  language "ja" do
    sha256 "a75a03ced76a1a5f2b71feddc7438aa92b177092b6045a7475e8df52114be430"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d8ec34259ef0fc3cb4d91d679cbe79bc13f9344eaf40744ad5c8bd0d646c2a12"
    "ko"
  end
  language "nl" do
    sha256 "c89da74c8e91766ed9b0052c97030bd63301e7ddb36151c0faf13d82708743fa"
    "nl"
  end
  language "pt-BR" do
    sha256 "4c5713877df889ad3403bcf49fd1217b086309c739b3e30334bd3b705f2f8fc0"
    "pt-BR"
  end
  language "ru" do
    sha256 "a2ea23dba64261f01a3dc84667d693b15cb579ba547a405b55d7855b2638a71c"
    "ru"
  end
  language "uk" do
    sha256 "b940cfccedd9ac5bec9a2a6976a3955f4330276f74d7136a20e05291cc8fc065"
    "uk"
  end
  language "zh-TW" do
    sha256 "26bb084360e5e53de4ebd6a6b6f8b59126c927ad9eabfbf36a1a2780976d1804"
    "zh-TW"
  end
  language "zh" do
    sha256 "4e4c46fb332ab4b28dacd49ad60b8d99b30145e5063c37d03c6ddc023a4249cc"
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
