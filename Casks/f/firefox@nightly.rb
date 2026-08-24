cask "firefox@nightly" do
  version "156.0a1,2026-08-24-09-34-07"

  language "ca" do
    sha256 "34a48722f21155f3c8d410f14d0a0f6feacfbb1d1b77474459a6345fdcf29dca"
    "ca"
  end
  language "cs" do
    sha256 "43f13b5fc61f6a0664c1882bacb8bc6b99e400f53063124598b0913760021013"
    "cs"
  end
  language "de" do
    sha256 "8232d192b79eaa5bc4da90f6d9888579c7f0b50b28e85c8d550ff6d3c0c5d276"
    "de"
  end
  language "en-CA" do
    sha256 "f3a864a8694cd488e3a6ef6fd2a43d0ac81b58519fa4057e5171ac2b2060da2c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "aa0d316ca9ecf969c73159d010354280736df94eb0256e3939fd6ad9e5f78170"
    "en-GB"
  end
  language "en", default: true do
    sha256 "13747a3fa39d965e96d35898baea1444f7e0f24adff2623d9bf1159853052e0e"
    "en-US"
  end
  language "es" do
    sha256 "9c5754aa1a1c32977af0bca4ab9430a6a4741a1360d4473b28f8b78496668366"
    "es-ES"
  end
  language "fr" do
    sha256 "b9134b97c5a7575ae491730f0fd6bbbf272510c424e62b29d6d7b299e986f839"
    "fr"
  end
  language "it" do
    sha256 "11b774b5125ba7e9ff24ef98996fd76d22aa8dbbf54aaf99435bf08a0d3cb899"
    "it"
  end
  language "ja" do
    sha256 "39a891423447c37d32ac27e29a3ae034a1ad975c19deae5356966503dbe5d30d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f7222cea121ce637e2d49fa21593455f6fccb467b5cddf98f88a80215830ad9e"
    "ko"
  end
  language "nl" do
    sha256 "79d67395abdc4fffdc7e3215f0134b4e9bec2890220fb2b2dba83ec6d670081d"
    "nl"
  end
  language "pt-BR" do
    sha256 "a41d6d74c38d039fcddd47eaec9db938a0bddacee67718a978e3a485ca989e8d"
    "pt-BR"
  end
  language "ru" do
    sha256 "ea6d283cddd06a810acf9bd5ee7a87dea2e422890bcc0e523b418f36386a4dab"
    "ru"
  end
  language "uk" do
    sha256 "ef608e5c35ba4d29f467345f95a65dd7ddec5740a0102a2766fd761785abc4cb"
    "uk"
  end
  language "zh-TW" do
    sha256 "64a4857ef9e48936290a0016c5eb0d872c7f1550a54ea48601331c20c3df2873"
    "zh-TW"
  end
  language "zh" do
    sha256 "c6246a98c932829e07eb9d2f9f3a50fa04dd1556989c7014c9dfa8a80b25f8d5"
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
