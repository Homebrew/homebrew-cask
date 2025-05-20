cask "firefox@nightly" do
  version "140.0a1,2025-05-19-21-38-27"

  language "ca" do
    sha256 "e187399406d54a1c14e920b4853ace09c7b2d3328c547a1931cfab70fbfd297d"
    "ca"
  end
  language "cs" do
    sha256 "0a3dbd64c2720c1cc460a0512988c8aa185df5176676cf5eef7e819a562a702d"
    "cs"
  end
  language "de" do
    sha256 "96f2eb17ebe5a23acf049ab1020806e0daf8ad9da28d963eb45eacfdca71e3a9"
    "de"
  end
  language "en-CA" do
    sha256 "1ae3e30bacdda803c70a9e43703860a318b014daa2efd02e2cbcb628b7b163b7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d4ff40393ba514df4ea47441c76d58c208377c0572272cfb607f631fce9f13f1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5c8cef055cbdad90892254a4487764c66346fddc32f42cbb23d27ca7630a14cd"
    "en-US"
  end
  language "es" do
    sha256 "b7af6f2647da3597ebc6c0be637dc85dae27f2d026d5600d6a3e40fca89a4c7e"
    "es-ES"
  end
  language "fr" do
    sha256 "8b545afd35e53b24c9bdb0c70aa4ee813b63f4aece5529cef55329888270ea33"
    "fr"
  end
  language "it" do
    sha256 "67206be0d7cc416611adb1e529644cea7f97a9af996d137cb574e73961056974"
    "it"
  end
  language "ja" do
    sha256 "ad9c553580800061eb16048c67c71050da14d363287f7e7ffdd7551fa56bffed"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b6890ff3ad43c6e391837fa4976a87bf34bf19c2514d4f03f026e7d3322d660a"
    "ko"
  end
  language "nl" do
    sha256 "cea88f93a6e874bb120d2bed7f7e076a110b0f3d325e4122cfd587f67e9fd392"
    "nl"
  end
  language "pt-BR" do
    sha256 "c5cd9451472af7c5f76152935b32276ff18f8e81e0fec33ef3215c858ac00887"
    "pt-BR"
  end
  language "ru" do
    sha256 "f68bac0d10853ddb2ff010a8e0f046429999632ede50810a6524b6ae8098b203"
    "ru"
  end
  language "uk" do
    sha256 "0c0338d34a0e8df912d81b57a919c38ccb3b516f82dbcef630f78329883060a7"
    "uk"
  end
  language "zh-TW" do
    sha256 "f74833112395a26245830cd45e7b64f710e011534faaf709f11433a521836f33"
    "zh-TW"
  end
  language "zh" do
    sha256 "0e0b0f2814f0705888e822ebaf83518d96f8eb4a3f6cde80b135e4aa61cbfd48"
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
