cask "firefox@nightly" do
  version "155.0a1,2026-08-07-20-06-52"

  language "ca" do
    sha256 "50b179b0fec6a25316f432937d4bf2462048bf7c500a9a56354f40dc79193288"
    "ca"
  end
  language "cs" do
    sha256 "962e28af1e8011a12d14755e369e69386708efb4605b8b7c1566eda36fc2557d"
    "cs"
  end
  language "de" do
    sha256 "e6e06577bef511070b54b610adff63e3a38a9a3a1bcbd8274b7b39d68f5af276"
    "de"
  end
  language "en-CA" do
    sha256 "b7f9f1fbdc025b7c4e8f836b79cb931c0c3e67947ed799888d18f1322e1e19c6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6e7d42623683eac72c37ad9184a408cc6cd2c4006b7ec098abd8c3e937413d4c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "aba8d7db160b04d9c9e83f7e063ee383f5f8619559ff1da3e6d2feeb5294126b"
    "en-US"
  end
  language "es" do
    sha256 "d30696b205c64fb2c3c8c0bd902b6f1f99cc85b1a6f79a46a52583cb50c62e09"
    "es-ES"
  end
  language "fr" do
    sha256 "98a0d1bd71fe3110f3760991fe2c549f7f00a6c70cbe4f37ce1d2beb792d05f4"
    "fr"
  end
  language "it" do
    sha256 "27f20941194468de687393055ac346b29e0606e73df0fb10df2bffac4a6e57ff"
    "it"
  end
  language "ja" do
    sha256 "b8201e34c368d3eabbd84f42aaa3bab047608b02f5baccb7d59b85a883922c75"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e0e2801dd389dd2ac65ea9bbdbd2afa91b66e8b8bc92961638ec9257abba3db3"
    "ko"
  end
  language "nl" do
    sha256 "233b25e19aaa1fe9bae10332aa6ffe4306bfdb94a5e4b37c4d1dd4b9b5ef907b"
    "nl"
  end
  language "pt-BR" do
    sha256 "a9f70e8d26eb4d46b27f6d2d0d0c31702a02e98551bd9cc9cfc7d33a2e8e3220"
    "pt-BR"
  end
  language "ru" do
    sha256 "d2b51db15fe77694fa6f2ab6f7828c4fb0c1252eb1f217f16f48e5b8e792ad00"
    "ru"
  end
  language "uk" do
    sha256 "4dc48750690f4aa04cc43047e43354924abca578336d499a707d3d0d9270d264"
    "uk"
  end
  language "zh-TW" do
    sha256 "4486d7302f4e20641917b61258a61a9be44f742f2763159d30c87a2fc5f09190"
    "zh-TW"
  end
  language "zh" do
    sha256 "b7b1b5032f3fe64abbf9161dfce7b78cbfa5f62eb7f1d41cff71656a71a24cb4"
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
