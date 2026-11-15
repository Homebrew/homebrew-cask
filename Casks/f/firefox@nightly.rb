cask "firefox@nightly" do
  version "162.0a1,2026-11-15-09-26-57"

  language "ca" do
    sha256 "20601c06af9cf913e2e1bb184055f4bc6eced512b7888be5c534ffc2b0eaa130"
    "ca"
  end
  language "cs" do
    sha256 "3284d88eec2b89c18c0a6b9eaf7eeb2a79c372f58b7e09da0324235fa4c0d71b"
    "cs"
  end
  language "de" do
    sha256 "41327dcf3fab09fda6bc6f7c6b623e181df6c5642d54d4ee9a4cdeb1ae9dee60"
    "de"
  end
  language "en-CA" do
    sha256 "a9502fe83fa76fb6f3ed8370de84f94c82c229622d87e40b7d32ef69f8883059"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f70872399f6d344f3eb9adb4342d9c06f932fc4869a899142c6f46c8ea463b7e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "20d565d8b68682adfd99f1656e8ae621404ce8fabe9a62722c0b781c425fde30"
    "en-US"
  end
  language "es" do
    sha256 "272e4273d1ac1833225631da18cb302c4ae30d80850275420e21f88814e5ffe7"
    "es-ES"
  end
  language "fr" do
    sha256 "f1c9d9ee246cbf54364149941977c79eb666c0111a2ddba4ce66b23b7a80fc2d"
    "fr"
  end
  language "it" do
    sha256 "2333b638340c8967640c85e26ff31acb41d324f0913c9c22cd91da6f418c0772"
    "it"
  end
  language "ja" do
    sha256 "54eee7495ccaa82aa8fd0933be1e95c3ca65a5119b790be9ab2e5097e828241d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2380900a044dc2f700a13ddc3a29e0f49f6016e8f1368552c2707c89e3eab4de"
    "ko"
  end
  language "nl" do
    sha256 "7be28e7822d79b4752850642a5d7fbd525dcd2a778d233ce6fd79099f093588a"
    "nl"
  end
  language "pt-BR" do
    sha256 "c9151b805979eabd9d879e63dba05a240f161fa02da123156ab21823c05bb61f"
    "pt-BR"
  end
  language "ru" do
    sha256 "bcc76894fdcacbd6e92fa57347ad0f81cb86de3c84e9468acde52e074ada4d59"
    "ru"
  end
  language "uk" do
    sha256 "9a496f6e3921c26dd6422c319c8d25a5b261b13e7b04a73cd50a0c8456dcb3d7"
    "uk"
  end
  language "zh-TW" do
    sha256 "452e2ac381f50e3f66b6a347112ab86fdc4b5639de8ac21e61ff9bcfd0391ea2"
    "zh-TW"
  end
  language "zh" do
    sha256 "7e9c9a23b3d2347144db78b7d04534538e9a7dc7bf598c91957ca4f31f1161f2"
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
