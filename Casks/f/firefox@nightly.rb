cask "firefox@nightly" do
  version "144.0a1,2025-09-07-21-10-34"

  language "ca" do
    sha256 "00cbc92c3ea24c33d83a5653f03a5e0d398c258a9200fd3a126d8960223c2688"
    "ca"
  end
  language "cs" do
    sha256 "cad4a67321b6fa5fff446fa5b59f041a3502424346a6d5411d8dd99fbd234007"
    "cs"
  end
  language "de" do
    sha256 "def4e5cb0a104b72616d122d3eee4a90acd715e050073b53f8469d2f26fba32d"
    "de"
  end
  language "en-CA" do
    sha256 "1d2cc932a5c5826f250916294509b4ecd30747e1a4ad9bf7b2fba446989e4853"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ca93bad41cdbb63eaa71f2c511820f365b5104e2804414d0fb1c9d2996c7aa4f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2ec054ba148967977efd1c05c6e23095d205af4157daa7052fe5eab5b2a5dba4"
    "en-US"
  end
  language "es" do
    sha256 "6ade22e97ca5bcb4f40c933e9303f2fef710f4924993059ae90eac38c02ae589"
    "es-ES"
  end
  language "fr" do
    sha256 "9bf769bd2ed2eac21b7f0418e03531b3481e8c9f095e63d3456109eb6849e4e5"
    "fr"
  end
  language "it" do
    sha256 "2afb2b87a17abc5eaef649026efc29cbf2f0b192407ad1dad77308885e19a4b0"
    "it"
  end
  language "ja" do
    sha256 "99b494ae12181788219d2c015df6dd683110d614ce69970a777060353c3fae27"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2a1c9aafd416ed857ace6f94f56862eab5c303f4658b1c6df7176aacbc952502"
    "ko"
  end
  language "nl" do
    sha256 "df151775b7048063ba39986bdcc036342759b00b851b5be8e97af49a272db557"
    "nl"
  end
  language "pt-BR" do
    sha256 "99fdf1d15d9410e5544603a14b32179a8f70334f4fdb4981375cf5168588e06c"
    "pt-BR"
  end
  language "ru" do
    sha256 "a82285b628ef48fcc98555802e0fe987b98eebafc670190aa36e1a5e2b2d48ed"
    "ru"
  end
  language "uk" do
    sha256 "75a25a9651213f8fb1c1a8dc521bf13129ee7a6e8553ea63bf982c0a04f98658"
    "uk"
  end
  language "zh-TW" do
    sha256 "35eb4d44f3d1e0a9bf7aee51e9f501f602b264282621733c3fcd99a0f7386a76"
    "zh-TW"
  end
  language "zh" do
    sha256 "99b2009e11f0d2486dd9b5038b08316d49c1fabd0488685d0586dc73b7f94d1a"
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
