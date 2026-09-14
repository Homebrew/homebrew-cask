cask "firefox@nightly" do
  version "158.0a1,2026-09-14-04-26-11"

  language "ca" do
    sha256 "bec84496aa95ca3725884fc534645482db1d1907179996778333aaa186fab967"
    "ca"
  end
  language "cs" do
    sha256 "bf6e1f4c1973c6a395a4e2de0749057a496db65e609e2ea4a38e594c68d3b848"
    "cs"
  end
  language "de" do
    sha256 "da45130915162181ba0ab2e35dbd29074bd98d961f9d7ab944d4e81de3e0c31a"
    "de"
  end
  language "en-CA" do
    sha256 "a774a9b91df407757947558687512339d5f7720df06f72a0ffd1219a722b638a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "af765bd1d231e53c1e9b3788d8f2b34bf01ed552e3fa696f2fbaca4197917b89"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6491fec3980e836d698c863d1268ff15d101d44b2bf94265b9595286f5fe5330"
    "en-US"
  end
  language "es" do
    sha256 "ee194e32a0b82a6bc205cf299c76fb592d2072c74b1ffc310c9ee54ce0ba2689"
    "es-ES"
  end
  language "fr" do
    sha256 "7b46b55cdf612ae5910c1cbc0d0ef682586c7d35b9c682fe6a87f00ee511164d"
    "fr"
  end
  language "it" do
    sha256 "5e4d7522167d98ffff606831bc669d36394114e6227d9e1207c90e2c36441eb0"
    "it"
  end
  language "ja" do
    sha256 "4fac236818396fc0336896d621e1aa5e99e7977d037964dba8c4383375828769"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "44b1333cb991013df3f4274bd2f314e745aa03c527a87ac627305de6eb1ebe88"
    "ko"
  end
  language "nl" do
    sha256 "1c2f49a39af20000f8a0a076d180761a0955484de07d21d454b38ef0a0f36a52"
    "nl"
  end
  language "pt-BR" do
    sha256 "e278b834d5b4f0272f5a1d32d23d7bb13a3fd737227429301ca7db2008b866be"
    "pt-BR"
  end
  language "ru" do
    sha256 "6ad941ced9d8e628236847196c7ff077f91fc0c6f7326f6a1ae58bf1984b8a90"
    "ru"
  end
  language "uk" do
    sha256 "65ef3523a0871354dab1190dc996cee6bd6fa61332e21ffcc09004bb1f78e364"
    "uk"
  end
  language "zh-TW" do
    sha256 "9851eb98274ab3c41ab1cc0312e12dfa0682fa3bdf059cfcbd5b569cf65b6fec"
    "zh-TW"
  end
  language "zh" do
    sha256 "13133f76537d9d76e65c4c4183c0be1f274d3eca8e6ccbf7d28781822349300b"
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
