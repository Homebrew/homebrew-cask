cask "firefox@nightly" do
  version "144.0a1,2025-09-11-09-57-05"

  language "ca" do
    sha256 "61c596878b4177e42f22010c8db61e51579158f05761de738216e7068a62e64e"
    "ca"
  end
  language "cs" do
    sha256 "6975e63874bb514d304752c7a946201cd458ffad247650683884979a52e7254e"
    "cs"
  end
  language "de" do
    sha256 "a0c5343822450979b9da9e9da85a3a2be8de4adaa1b3f98a2ff4cd0d499a62ca"
    "de"
  end
  language "en-CA" do
    sha256 "b4acba8cb508bc3bd74750032982635655ad9a037dad42dca5ba621caf285a13"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a38fb0d09a1c3b39bf28b0bfeb450816d0b79dce135c2012790423a9b47591cd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b8284045e2ed276ffd364cce5d7cb79323aad1476dd79b360398adb7ce2f6be8"
    "en-US"
  end
  language "es" do
    sha256 "b5a6756e611c96f165d6c5a2953d290232cbe53afcc25a22f297b64fff7706dc"
    "es-ES"
  end
  language "fr" do
    sha256 "ac6ca022b738c304a85dbe49dafc8f20646010a79f8c73557d4f4e4c68b82703"
    "fr"
  end
  language "it" do
    sha256 "fdc0b3cb2c572e3210f70869e72d8c07793b82331ac98f24c1973ca2abf054da"
    "it"
  end
  language "ja" do
    sha256 "af7424b1be171ac22f04c921f5acf83b13770e6c9887524832a1429b1bb88efb"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9717c3238260e6454292a0273168935296ff60a77f2a29354d5f63a9be677db4"
    "ko"
  end
  language "nl" do
    sha256 "c6e4ecd7feaeb82873f77ec04ebc6e340fff27c00b91186c5ae3070662fcdb8c"
    "nl"
  end
  language "pt-BR" do
    sha256 "a6130cd8dc09ceb7c0e94aa3619e571e0db338f69bdab1d235c7952a1a62dd5e"
    "pt-BR"
  end
  language "ru" do
    sha256 "0bfe486f6dc11ce0a03cfb37ffac47b74eefc70de1648cdda120e0db97586b6a"
    "ru"
  end
  language "uk" do
    sha256 "e4acec06c81a26a090de189f955d3b1ddd9a2f70f9063f28b5e835917128b83d"
    "uk"
  end
  language "zh-TW" do
    sha256 "92f6628fe5119e64bc788ec30b6e7731f8ba8226d997e4fbfc1b5cf5191f4213"
    "zh-TW"
  end
  language "zh" do
    sha256 "570effdf7bb81abfea323e10ccd95db23f2a29ff79c9d86862c4fa1d736a9d9f"
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
