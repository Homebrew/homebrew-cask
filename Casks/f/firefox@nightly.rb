cask "firefox@nightly" do
  version "159.0a1,2026-10-07-16-25-42"

  language "ca" do
    sha256 "72dc80d51c2c80d345dd83961986f0cffe11e4b21c4740b11c7064f3968d380f"
    "ca"
  end
  language "cs" do
    sha256 "500c78190b70339f57b7937609c3c1b1d65485a440f0893d270b49f556c85920"
    "cs"
  end
  language "de" do
    sha256 "3c78422ac77386f8b6ab95d731e79dcc8b394c9ab02156ca44613cb1b1fa7a09"
    "de"
  end
  language "en-CA" do
    sha256 "b62155348255fd6291bd4c6e388d9417772996a18e4641ff572fbcde903f3f08"
    "en-CA"
  end
  language "en-GB" do
    sha256 "cc56bf695b5d58b525f1ecbe68471e01502b05a6614cde378063ca4d0e6f9403"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a7d29776a4a06967b50cde4ce52cf6074476cd25ac5781a5954226e308652eb4"
    "en-US"
  end
  language "es" do
    sha256 "89b8f1d43f3a41795554036e2ceb70ab27902a8562e14c04608a2694aa0d7268"
    "es-ES"
  end
  language "fr" do
    sha256 "5fb923b38c09d2a5f702cecf3a730d712e6d37cddd6ab3016612f268a31387c8"
    "fr"
  end
  language "it" do
    sha256 "1b00906e6eef7fb776697fb0aa87ae8e4cb8c4bed2d7bdd1f30cccea87f00655"
    "it"
  end
  language "ja" do
    sha256 "b2fd4bb5ed96eb5390ae124947ed6fc45b0a7d42e3b19f1f776d683fbf086428"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "bc5f98429abef0e6f69c00688f55f737798e65d825365515fd96831efdeaf82d"
    "ko"
  end
  language "nl" do
    sha256 "ac39a3fc59fe6cf35d553012105563bce3e31cdadb2aba82cbd9ad032094bef1"
    "nl"
  end
  language "pt-BR" do
    sha256 "b6a88c8e5fec71dcc6b480426ea29a78a0e3ed1498566badd83123cc0a9492e0"
    "pt-BR"
  end
  language "ru" do
    sha256 "3e25a812f523c49ac3c85fe7621857a35ba399b04b5755dfe3a07adc74ed0669"
    "ru"
  end
  language "uk" do
    sha256 "11e5defbd7b842b3281d4892734018370bcfd37eaefeb02748f50821d0a24308"
    "uk"
  end
  language "zh-TW" do
    sha256 "f2d16c3b775d058f1adcb2f020eff132b9bee7332615fe4422e7f173d8e57bd5"
    "zh-TW"
  end
  language "zh" do
    sha256 "b9347570f61bd6e005b8b053cfe90d5a5eb0518ff4d84c9381f995173406d1ef"
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
