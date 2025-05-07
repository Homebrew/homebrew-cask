cask "firefox@nightly" do
  version "140.0a1,2025-05-07-09-45-57"

  language "ca" do
    sha256 "d1814f622803d3d8f0084cfd5414c5a442a8bacdbced0be5c32495b99894667a"
    "ca"
  end
  language "cs" do
    sha256 "6df243635ee3e95a8b9bf31df3f80072128c234317a9cd0e6076636ee049569a"
    "cs"
  end
  language "de" do
    sha256 "b8e3cec7f52c2be05f878aa7c350d497c03d1fe12468d09b0c7a6ad7f4e000c8"
    "de"
  end
  language "en-CA" do
    sha256 "625af7b99776145194a1d623cd86dfb2bef721270c3ad97fae22cfb9dc496ecb"
    "en-CA"
  end
  language "en-GB" do
    sha256 "030502cf90e44cf1130ee84f7d750df90f46a59b9b49524c371671378d21eb7d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3e1411e17315e8200beeabf81cf18e3c7512145da2f7e0219c4cfe6497eb37be"
    "en-US"
  end
  language "es" do
    sha256 "2b0ac9a70ee592899ef5c6989f9818b209ab621782b63d3233061009774e72a6"
    "es-ES"
  end
  language "fr" do
    sha256 "2c512ae9c2fc4bfb17452c1f3bd21e5239a935a082a40238cf377b9c13ff6394"
    "fr"
  end
  language "it" do
    sha256 "b84b7f68ee72504dbfd4a29274b1adbf878c5f431d0e622e16416bb1b7a69e2e"
    "it"
  end
  language "ja" do
    sha256 "9b0284880fb2a700a6683df744ca528f081479bd27a3e195c8023127e7040fc5"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c5d276187f331466d7e9f15e7c3d7595e55d2c8a481da4a3b47b87cc64f3f2d2"
    "ko"
  end
  language "nl" do
    sha256 "313a8bf6a92da20ac0fadbdfa56191d63b33537af71216f2f2956aebc8a546d5"
    "nl"
  end
  language "pt-BR" do
    sha256 "be2fb2db6116cf991a52918c9568c0dfbcc5b95fad4c799fcd4af3e6658a5d22"
    "pt-BR"
  end
  language "ru" do
    sha256 "5b1d2f38a28a5dd064e6067218af27da66802ff54498a1389e5edeb791ee5f53"
    "ru"
  end
  language "uk" do
    sha256 "e608ad222cffced5893be97398e475121d62abe1a63fbe68eec1ea5dfb9e501a"
    "uk"
  end
  language "zh-TW" do
    sha256 "8aeddee3f4ed7aa89fe753c80c1616c61f7340908a8349bec25ba858ff4bc9a8"
    "zh-TW"
  end
  language "zh" do
    sha256 "4473202bcd5a8c0b8db968c287b7c61e3e1ab316bbcbd7aacfda23b00aaef3bc"
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
