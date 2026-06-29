cask "firefox@nightly" do
  version "154.0a1,2026-06-29-09-31-58"

  language "ca" do
    sha256 "9244e2a210d3c77ac50ca7162f52fbdee0bde30dad96040e46009de9d382d069"
    "ca"
  end
  language "cs" do
    sha256 "7b2bee172892a1bd18de4be9947f4fa147e11c35bfbbff8891c060ec0d468868"
    "cs"
  end
  language "de" do
    sha256 "7eb64e2f2a999f26cb67fccd102d7467acec6785a6430da751dd106952db6e3e"
    "de"
  end
  language "en-CA" do
    sha256 "b4205b526fd26ea36696c66f22bf14ecae9238b58d3b0523bef9bb381cae609d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e30fdc789be55add82688838d8bb46252fee58327ce8ddfd23fd14b2c0459437"
    "en-GB"
  end
  language "en", default: true do
    sha256 "aea3481eff6b4d80e6992cd1422e99ea504cf1fd8bdcb91c03899addf6e062c3"
    "en-US"
  end
  language "es" do
    sha256 "b587a6da38e3f121859cdda46eaf1d106209101aa6429cb8520a080f69d9a159"
    "es-ES"
  end
  language "fr" do
    sha256 "6951ef70c5bab29446c857bf016b69009fee210810b523685acf6268d798981a"
    "fr"
  end
  language "it" do
    sha256 "917a4a5dab0c60b53bb825b2d137d628b25091eb0483cccc63b3e0975de2db95"
    "it"
  end
  language "ja" do
    sha256 "209c80fb979e97f45b444a4b1931dda860fe97fae777e31fdb016ee6e1cef466"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9fc43dfa89bbb1b2a6de4897d0810ab45f0b0bff7569474bfb86e7c678b61b04"
    "ko"
  end
  language "nl" do
    sha256 "b990ebeb65b39995846bdbd8724e5d5cc8ccd1ceef7c0f9c32f485d7d6cff147"
    "nl"
  end
  language "pt-BR" do
    sha256 "2b9455313f2f755a4e15bc8f72a414623065f6891ca6caec8723a434d3387fb1"
    "pt-BR"
  end
  language "ru" do
    sha256 "5f32107d4745efb109b4f93c69ca08841bb84036e41f7b3acd7488beae9eb47a"
    "ru"
  end
  language "uk" do
    sha256 "d62cb840ba554e50d9a2ae15f074d999e4f6d7486d0436515a5c3c7ff4512f01"
    "uk"
  end
  language "zh-TW" do
    sha256 "274578a3ab4e48c890c813ea090f04a8777bc2119e461ddce14ae0876f49b322"
    "zh-TW"
  end
  language "zh" do
    sha256 "796623798d92491a1393077fb0eaf6031070768d3b36174d504cce546f9f687e"
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
