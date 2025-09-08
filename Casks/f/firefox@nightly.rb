cask "firefox@nightly" do
  version "144.0a1,2025-09-08-08-22-14"

  language "ca" do
    sha256 "a6ccedc61ff0e30792651c6c68705f94c07360928f5a7878034dd459d61cadfa"
    "ca"
  end
  language "cs" do
    sha256 "7d545c86ba2454dfe505eebec260514976085a7f38b1818000ecc04794f14076"
    "cs"
  end
  language "de" do
    sha256 "a5968016fd6115a4e4be8da1becb6a42f75d441b69018d42a64758aeb5e16772"
    "de"
  end
  language "en-CA" do
    sha256 "81c7fb6113c6ee3477a044273fbc023d3f08ee391f235832d7587f98e07b9745"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a7394d08f5886639a1c4387123cd588e643212ddbf7cb8f031ae02072e165930"
    "en-GB"
  end
  language "en", default: true do
    sha256 "01354f95c08f0a025cec2bbece45dfe26fc05a25816f2f623ae237cb45e1440c"
    "en-US"
  end
  language "es" do
    sha256 "aef7fdb7550c63c472170db7f2bd37f707a947daa9535ac12d47b81764081442"
    "es-ES"
  end
  language "fr" do
    sha256 "1e0a2c27ed125fd7489062d0b900f807dcde1ea4ca30dfba33d6a98d7fedfe66"
    "fr"
  end
  language "it" do
    sha256 "5a9985b35e09037b5283f3065fccd7290853af57d509bb6274ddfa6c10d84f51"
    "it"
  end
  language "ja" do
    sha256 "15871a4b3f91b9520f4e2af75b7e5ec80df08177b8ab496bb342b38c6c0355da"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "1303f33a3597af99b8edd4ebed23059711ae65feda95be68ab970b62b3d9b37d"
    "ko"
  end
  language "nl" do
    sha256 "6015a8be3feca2135555eab6a15afde2b242df8de436314da9077d388cd3363b"
    "nl"
  end
  language "pt-BR" do
    sha256 "385719931ec752369ebf2fe6bd450013e2b79a9f12a24722d24d0f13c0a93de2"
    "pt-BR"
  end
  language "ru" do
    sha256 "d63ad4c08a30916721fb2566f743d3fa0fd73f1fe0cf15237c1e7419bae64dfc"
    "ru"
  end
  language "uk" do
    sha256 "a6f3fef38500977fc98e7d42314a9241f95ccdaf4db1a5ac666dd56ff03e0284"
    "uk"
  end
  language "zh-TW" do
    sha256 "1d2e7c8b77752aad3ee4c8164539086dd51cb3d7a3b49ee9fadd03cbefff7d5b"
    "zh-TW"
  end
  language "zh" do
    sha256 "35e9cf64ca7d0f5128eca81de50b623403ca5936c6f453648ed08bdfadc7f42c"
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
