cask "firefox@nightly" do
  version "155.0a1,2026-08-12-09-36-59"

  language "ca" do
    sha256 "1362504b5f01016c1d37f74db5bec09b24e60930b41a7492add2d90b7896df77"
    "ca"
  end
  language "cs" do
    sha256 "24559f9a28aad8c1ce67ec02c1c42c9879ae59dc1c65c9ec02d1408c7418f536"
    "cs"
  end
  language "de" do
    sha256 "d8a8ce8d32d5506fd753e6ed7eedf8bafbb8fa1de9052e345f8aaf2442b0321f"
    "de"
  end
  language "en-CA" do
    sha256 "152d057ea801c41cf70b92ec006e19fcfbe187b026fcfb9ec90e051e63a138e9"
    "en-CA"
  end
  language "en-GB" do
    sha256 "092d2d3d037498474417a16f90fc2c067dbf517d329dcc8e2ae60def0b53067a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "80e0a76afbac40e27a86b6ff8f1a8d3582a92991a06a2041f007f41209da8bd6"
    "en-US"
  end
  language "es" do
    sha256 "1db874de7cd99cb5329e2c9098876b95cd3090ca30e2dd2bae67ca07c7f0e4f2"
    "es-ES"
  end
  language "fr" do
    sha256 "a4370dd5efaeb27d2d72d09a7209b48c4cf739cef8f356c2f5ed0f54c789136a"
    "fr"
  end
  language "it" do
    sha256 "fdf112a5bbfad076f5a4019ac1aa4c14053e4aacd7fa958f0262f7f22360ead1"
    "it"
  end
  language "ja" do
    sha256 "0a5fd72145d982c450f86b8e54efb76501653f1bf422843ee41a469f7d51ef9a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "98291e8c36b0aa1686fc51ff5350ccfd2537bcabaa940dedcb54df1c720b3f48"
    "ko"
  end
  language "nl" do
    sha256 "26ce8809d8e3f1d6d62f70fd9c054919d251a4db13434000272069ea614d3822"
    "nl"
  end
  language "pt-BR" do
    sha256 "03f3f61562b6e7b432871c95ef5a6597336ecdd07e9f7768406b84a78b9db218"
    "pt-BR"
  end
  language "ru" do
    sha256 "01619e065e90b18969ab2319aaf077071fd3b7f024f85e9b12602903a10c3191"
    "ru"
  end
  language "uk" do
    sha256 "4b9fddc60897f33170bcadb1d2f5840a68bc3a84eb0258663dbdba87a024c382"
    "uk"
  end
  language "zh-TW" do
    sha256 "c600333c66294cbafdecd3228a59dca91636c3f2512870f7fde3795a7da5cafa"
    "zh-TW"
  end
  language "zh" do
    sha256 "b39d7bdc289a1b780ff26d3d05dd28e850ca249c6b898eb107edfbfcab49dccb"
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
