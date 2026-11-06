cask "firefox@nightly" do
  version "162.0a1,2026-11-06-04-41-22"

  language "ca" do
    sha256 "8dc38a178d6195908592805f4fb1dccabcd78e96e751426d58097eb01ca0d53c"
    "ca"
  end
  language "cs" do
    sha256 "30095b5aae292ce0aa432a3630d3d54e00b413d42716a51eb27072eb47042885"
    "cs"
  end
  language "de" do
    sha256 "bed02c41be0edcf6cb2e2ab1310c0bbe0081fc0077433fbc4686cfb0b680c23c"
    "de"
  end
  language "en-CA" do
    sha256 "4d5b8b1ece33d859ee7bb5e3f19eab8027791a972e1896449671b33774df46a1"
    "en-CA"
  end
  language "en-GB" do
    sha256 "9d41af5b6766ab38f9d9c79c68dd0b1adb5c3899f61464e8c737baafd7d3e89e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7b7b7b3c71830ed34a27469b5b5553c2d87bc70befb4b03e89a2a92f54c8ff82"
    "en-US"
  end
  language "es" do
    sha256 "2717c64a9f9202db35b5b188acb1aa6d4519140f5320d307e6ba4cfaca34e008"
    "es-ES"
  end
  language "fr" do
    sha256 "e593b32e2e57f1c079a08ad466cc03206e098fdc1784039faa212194bb1b84d5"
    "fr"
  end
  language "it" do
    sha256 "625f3ccdd61ff1d50394e28224ab1e50d8e40bef9e560ec5d6a5448d0b9d93e2"
    "it"
  end
  language "ja" do
    sha256 "ca0dc1fcd0a20701babd02f1777a99a4b2b9c3219840f5c3bac5531b9749a183"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d5b957d401e5f7b82ce5e7a803edca348074792ef0d82a521c82e7ac620b3d12"
    "ko"
  end
  language "nl" do
    sha256 "567e876cce7a49ecb41c732cfab5d0bc17922f2594adde7c471c682719c78757"
    "nl"
  end
  language "pt-BR" do
    sha256 "e6f3536282036a98c76ae2f469464a9dbfdab7539660ec98cc7d8f76bf0800d9"
    "pt-BR"
  end
  language "ru" do
    sha256 "e56b02c9252dab42545fd17e7bdb211388d2f194ff65c2612c66eed429993958"
    "ru"
  end
  language "uk" do
    sha256 "1b6abdf76807ba02bea16119c261bea801551549a89ba1441acd8bd1e5d8cd3e"
    "uk"
  end
  language "zh-TW" do
    sha256 "183fef805099feb6aa1649bcd84dc8fa28d0f36d1751364b9fac98e9b9945915"
    "zh-TW"
  end
  language "zh" do
    sha256 "87ab23261e6e4408f51adc3d095972403cb37b50a008078d82671a0a6080b8b3"
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
