cask "firefox@nightly" do
  version "139.0a1,2025-04-14-09-48-05"

  language "ca" do
    sha256 "3a53ce089b51185dcc7ab51c27a92150b3a02a5f6051aaa3631582872b679d8c"
    "ca"
  end
  language "cs" do
    sha256 "5e7ec7eb844d5cde513e76f2b54b99e84e31fa3aeffec3a5fd44fce58b84bd66"
    "cs"
  end
  language "de" do
    sha256 "cedcc45baaf3af857163e9fda932efaf4059311774a1c66dc8373af0b47a718a"
    "de"
  end
  language "en-CA" do
    sha256 "fcb382af4de93e20c5368ea3d31b93dff67de5906680db0234824468593f2ed7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5e32a3a7fd2ac1589ef60c74bdd958d12985e7fb04ae12f237cc2be3a383ca3f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "abe9d95f9ebdb78f5f3b1684ebb61cf60da5348d87945d99f6283b73ed5cb998"
    "en-US"
  end
  language "es" do
    sha256 "d00a0a31ca373dfe82ccd7ca9da2660557fab3913ceaee7d66552304800239ef"
    "es-ES"
  end
  language "fr" do
    sha256 "3159853a09c9dc46861593ed3ec866031a4c3e03c832febe06840692f466ee01"
    "fr"
  end
  language "it" do
    sha256 "4d7b49d547b3450798c154ca29d26ca3843508bd8702e0047dfc557f9d4baacf"
    "it"
  end
  language "ja" do
    sha256 "579fd67c633b3252b65429eb3da653028c5975cd27ac30cc9ef4139fa6192aef"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ef4da9ef6ac16e9fcaeb8be9065a20d3216c730fc0f10046eb4c02476cea8b93"
    "ko"
  end
  language "nl" do
    sha256 "49b7a2c1d0d95169ce929153c0eaf4bb1a989e5aba90c76f226925ea95f6e9ed"
    "nl"
  end
  language "pt-BR" do
    sha256 "6e21a00ba12694e166a2b5bb2c7bc9de434edda2fd08d295faae3f7fe8665be2"
    "pt-BR"
  end
  language "ru" do
    sha256 "a87548a9bad0de6b3da42595033eba0494920461007433fe590d938bbbb47089"
    "ru"
  end
  language "uk" do
    sha256 "ac708e313c0d56ed4c66f2e184b7f840a22ea949e1ca1147bac62aa2dc9ae461"
    "uk"
  end
  language "zh-TW" do
    sha256 "891926908b0817f080900754326350e74b6b87b7b79a25069fdb110071e93f81"
    "zh-TW"
  end
  language "zh" do
    sha256 "f089c5610a3f7ab855554e6fcc25048a22c66222a36109b620d68040205d78c9"
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
