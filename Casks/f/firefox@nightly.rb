cask "firefox@nightly" do
  version "162.0a1,2026-11-09-21-44-46"

  language "ca" do
    sha256 "5f37e55a706f07681e6b5ad1ea157081338cd732c6952c1238ad35e2bdaafddc"
    "ca"
  end
  language "cs" do
    sha256 "b52216f262b1d93b7837310d333ae8e89c32121af3061d1b01c0d5af236ae991"
    "cs"
  end
  language "de" do
    sha256 "e486410258cf2be2e2884368495c62a15dbd20d8f380032f4ebbb8de0689c9ce"
    "de"
  end
  language "en-CA" do
    sha256 "b032e57075872a434ac4490858e52dec96c435c8254dedb218f56a1a73894225"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e7e1fdafddfb19cadfd5affdd29eef367af98764c34112ff123bfc293a2ab953"
    "en-GB"
  end
  language "en", default: true do
    sha256 "bf616c0bfeb60376806427ef6081cd45b3f2473a35f7e26a6f419aa878455e59"
    "en-US"
  end
  language "es" do
    sha256 "a7d14589910e2d2b381e84ad3e553f5fe9ba84e1833b47a2f4392d597a258744"
    "es-ES"
  end
  language "fr" do
    sha256 "94921278df36da0367dc954dfeaf3e32fc9ceccbbb77c96432c3ede2b9a73416"
    "fr"
  end
  language "it" do
    sha256 "f4ffa632fe52508f3b496cc1af12d965a608ce429da0e3564c498c8b619b6ef7"
    "it"
  end
  language "ja" do
    sha256 "53669c5188a769189579785a19362f475168c66a8251a03164e482f0043e5d83"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "6f099591fef9ecdc9d71e2f81e9d6478fa66ebaca98506cd06fe729ec0d203aa"
    "ko"
  end
  language "nl" do
    sha256 "463466bfdf53b673e09dc509a71e92dbbe816fe2383f55fa54c39f8717266caa"
    "nl"
  end
  language "pt-BR" do
    sha256 "f15a7424954ed87d429023bcb8062a732b0f7e78790a6a1a73c7603f311bbffd"
    "pt-BR"
  end
  language "ru" do
    sha256 "ec3036932e42c7ac002c1149c2be66d3e68f8d8ffba29de08bccfd18aef1afa5"
    "ru"
  end
  language "uk" do
    sha256 "2262740080d588714a031ee5b65dffe6ba6a1530cea7c1729dc215b044ce90ef"
    "uk"
  end
  language "zh-TW" do
    sha256 "5056cc840bec26baec9aa8cc052f8a8a614b6fe9668ce27c0bdd3aaa5c6e4d69"
    "zh-TW"
  end
  language "zh" do
    sha256 "8c38de7b0775d764172b3758c8a27ad3c0db018c29d4153c6d8eef9ab27150d3"
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
