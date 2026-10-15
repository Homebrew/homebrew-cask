cask "firefox@nightly" do
  version "160.0a1,2026-10-15-09-36-24"

  language "ca" do
    sha256 "1435b6ff89909c9cff84a31598f8879d4a397a04a2483ed8cf78099d9105ebe8"
    "ca"
  end
  language "cs" do
    sha256 "f50bdb695fd4bc4280e1859a3e559db75fe62d5c3390b6d791df69f4894acdd2"
    "cs"
  end
  language "de" do
    sha256 "bc5542451c6af4291f98722cc4a8f04a55d6974016c20e334c8b0454bd932d44"
    "de"
  end
  language "en-CA" do
    sha256 "6deca85ce7faafe2f41ab5e4b5d92c4dfdee69853955bf1c84a64dd07205df60"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3230d425ead6faaf3b7296c4adac04a94fe7ee810484ef2b45952798d1a0bd16"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b859f53f1e614bed2e4bbd4672757f8a7bb7340ac85df10152cedbe910794c00"
    "en-US"
  end
  language "es" do
    sha256 "45b016f90e2d0f9956baf6e4def24adeb73700ab9e777a15773270c02327e2af"
    "es-ES"
  end
  language "fr" do
    sha256 "00601160454533cb3b9537b0a854d62034660b4e775bf7284ba3b50c24506012"
    "fr"
  end
  language "it" do
    sha256 "7f163c3701f2afaa92883a03d1912e08b13d35173ea69ed175a5839e1ff9b2bd"
    "it"
  end
  language "ja" do
    sha256 "54de0eab51d8275389955e1a6e43fdec2961ddae345662613da68cd9792ed197"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "274edab854cf0bc138228a4ee24d58ce4f958fe109d07f41466743c90602fe87"
    "ko"
  end
  language "nl" do
    sha256 "d83035fd4605d0cab2ac736fadaa26e795f07bb117016cd7e2a8ac1a1e87430c"
    "nl"
  end
  language "pt-BR" do
    sha256 "6049721e0e0faa4f2f875732a61587c35b5e4a905174cbc9e6d81a5a72e3a574"
    "pt-BR"
  end
  language "ru" do
    sha256 "79c17836ce583042a9ef9b98cf08a76bb9e852d9c6b049badc6199e4c380c0f2"
    "ru"
  end
  language "uk" do
    sha256 "e4dda19f6fd6aaf9ae01f5cfd25b22ea38953538921b6d9b0d61658054aabbee"
    "uk"
  end
  language "zh-TW" do
    sha256 "61db29db97976c9198feb842ace63546cf2b1377afb32e5bae25c3f827d9ef70"
    "zh-TW"
  end
  language "zh" do
    sha256 "8626fa2e87549a18521da2ede89459618d1fdfece78e5adcde1cafc465f8b5f3"
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
