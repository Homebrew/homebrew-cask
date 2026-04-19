cask "firefox@nightly" do
  version "151.0a1,2026-04-19-09-13-38"

  language "ca" do
    sha256 "6ccfdf1b5e1d968f60467db13459e205ae80e0e2097c850237c8e90ee1b213bd"
    "ca"
  end
  language "cs" do
    sha256 "8524ca31a7999139ea99684f9b053c6525d93b93a3d6672553c90205b71acdb5"
    "cs"
  end
  language "de" do
    sha256 "1ac7f6b3fb2d81d5c979b8d58debcb551b3a2db11869e23e9cdca3809657ad41"
    "de"
  end
  language "en-CA" do
    sha256 "d43d51598a2addcb966fa3a4a113b1e3986969aae86016715c6927655107c74a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "82506a1f2c07999017e9605ea3a7eadcda6d15f5eae26e3373f946aca17d409b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5c5ac84898228189d1d619fecd4b183090df99313d28afc8922256afcd31321d"
    "en-US"
  end
  language "es" do
    sha256 "e900f9bd2501ad41422013e08ed8c157cb2c0a63fcb4ae6e58918f9c61330970"
    "es-ES"
  end
  language "fr" do
    sha256 "5ec90796dc720f0d464cd070b9ca99392cb2a4595a446495f5dcbb600f88985b"
    "fr"
  end
  language "it" do
    sha256 "a7717009952090163809697ffd9f39cee8ecb78cdd1acea2578124bb4e482e19"
    "it"
  end
  language "ja" do
    sha256 "6035c16da6e4c2bd245b6d33f2bfdbb927cd03626328f4f2974103ba9a473ecc"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "bdbe87d500fa6563e4337ece16dbc7602a9d2e7742d6ee2fdd4449e7b3a7fff1"
    "ko"
  end
  language "nl" do
    sha256 "61665180d1ee7bb7286b6fe558824fa94fd3d96ddcba0a5d6c82fed3e93b983b"
    "nl"
  end
  language "pt-BR" do
    sha256 "3276f218e5d94a3218c4edb1f5b2e594fbe0d0c448a5090085b4ed2ddea2e729"
    "pt-BR"
  end
  language "ru" do
    sha256 "842dfede5e2c9914d1494d224d46fcd5a3a154225c9d1fc72049cf2c44cbb22c"
    "ru"
  end
  language "uk" do
    sha256 "74b15f87786d1f653e6d771bd0efe48f2df7b55bb1fea0c86c93c59f76137bee"
    "uk"
  end
  language "zh-TW" do
    sha256 "ff604ca2d7c0a560b0596cbe9f80dc09e1c3c3e89bd7f5ec6e91d64d72a09925"
    "zh-TW"
  end
  language "zh" do
    sha256 "cb8fbc5a4305f137b814a22cc67c24afacb2e745e446e707a7766f47a43fe7df"
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
