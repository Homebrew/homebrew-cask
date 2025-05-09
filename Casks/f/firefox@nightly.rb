cask "firefox@nightly" do
  version "140.0a1,2025-05-09-09-10-31"

  language "ca" do
    sha256 "a7c101a1d3747d97536ef4543affbf107dd1cdd84aa3649d563cbd8353831599"
    "ca"
  end
  language "cs" do
    sha256 "cfad8fa352b4d353046c60b85f5fe7c02fec3e154284a4b727cea44cf41d969c"
    "cs"
  end
  language "de" do
    sha256 "88a486e272e681660f9aa46804364d57db19527dc909f32515617de6cf7d8f5f"
    "de"
  end
  language "en-CA" do
    sha256 "24f34c24ec918001fe418f094beb7a7eb5dac0bfd05ff0b51e45da1a1ba78b18"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a59fc51a55f80e75a92e18d9f42f39e32e4b3252aec58c23f739bbd2a4e06c43"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2495d80f6417f3940c606e32f73e839e1093f0e0b844b19266216451a99cfc7c"
    "en-US"
  end
  language "es" do
    sha256 "135071198e965df644021e8cb9d3a7d0ec83fd332e30b738a33be3a5357f96c0"
    "es-ES"
  end
  language "fr" do
    sha256 "4b4681157eb4b5dc9e9c37c58911649d2d5632a45504ce062e1e750d4b9180d4"
    "fr"
  end
  language "it" do
    sha256 "46be6d0a41b551ccf9bbfc544bb8d5da6cfeeba335cd2e6892db848203ae9fc9"
    "it"
  end
  language "ja" do
    sha256 "bf9fe3fa2ee28072ebd371eac20f9cfe86619bd4ea452e74669934f5b00c7918"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "bec45962d6290c5e166100687989b3d0baf944b6ba32f354aaae993c2607666f"
    "ko"
  end
  language "nl" do
    sha256 "84fb988c9f5bfc097e8f7ac4c68ca5ca765f2217f3e77c960509d413f443ca7f"
    "nl"
  end
  language "pt-BR" do
    sha256 "0bbd41f616f1b6412f1aca48dc7e1f802a52d8ab6376ac4d8a4cab6df4bc287f"
    "pt-BR"
  end
  language "ru" do
    sha256 "a3798ab03c2cc111a6d710bac79b65aa1e3894c73bdf01f4b34d76437604d06a"
    "ru"
  end
  language "uk" do
    sha256 "bb930fad8ee59236be61a550235ae20d3d98569559e8dc626e88710def3ff725"
    "uk"
  end
  language "zh-TW" do
    sha256 "d1e9c200ffbd26f636f68bee57724cdc68057fa1119acdd315485a4c03c81c9b"
    "zh-TW"
  end
  language "zh" do
    sha256 "1765a4993598f7286bf3d498fc5373ea02b412f9b176b1f2c0c959b17db3b7c8"
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
