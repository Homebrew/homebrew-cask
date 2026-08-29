cask "firefox@nightly" do
  version "157.0a1,2026-08-28-21-21-13"

  language "ca" do
    sha256 "ca556fac81bda78153b56ea70313cbfc6a310781bc0f2cf0b8a467ae14a10294"
    "ca"
  end
  language "cs" do
    sha256 "a5fcc40fe55867c9e673a4a6d464b19d460bd5499f61298ae2fcbafe1df4039d"
    "cs"
  end
  language "de" do
    sha256 "39add3dabf0ce9a154e6430bd006fb4f88107e2db3ec2295d9381007ac0c775e"
    "de"
  end
  language "en-CA" do
    sha256 "e13af1e38ad7c7fec020856c6a2c57de35ac52c63f646df8540a48fc60bec101"
    "en-CA"
  end
  language "en-GB" do
    sha256 "bda7f497e5f7702531b8efaed7075b5d760f333def817ef5384700976562042d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7a180627907aea15d484752525eb40490eabec57ef20f2f166daa375830b7a8e"
    "en-US"
  end
  language "es" do
    sha256 "7485032a26681b6526192cd0c7d8786857662d38ddf324006f311156bba540fb"
    "es-ES"
  end
  language "fr" do
    sha256 "916eeea1e3f6fb55a492875fe5a04f5b04b73075031646bc92c6dad847947392"
    "fr"
  end
  language "it" do
    sha256 "6b8fff39f25ade7087a4aed5cba048cfcba83f22c4610223ce0658555bf0f1dd"
    "it"
  end
  language "ja" do
    sha256 "caba3d3c2380948977b00dfa38dd71694ee3030a090cadb417f8b873ba278310"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "eadc1078a2f817ec7f52963a6842bd20ff01d3883e17ba316c74663d93c159f0"
    "ko"
  end
  language "nl" do
    sha256 "1321c41ec7861e6a30073d768ac2e5240d9c32affe1df643bc117c899ede9c73"
    "nl"
  end
  language "pt-BR" do
    sha256 "fb7b9ab5bdf57fbcfa9cafb32b143e8bacab4fd16e1a66a810839d710bf65bac"
    "pt-BR"
  end
  language "ru" do
    sha256 "856a6a813ca3d67601f63929372f8b88fa1b9e99c0aad27fdc4510a4f4e34808"
    "ru"
  end
  language "uk" do
    sha256 "3f8bac97fc155fab774ca488f431f3d8e69b5a68ec48721c1f80598c186621b9"
    "uk"
  end
  language "zh-TW" do
    sha256 "b4629f7f27bfe5650c2978d2167e846856bce8696cd610d2cde20a6ef191dc87"
    "zh-TW"
  end
  language "zh" do
    sha256 "4912da35f52f286a9cf06804a2ea3e549ad50fd583ad27f44c09d644b29a7406"
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
        "~/Library/Preferences/org.mozilla.nightly.plist",
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
