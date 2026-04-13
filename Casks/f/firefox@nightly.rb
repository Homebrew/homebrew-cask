cask "firefox@nightly" do
  version "151.0a1,2026-04-13-09-16-42"

  language "ca" do
    sha256 "5797639f761b12220f6bbe3b8063e04f2c3e8c9be1434a65488835ace6bd2948"
    "ca"
  end
  language "cs" do
    sha256 "73f89996db98baf6dbe8a154c5d396e34ab38397e68dcf312f2477bbda0892cd"
    "cs"
  end
  language "de" do
    sha256 "1f321f71f40ffef1d922c6f7fe5584f425b1c9500cbbe41f815dc4b31187225c"
    "de"
  end
  language "en-CA" do
    sha256 "c66ae9d82f92bb04e87242bc21b9e40a7646857951ccd851b371a4b6221c5498"
    "en-CA"
  end
  language "en-GB" do
    sha256 "567cea4b60248fe3c66807197a02930870e861def8a788ac1824130186e19d23"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0fb63c2cb8059d30ba3ec920ca8b1baae2bbc6706f69f4259815c7097c140476"
    "en-US"
  end
  language "es" do
    sha256 "3cbcfb74eead4c035b3ad9c08beb107a7bd53fbdaa28f0dbab540d7a95ce63e4"
    "es-ES"
  end
  language "fr" do
    sha256 "2fb1f94d6adb3abe6e5e521e44f9da745a1b4736bb75a38dd55f0994a18fb739"
    "fr"
  end
  language "it" do
    sha256 "55c71e660f7b8056587ebf103e311234da74eae43bad9105d9ce17a8af92de29"
    "it"
  end
  language "ja" do
    sha256 "926c79512e710a81b5126f42a4c9af9ae14376e855f96db7e10176dd8b4ef5d4"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "df2c9a672242fe59359f892a4b27accd4ef0336e80d2e993f6828bd7b4bbdfe7"
    "ko"
  end
  language "nl" do
    sha256 "2c656890d4e2c692f5a58e10c535445631765c1cbb243b627a8c29d0e096fa0c"
    "nl"
  end
  language "pt-BR" do
    sha256 "3cd9ea961b3a7510f6d31abc13c218dacd7969730b498941f1534c57686f983b"
    "pt-BR"
  end
  language "ru" do
    sha256 "1c5b9008f1f69eb86e403d54fe30bc44ac3f5404c67952f3b87ddb5e8d7b7d9d"
    "ru"
  end
  language "uk" do
    sha256 "2c178a9e165179f5b3496d80af8360664848628c8a50cbaa1c54716a15c056e2"
    "uk"
  end
  language "zh-TW" do
    sha256 "81a0e5be0e97ad7207b31b545cc397a8246ea311d162709dfba8d3578388f103"
    "zh-TW"
  end
  language "zh" do
    sha256 "0f7df3454479bf0cd2b929badc2618287e019b3d0a58519bcc4dd3e793e439ba"
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
