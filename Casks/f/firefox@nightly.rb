cask "firefox@nightly" do
  version "144.0a1,2025-08-23-09-17-02"

  language "ca" do
    sha256 "619c4e5f4ac0f4d047e8460594b064bb4a9f825864a9a154fd89de725722feaa"
    "ca"
  end
  language "cs" do
    sha256 "99925bf949d6b117e7d91ed2af1ab3f5a709150d0a5ae40680b2886c97f50ddd"
    "cs"
  end
  language "de" do
    sha256 "3ac05cf610606e6a86a406f0fa49fb19abf72d114b8d8591df6ddbfb59cbc764"
    "de"
  end
  language "en-CA" do
    sha256 "9a0e0c5885b5c3a00c5e9a04808169bfd109f14fe8d313c4be3238e236955eaf"
    "en-CA"
  end
  language "en-GB" do
    sha256 "86a2a83914453fe994d0ea773abce8d8c2b348a7fba4ee3a1c2a6cb876a583ec"
    "en-GB"
  end
  language "en", default: true do
    sha256 "152e1392b24ee0383d31cf96cfc4ad22ed87ac1cb3163911478433c211ecac9a"
    "en-US"
  end
  language "es" do
    sha256 "5e9e44ac1a8aaf5ee79477709928a60fe86db83c4b43da33ed1ae460c87002aa"
    "es-ES"
  end
  language "fr" do
    sha256 "9ffabf1641a448853bdfe39c1113942c56a81cb73aec1b587042d5b41c57a937"
    "fr"
  end
  language "it" do
    sha256 "13e45d29a38beeeedb400b84c1e3b1f223bf88a9c0c288b8aeedcb3c95887bda"
    "it"
  end
  language "ja" do
    sha256 "997f8a386fe24c8d50564591ce2fac2c6a7eed27937b881c4ce727274a73d8d4"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e693fc604b84a7f61fb33d61b0bfc99e23dd53d5cdfd1a36c47e6bc9d036dffe"
    "ko"
  end
  language "nl" do
    sha256 "bbb87ee74db1aa20ac23b5d9d4ac9b94f38981b81476861ba778b5b1c0dba5e3"
    "nl"
  end
  language "pt-BR" do
    sha256 "5f70312d8de74be216c9237a8667457ad9b5b07dcae8a890e00883e5c39d77ba"
    "pt-BR"
  end
  language "ru" do
    sha256 "e17f597cfcdc99f12966e7ad48e8237358396b98c666fef81b62295d63ec48dd"
    "ru"
  end
  language "uk" do
    sha256 "8b80a19310e04b10cb72bd87e3e99725bed2f42de5868d317a57f2fad058d1d3"
    "uk"
  end
  language "zh-TW" do
    sha256 "68f658d2dee3bd77f888d8542c9aed5ef87a127ba72eab2293b06edf512eb98a"
    "zh-TW"
  end
  language "zh" do
    sha256 "56224592620ceda1ef1b8b755eb1191010b89451cccef3a83f658f48127d1aa3"
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
  depends_on macos: ">= :catalina"

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
