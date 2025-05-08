cask "firefox@nightly" do
  version "140.0a1,2025-05-08-09-24-40"

  language "ca" do
    sha256 "b3095de492d8d19ca0e15853428a972cc4280af50285fe232cfdfca083490099"
    "ca"
  end
  language "cs" do
    sha256 "c67b79818421ec1dfbac3b873539270ea012c391a4d8620ed0790b3b5da84501"
    "cs"
  end
  language "de" do
    sha256 "5d135efdb7e96fe8a716fe0868cbe0a79607f2b92b25a1cbb818ba253c7596ad"
    "de"
  end
  language "en-CA" do
    sha256 "e9b1e3e6a3589d0a1addb9683e43e714f9f504bb75441c95acd6d2d5f989c635"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8ff39e0d1346a2c0e8642bdc69c30d8651ee2f9d47fd291caeadae306b0904b0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "93d5cbe4209ae8a056005993c11c5edf21fb5c5aa9165e769f12460a4dd04ece"
    "en-US"
  end
  language "es" do
    sha256 "e731c6dc8b1ca1df4b306a33fe51bb47c86b795d37aa64cb6fb4d0d98d98b61c"
    "es-ES"
  end
  language "fr" do
    sha256 "cd96df781a371dedecb2a2ad60521dcb4f63e484c4a8674f89446e26a4843557"
    "fr"
  end
  language "it" do
    sha256 "76f3d15746b5cfdf82586f4a6534ec4b260d68860f9642e04bebed33b94be21d"
    "it"
  end
  language "ja" do
    sha256 "0bcac282d2938c41b37a744c79631bed8292cccdc87d6bc4877b24d4855f4d6e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0e33d695f4df7b806c7fb73fd724e3a3e559c9b85b6235eeac3377cd6cb4383b"
    "ko"
  end
  language "nl" do
    sha256 "05835b957cf0705975ba27e0371dde11f53746033b7788036640f864df8c8ffc"
    "nl"
  end
  language "pt-BR" do
    sha256 "ffe5cf1db1d3c833f977d822b989878b6ab07ba07ebe7c8fced0e0ef68030f3d"
    "pt-BR"
  end
  language "ru" do
    sha256 "70f9e852864cc5a6d6f4c9c2bd6f119de46256992feb06c29f249cc9c10f97f4"
    "ru"
  end
  language "uk" do
    sha256 "f43e2387adffe58177d40ce28ee23fb0bad4ec6c7da886c591c7ffb309e46081"
    "uk"
  end
  language "zh-TW" do
    sha256 "c2a9c27f834b941e4b35a519640bf7b4bba3d284f6f4a21544724d3040187195"
    "zh-TW"
  end
  language "zh" do
    sha256 "f7d339cbfd9ab7d292a48acaaefed9b60a81623bbf205c0880548c2be2d75e99"
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
