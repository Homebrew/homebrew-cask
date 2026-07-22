cask "firefox@nightly" do
  version "155.0a1,2026-07-22-10-04-59"

  language "ca" do
    sha256 "8a1c43a1feeb40943ff8d282ed3bd1101869e2af79a8f54e70e09dc6b36ef045"
    "ca"
  end
  language "cs" do
    sha256 "a2576ef613e83d2ca78b1e62d8675a1b3ddec41c2024cf65099184cf5f8cb67e"
    "cs"
  end
  language "de" do
    sha256 "b34824936766bb5c80883acf5bf68db9f9bc754fd22364682d9547022b7d4df0"
    "de"
  end
  language "en-CA" do
    sha256 "8d44f8fc91aa21ab3b9ee72cde58d6b330843d9c4404cd9a885441187e50f744"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2cf56c8f74b8433f45071ef5a0848def3d446093b491977bbe691852ebed4569"
    "en-GB"
  end
  language "en", default: true do
    sha256 "bad052d0be5d4e08f8674214973d48f22e1c8c79197faa89eceae3eb6fc9b7ab"
    "en-US"
  end
  language "es" do
    sha256 "c9c11ed7022b9f086910571154ae7cdbc896e95abeada3f88df11d386aae2a3b"
    "es-ES"
  end
  language "fr" do
    sha256 "f53f47122a3d07654c51a3ff8877cdc866db01b67f7333df9c79485987e6ff7f"
    "fr"
  end
  language "it" do
    sha256 "9112145a68c32d250a61732d9fc5c66a2a96f639032de542d988acbef63781f5"
    "it"
  end
  language "ja" do
    sha256 "ceb43eb6e7703f04b29129fd3d1bf61b3da8dbd1e3b5917b6677cdb64243f12c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "1c2348c7a063b520cf9466da2520865f764fd2fde95232ec44c7f07177d77aca"
    "ko"
  end
  language "nl" do
    sha256 "c3e86385380900aff4728b013f7473fd2ebf2a9a3db5e82aab55e1b1e31e7cd3"
    "nl"
  end
  language "pt-BR" do
    sha256 "dee4dbaaa1f6991b3a1facf693aeb45799b3e406422f6e3baa8f28a258502b28"
    "pt-BR"
  end
  language "ru" do
    sha256 "e0cb9e404a7c35c1772f8f6f1687c11c4966e75ca5402a8afebfa290ac4ba7f5"
    "ru"
  end
  language "uk" do
    sha256 "0642f373def5cfcd3ff49d93b2af724b984d495e879fbd042e6bf583d911bd3c"
    "uk"
  end
  language "zh-TW" do
    sha256 "2cf74ee67a6c830fa15147e47636e5d6566d848e57bcf45a65fbf401d642b3e5"
    "zh-TW"
  end
  language "zh" do
    sha256 "6a7cad94a8549182e7b9416b988a48667b4d4c2f0348f483243d86d28c5bcfa2"
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
