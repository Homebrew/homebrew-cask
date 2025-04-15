cask "firefox@nightly" do
  version "139.0a1,2025-04-15-09-36-46"

  language "ca" do
    sha256 "e06236b04b32be4b734448008a914c5be63bbd64ce2b6e6a673112eb2b4abc3c"
    "ca"
  end
  language "cs" do
    sha256 "f39506bad5ef22beb2a292234832bca3ede7695f4a0b121fecd425f09138ef03"
    "cs"
  end
  language "de" do
    sha256 "edf2d667e15f05f2d2643df6920c9c4a7a62e1475e465ffadefa2123512e459f"
    "de"
  end
  language "en-CA" do
    sha256 "d4fdef81a387c287ec950808e3f8842f65fcf0d9c768fb19e8daf42e2fec9974"
    "en-CA"
  end
  language "en-GB" do
    sha256 "207d1abe2c6ca6f5bb8d91cc8e85e66f74f1ad8e8d8eab99a71da4a3c7aecb88"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b019fd3f9b4e73deb24d2d03530711499ed2f1c67a861abd37cc53dd1dbdda44"
    "en-US"
  end
  language "es" do
    sha256 "23b2bd48c580331face58c1af3f1952e4bbe722c6ba00f56fb106045ce6cacff"
    "es-ES"
  end
  language "fr" do
    sha256 "57623083e793a0d44b4147f8d3bd9b257763824df25bf51529aa2ba3f67a34be"
    "fr"
  end
  language "it" do
    sha256 "7235fc6b5401507334d3307dc0ed61d7b8187e55f3000c6ea0b27a2726184221"
    "it"
  end
  language "ja" do
    sha256 "25521dbb058539374449fc9c724925d1fd1db744fcc1fbc373a798ff04f67933"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "75055656c08a002d9ba43e67226b9fe9ba9d34cdbbfdbadbb1865760d34ecbc3"
    "ko"
  end
  language "nl" do
    sha256 "2f7fcdce8b1bdb96c6457e10d7cfc4d0f1d2ac637e10f381a390777c7d86908c"
    "nl"
  end
  language "pt-BR" do
    sha256 "f81f726b1cd278889eb8c52c6e58519f1a40e9eb895ae622ec041057293180a2"
    "pt-BR"
  end
  language "ru" do
    sha256 "6b82f296d83a125fea3e9970cf5cec7bcc3be148ab79ffa454b78d28c21fb405"
    "ru"
  end
  language "uk" do
    sha256 "bcf8780de2f407848f5d67e4719af92ecf0a9e953c36d424a02cef9afc3232a6"
    "uk"
  end
  language "zh-TW" do
    sha256 "546dc6de4562848a02c08e7f364cce3bf9af112a8be257f66e604e29958fb2e6"
    "zh-TW"
  end
  language "zh" do
    sha256 "6d993ec4d642620bfec5a5c7abc75dcb1f4928518608df7fdc504b4b178977d8"
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
