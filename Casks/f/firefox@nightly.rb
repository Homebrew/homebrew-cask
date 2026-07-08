cask "firefox@nightly" do
  version "154.0a1,2026-07-08-09-01-28"

  language "ca" do
    sha256 "78b311efa155bf7b6b3f86d090690440e241389603a379efef83b69ee39e76ac"
    "ca"
  end
  language "cs" do
    sha256 "91efccebb52f799929ff801e8c75d16b44c37501c024ab984454e42c5d844e23"
    "cs"
  end
  language "de" do
    sha256 "231b54fe5decc38b3d26b880fc3228856fb53984cec0eff39e4599de21f76d7e"
    "de"
  end
  language "en-CA" do
    sha256 "c0a5b32961c820865e69c1788db39c66e18773d361e192a7de83727a5c4e2977"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d4a24ab9cfcc8bd86d76998018093b50a221979d8b3b21ac39af8949e12acdb2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "64a9cbb8818b51d972676cfa8454555333506779d4ad509abe0f0bf54474d767"
    "en-US"
  end
  language "es" do
    sha256 "f283f610f4edab1a7f667ea0017ec45fd6016d7620e419a21c09f00d3d4a7e33"
    "es-ES"
  end
  language "fr" do
    sha256 "bcd5429cd30ee7a96f4d827ec9f2c7e5b16204d585d91dad8dda9c8d77c3d755"
    "fr"
  end
  language "it" do
    sha256 "944a0c18cb2cc8a023782ff4d6f57e51a818aed3d84c10ec56c5fc8049d71f4c"
    "it"
  end
  language "ja" do
    sha256 "416b973b35f4c6227dfaedcc7f809773f4843680ee79cd21391f0a8594c18d26"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "3ad29c2597337b5f1e7e7aa348bb526cab1f861c262258501d295346989c8fb6"
    "ko"
  end
  language "nl" do
    sha256 "05ec7c11adfc482f0cb1ab1ff185e3a53147a1effdf29f6022cfd00eae5c195a"
    "nl"
  end
  language "pt-BR" do
    sha256 "a8fd44bc696da35271786bfe566eabd74e8cc3ae8d1814ed468f33ddf8886717"
    "pt-BR"
  end
  language "ru" do
    sha256 "9dd88c0a93c468d134899051edb4f17ecf25809150d07f8e9ed7698891fd43a1"
    "ru"
  end
  language "uk" do
    sha256 "ac861fe278b03f5b5874799b3de6c786ecee56ed7773a0729d4af084b5eb3efd"
    "uk"
  end
  language "zh-TW" do
    sha256 "3d0f2e480430d3c7928898e486176f7fa18e8a4dbf2363a640d790502f7fb08a"
    "zh-TW"
  end
  language "zh" do
    sha256 "421568806ef34683fdfcc60406708859e494e7066ba0e78cf4044d2cf8d6e0d0"
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
