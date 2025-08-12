cask "firefox@nightly" do
  version "143.0a1,2025-08-11-21-26-51"

  language "ca" do
    sha256 "2a61c8e1aecadc98a29d6d0c5e6a0819f3820269c7725f3b265bc8cde989c299"
    "ca"
  end
  language "cs" do
    sha256 "0090a2850e8a6d9f9e8bb6ad20717b645ba7ac5fdc7428be6eb837bacc597f57"
    "cs"
  end
  language "de" do
    sha256 "3bdc769f1b7d15be1c745ee31b2badd5ef4c923358c48ceeb29e1364569014e9"
    "de"
  end
  language "en-CA" do
    sha256 "76c3dd078992e33b41990b24312221ecb679c632df0189b0f5a32a8982ac9e1b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c8d3aa7871bf61185a4e118abcda53f8bb28cf3acad0698448cc1741dc5d123b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3c6db6def9e41c2c1ca410d810fd58e496406262e6491508b5157447cae85603"
    "en-US"
  end
  language "es" do
    sha256 "acebd2b7e35cf7ecba33e8efff7a3c671857bf33a45aa442bedbd7a9f1de9c1e"
    "es-ES"
  end
  language "fr" do
    sha256 "b09007b15b0dbfd2b23452dbfb0cebe67e20ab985134ff995cec4d0fffda6bfb"
    "fr"
  end
  language "it" do
    sha256 "42281894cb7fa540343ad105c6756a3d94d607f43dd28707934c6caf0c12f9d5"
    "it"
  end
  language "ja" do
    sha256 "de5c9b98ab447ad583bd6c8c8ce50b8e46b647c06fb8798b0846aa33bdb2650f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b6cec2f695fe21381cdc637818a733c3e10adffe8057a33af86aec7e63ee57a6"
    "ko"
  end
  language "nl" do
    sha256 "3d09006fc574f6e9051b5958e7ddcfb02f826756283eeb71fa35d6ab4baf3b38"
    "nl"
  end
  language "pt-BR" do
    sha256 "9dab7ff8ec9804d1ca5cce41a08703ab7d460edb14a6810ac6e13249e9d18935"
    "pt-BR"
  end
  language "ru" do
    sha256 "0197fbe9544e1a57e4089849df1e7846f8889f9800e5df913efb284a216e24e3"
    "ru"
  end
  language "uk" do
    sha256 "882ea4ecf684cd03fd0ed6668ffce995d3ba28f30fbc2f6527e3cb73425157c1"
    "uk"
  end
  language "zh-TW" do
    sha256 "666aedb9ae7f708c0d46ef676b0d674f5b4099c212cd2b7aff3edd2604904f60"
    "zh-TW"
  end
  language "zh" do
    sha256 "de86ba6004ab896bc56067364287884c76500c52d4c609294f9a450731d672db"
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
