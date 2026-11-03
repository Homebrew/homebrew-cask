cask "firefox@nightly" do
  version "161.0a1,2026-11-03-08-01-10"

  language "ca" do
    sha256 "cb67acae48968978aed4a61c1df4b3e42e3b331c3064ac47c74d0ebd9751aed6"
    "ca"
  end
  language "cs" do
    sha256 "59146c06ac6bb434c5cbf551d42acc1989dc596e63feeceb5b3efe951709b896"
    "cs"
  end
  language "de" do
    sha256 "5210f37db6a517c4028a056a824e9d9d6f08a276bbe122b256d32e4b8ec03ede"
    "de"
  end
  language "en-CA" do
    sha256 "7082914c37ee716e96138074d37bc01e524a0a75c6dabcfb40a8f99a077e929b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6613c0770754817336f9906f5405857894d97f73ece35dca9676e3abdda924eb"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d052e1fce5396cf71123ff2ea055dda625ef96d0513bbe321eee64964bff82aa"
    "en-US"
  end
  language "es" do
    sha256 "853266b4cecae3c0f62e27a31f5196a7de6c464cf74c283492ba5b666491ec70"
    "es-ES"
  end
  language "fr" do
    sha256 "2469c97a11fbf8d222e364d80fb8759b61272c778a0bbcb7b54c1c40d440fe68"
    "fr"
  end
  language "it" do
    sha256 "2d9bfd0bf4ea1d66ca3bdc5c8dcaa84beb9f6ebc7a768d43d8b41f425e3e72c9"
    "it"
  end
  language "ja" do
    sha256 "c904a9c55138669028208cb71150daf4706619cbc9a7bb92165663769d7f7687"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "fd26120344c4a38a243e917253f18b0d5a405d376782a50dd6f6a50f79c4a0dc"
    "ko"
  end
  language "nl" do
    sha256 "d9d6531ff2fa0375a55c8389821b4ee29559131150a52db1fe23dac0270c485e"
    "nl"
  end
  language "pt-BR" do
    sha256 "fa246ff58ed23b48828dec879ef09d7b27eaae4d4093493183d5632393ce7555"
    "pt-BR"
  end
  language "ru" do
    sha256 "bd2be8ddddcea67e5649a741a17012158052865ea14f3aa047619f36e04cb28f"
    "ru"
  end
  language "uk" do
    sha256 "d6e92e4946faeb817b9c743451f81ed34d774d6599e62ab76f9f6123896b3d82"
    "uk"
  end
  language "zh-TW" do
    sha256 "f4355895141f18e177585ad04df0cd0b89b7348c45531c91bb607da740e2d022"
    "zh-TW"
  end
  language "zh" do
    sha256 "2b5f37d5fb6bb09d3ec2afbdf6e399d2bdb081734477b8dfa5a41e6fa80dc352"
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
