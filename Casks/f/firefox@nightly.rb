cask "firefox@nightly" do
  version "144.0a1,2025-08-25-09-14-13"

  language "ca" do
    sha256 "dc96d517862d05f00128180e21c64ed43757885055087419594c444ea977e952"
    "ca"
  end
  language "cs" do
    sha256 "8999fa48858803260bbf32fdd3fe9bc6ad676587b56df4a012857d3f557e39fd"
    "cs"
  end
  language "de" do
    sha256 "0813ab3375386ec1fdb4d15d1c14de3b1fa3cb2927027903e760e228f8eb3389"
    "de"
  end
  language "en-CA" do
    sha256 "ecd6ca40d4acc6459ac1618b22f10ac16894facfbd3e1b2cda0427fc8c781f4f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1ce6b7d81b8eabae5ae3afb6ba2cdbe97fb7d803f3f378d527aca0c69988a0a6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "742fede39e71209dd5ab4bab014fb35b5cc2a819381e5573b3c551fe1e0bde0e"
    "en-US"
  end
  language "es" do
    sha256 "063e2c326b6d051c5c04a2edd28120d5c8959a4a22d4ad5a9e99047222d94ca6"
    "es-ES"
  end
  language "fr" do
    sha256 "3b35ecce366ea4ee486c0aba0ee15b33253bcbec5d39c6de4da5b714a04a86cd"
    "fr"
  end
  language "it" do
    sha256 "566eace9ecca3950f30d06827bf3b56151cdfa97fe54c139c8f308dc692a4453"
    "it"
  end
  language "ja" do
    sha256 "46edb7c574d785de578502bb29bd9006ad1592d6bbbf81763cfab480576a7b0d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9d19510e052fef46c16c65c7f99df147a25ee080e071a57a5328981a06197115"
    "ko"
  end
  language "nl" do
    sha256 "787757541996b2ec0bfb753d2784522e70e8ab111579300df17cd9c20784cf1c"
    "nl"
  end
  language "pt-BR" do
    sha256 "91ff29934e950571ab7a7d4c518e7606c777a7c370281837cf5a75ecbcb1c754"
    "pt-BR"
  end
  language "ru" do
    sha256 "9b63949e89c10a79a79a71b8304fdbf3c5b73cb18ed2c4e173f656f53ab91625"
    "ru"
  end
  language "uk" do
    sha256 "88bcd45cd1d77d6846110df2dbaef73ec0a4cfc093960a814c4ea493440f08fd"
    "uk"
  end
  language "zh-TW" do
    sha256 "8cdb11e0c7662a689e1f06f5928be6c5520cf5429fb8a157413ae077d1a6c89e"
    "zh-TW"
  end
  language "zh" do
    sha256 "4759081f6a118fee67819fdca83977e73dc83ef9592ce4204ab028a265f51ef6"
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
