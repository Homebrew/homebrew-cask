cask "firefox@nightly" do
  version "147.0a1,2025-11-28-04-23-12"

  language "ca" do
    sha256 "688478d4c24d61a482f3112b94655d127465900d8a03d598dcad59bee3b3af6b"
    "ca"
  end
  language "cs" do
    sha256 "f5f3713723902f1215ed287443143971bbec8bb836f4c8816cad4d280d98c668"
    "cs"
  end
  language "de" do
    sha256 "8ca460aa6b929eb1c60ced113e29b81908ade2c0ce55fa08719efdfe73849ed9"
    "de"
  end
  language "en-CA" do
    sha256 "eac035ffc14f817f88f966970f90fcc0605bcf8eeebac1ec395631c2224bbfdb"
    "en-CA"
  end
  language "en-GB" do
    sha256 "639dda662133c345daf85f0a26cff6eef7824a53bca4ab8dd5700a1bac5f99ed"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8e4f1c8203fb0a5a0734ea7c0d295dafb63c3dc19321ad8c1ddcd85c02abf0d0"
    "en-US"
  end
  language "es" do
    sha256 "9e47711aab53288ee01ab62f63c5b75787d264374958866a7ae8727577e1628e"
    "es-ES"
  end
  language "fr" do
    sha256 "fb4b1f1ae5f36e85687161d400d9f91a48f615892c910bbf3755ef66fbf550a5"
    "fr"
  end
  language "it" do
    sha256 "b908918e5881dfc9bc7a95cb7c36f29b715ca8b946c3739031cfa51dd1b8d89c"
    "it"
  end
  language "ja" do
    sha256 "b586e0cbc2241c20b77e6fac257afa8915236c191deb5ae7600ed1774d1b74c7"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "99f554d196d06a76f95fb6dafda26a8e4af8a2841263eae537ef2723be25fe7c"
    "ko"
  end
  language "nl" do
    sha256 "d3006a7970db2606b9f91c4b15ef30443b54a45c265093a00d82374eceea0bf1"
    "nl"
  end
  language "pt-BR" do
    sha256 "b6424cfce77caac5607c740aadb93bc30a3d27398f601c2449d52863d026e9b0"
    "pt-BR"
  end
  language "ru" do
    sha256 "1040a602665b4584dc410b5bdc0c478142831ce4e39591d0205fd54deb868dc0"
    "ru"
  end
  language "uk" do
    sha256 "d4f093f9cc962e628d0f571e9ef178aba3c6e2c7e04ce8f6f44aaec34571ff7b"
    "uk"
  end
  language "zh-TW" do
    sha256 "15c7893e996566fd44eb26e358d703dfb712e309d45d01242d1a594d32cb5c91"
    "zh-TW"
  end
  language "zh" do
    sha256 "acc859863d7079453a64da16de830e3fb1e1ef0f1100447e0ac6a2a47c183c63"
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
