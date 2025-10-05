cask "firefox@nightly" do
  version "145.0a1,2025-10-05-09-29-45"

  language "ca" do
    sha256 "8f86fe658571b26bd1960ab497e1a239edb1cb6a08565f5ef6512351996db30d"
    "ca"
  end
  language "cs" do
    sha256 "06f6dd69194c7d526c89c0e053c63469ef3d04412b28ea70231d4a623db100ed"
    "cs"
  end
  language "de" do
    sha256 "17964688f0cca1a23f8a20394f5d936618cd887e4e501dd142c1497d48f525b7"
    "de"
  end
  language "en-CA" do
    sha256 "5ed3151c2657a00792064e495b642343d9cb3da290e655263f5ad12ef5ee003d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c52a49f635e9dcbd893b748c04adc8d6a69424202db532c1b0bda579def5eea2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f1b47c597fb4e2371beb085bbde5b629ba5a501ee83b7e0f3b6fecc1ebf9d189"
    "en-US"
  end
  language "es" do
    sha256 "b7427b1f6cfca16065064183a3e295399b9f2dcbf57662d457d5cbedcc711bfe"
    "es-ES"
  end
  language "fr" do
    sha256 "47491d17afd92b0ef04f42d1b9d9ad3bd5d261444b720d0a5c3605740e2eec7a"
    "fr"
  end
  language "it" do
    sha256 "3b376792d69913af0561a37ef1e39af273606714b998c0756c7e9e9d17a8fdd7"
    "it"
  end
  language "ja" do
    sha256 "3506986e6789221f0ec7055a7ac9bd5f1335a4f8478fab50ea766e14389b2c2a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a771d3dced9fdc794d84230cd66db3e7b131bd24ffbcbae8f3ee2c0cf3ddf1b8"
    "ko"
  end
  language "nl" do
    sha256 "e4498455b718339eee8ef63e4ae3a39bb76b71fc3a026d7ed517d7237ed77852"
    "nl"
  end
  language "pt-BR" do
    sha256 "b9f7ab64cda3b3db0456c68f342781c4e92f5e8bde23ec54f141249c56102ce2"
    "pt-BR"
  end
  language "ru" do
    sha256 "a67fe6caa0c7c69b77da1aaa8477e33fce5810cd4a436ff5deeb1f79a6c23f1d"
    "ru"
  end
  language "uk" do
    sha256 "1650d83dcdf45300732f28eb7d98230226daf1535103da7effff8dd9c6a9b859"
    "uk"
  end
  language "zh-TW" do
    sha256 "dc0dffd2f9436cf6ea13eda2829ae050c1f4a26ba570858401c3ea48cea2b533"
    "zh-TW"
  end
  language "zh" do
    sha256 "1458889d3444dcdede1f7df088df9009f2022fa67cb96387d14f00f07ac1a0cc"
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
