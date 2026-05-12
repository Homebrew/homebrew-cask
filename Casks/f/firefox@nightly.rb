cask "firefox@nightly" do
  version "152.0a1,2026-05-11-16-01-44"

  language "ca" do
    sha256 "a5a4442eb72896ddc9aeb512768e5fd4db5043fdf3e3a00fe38d64c76909c68e"
    "ca"
  end
  language "cs" do
    sha256 "b1c2f0de1bf0ba016ad6c20ad6567e6461ea7bae4e5c60eccd8b0095f444963b"
    "cs"
  end
  language "de" do
    sha256 "2cd9b040d5f52fb61e4dae2628791676a1667329fe34ac55944a4d6fc3df19b6"
    "de"
  end
  language "en-CA" do
    sha256 "43e8a97a44c00cb070df04c0106e57a8da4c4364ba1d1de2315c6c4c465d6c56"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2cc5bf6b59538fbea0387d57f63579b3eae2c8c97916949da3ffe816e79476ba"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f4932f820e5368eed73c204b1e505d89c4fe6008cd1eeeb70f18f160e5ce3507"
    "en-US"
  end
  language "es" do
    sha256 "896bfbb42137c25258e8ba3b63a0af7a3e49b33d6c67c366f30a05bcb696ea5e"
    "es-ES"
  end
  language "fr" do
    sha256 "84dac9d666b714b2115bb0444443b4d8a7a8aa4466f79ab9ee594d26f631f618"
    "fr"
  end
  language "it" do
    sha256 "f128596df6fdf1ceaed3e01b6d10b09e65da3c61ee1fc6152535052547088452"
    "it"
  end
  language "ja" do
    sha256 "be85eec1c5a1710301e63f870993121d13fbb224c2582c1143c99f145a8f25d0"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c46dbb4e291f170c8a1dce6b092f076609a2807c742dbf0067c7dee6ad9ca466"
    "ko"
  end
  language "nl" do
    sha256 "14860c8f14516e87c45cf11c3f47529b53e2664d4aabaa60560d4bd632d4530f"
    "nl"
  end
  language "pt-BR" do
    sha256 "f753d1f379aef61b1673b1cee7d24380e38c56e4559e85b145efc59781823031"
    "pt-BR"
  end
  language "ru" do
    sha256 "7bde0c56ec42a88fdfb402b0472f032187bce2bb83c74d4ed91ee1918feeea1a"
    "ru"
  end
  language "uk" do
    sha256 "bc1b12c67d17d5f22829cd8207eba3cc94054823db4c8f6ffd5be42940da7792"
    "uk"
  end
  language "zh-TW" do
    sha256 "0f5fdf7700a4c34cef645d2661bc11d2f60eec08945bbe383369b1ecd3952e8e"
    "zh-TW"
  end
  language "zh" do
    sha256 "19b51fd5de6b43854a483cc0cb2e66ad064097a652356cea5829ba071eab9897"
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
