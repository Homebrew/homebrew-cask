cask "firefox@nightly" do
  version "155.0a1,2026-07-24-09-01-43"

  language "ca" do
    sha256 "e7ee8089744b3385e485b12faf560a4c78e5966634f7579ae306881d88f474cc"
    "ca"
  end
  language "cs" do
    sha256 "7f733acdc206f0d4c18a475ceb483459805e8b701087349393ed05cfba611a3a"
    "cs"
  end
  language "de" do
    sha256 "ae6a40d448da5c3aaffbff0bcb6598eda3ae60bdb259fbcd2efe6024243ef095"
    "de"
  end
  language "en-CA" do
    sha256 "91b0dfac99d15358375bd697c1f4ac1b09f819e7c574964751916af64c868d90"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a237e5e7258d74ba579264c9df779a572e9773f538f52b2c5da107cf631ecceb"
    "en-GB"
  end
  language "en", default: true do
    sha256 "da960116f669fe603d584eca723ac4c245da5dc982848575d8b498a9da2a1191"
    "en-US"
  end
  language "es" do
    sha256 "0e34ca9a10843c75d327da1bfa684f871ae478ae75fc17097e08cec32ef53546"
    "es-ES"
  end
  language "fr" do
    sha256 "7de311b8d28f3d52b9850647987f1fca74779bc0c5bf55f0699882d410b242fb"
    "fr"
  end
  language "it" do
    sha256 "a214e8e42cfb8284ac47d804e7f91452b9534890cd752ade57c278e0813d0bb0"
    "it"
  end
  language "ja" do
    sha256 "60d88cd96481ce9e7eee0084da401067ece2e20b4647519e82a29fed37ba078f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b28d794cd261364a5d55fcaa5067cb7e8ff489d014a896a7906cd8f84937f87d"
    "ko"
  end
  language "nl" do
    sha256 "4cd3f4b5462e92eb726e3969123306d5d4433d7b835cd40adaf8082e587ad219"
    "nl"
  end
  language "pt-BR" do
    sha256 "317506488624b57ebbba4ffecafc94382de9c478a608a1d37033fce8b6acb628"
    "pt-BR"
  end
  language "ru" do
    sha256 "953c3fd3c23edca9f03af68ef480087ce0a1a1fe7d39616e15d1e0e76730bb02"
    "ru"
  end
  language "uk" do
    sha256 "c5ea5cfe9647fbfdb9413a8d2e0fd8ffe77a1bd7e3fbf70f86fabfbdb9ee3727"
    "uk"
  end
  language "zh-TW" do
    sha256 "a933058a76195e77c7c893495ac184cfe0ea9904ee442b41edbdbb9a8a5b0d32"
    "zh-TW"
  end
  language "zh" do
    sha256 "8f61a353854c14072ea1b679b45c09dc63f290bf60f2634ef7cc877f73939ce4"
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
