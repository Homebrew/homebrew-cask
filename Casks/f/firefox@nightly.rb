cask "firefox@nightly" do
  version "151.0a1,2026-04-04-09-08-30"

  language "ca" do
    sha256 "6e75b8d6a3dfe252cea8a1b28d4f957d55f5eecbd15fb1803132c39f3c8bf894"
    "ca"
  end
  language "cs" do
    sha256 "a9c11f7296fae4f9a9376778d9af7caadbab45ddad3acb9edc2ad81f36653111"
    "cs"
  end
  language "de" do
    sha256 "d155aa8400177b25b2b4ed96b596384fc9d68599287f12114239f9c196281802"
    "de"
  end
  language "en-CA" do
    sha256 "db1c934d892fae2b27558e2423c43afac53783e74c824391714def4426392255"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c3828f827b72d2e0020388144ce82e6d43d6a937ac64eb4e7d3b88dbffd4ba4d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "44167db2d80ebde33de14bea25b251069a64aec10033a675b9ae64ed1b5459ed"
    "en-US"
  end
  language "es" do
    sha256 "371f4cc12deb805d398f919a3a5d18a452ec1da28aab4f4cd1689709b8635193"
    "es-ES"
  end
  language "fr" do
    sha256 "2ff32f058be95639654cdc2161d47867c4a4f22ad084a5f4532e6a381903e79d"
    "fr"
  end
  language "it" do
    sha256 "c4b91ab54a0e1f6a70db73a50c18a44274bf9ae3ab2007cea8e2544afc2889bd"
    "it"
  end
  language "ja" do
    sha256 "2aecdffcd7c274f388351ccc88d0e23d4be02413aeca5b4bc9a8e2eaa275236b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0c3fe4f099f04ed3107869d1846cc702deb141c80bf25520c53204f37aa5279e"
    "ko"
  end
  language "nl" do
    sha256 "5a1ba10f2d0b90abf5e06c7bf557468f0c83e42a0fbbc419535764313f992f84"
    "nl"
  end
  language "pt-BR" do
    sha256 "f6ccc35a38a4276994d8c45d7aecffda2bd597f74667b20d55b470802c7c88fe"
    "pt-BR"
  end
  language "ru" do
    sha256 "06655eaddc0d66d11fbfec7eda0ca3dff926fa33b5636921fe9542d4d9c7fed1"
    "ru"
  end
  language "uk" do
    sha256 "4fb964f53de8f7dc28128205abb7ab20568858fc99e8408f6370254e5127f6e3"
    "uk"
  end
  language "zh-TW" do
    sha256 "d179d6c3df9d44cd7fff35859b3418548bb3cf33c8a0f9216682db2cde38bd9b"
    "zh-TW"
  end
  language "zh" do
    sha256 "441f1ee450454ee1d185d468bf9340f6bdbb31a284446611562de3e8fd3815b9"
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
