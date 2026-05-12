cask "firefox@nightly" do
  version "152.0a1,2026-05-12-09-02-14"

  language "ca" do
    sha256 "8e7357b6178eb0c0ae1c762f05d810d7258b28ee3b8f102bb6a8513dc2f72160"
    "ca"
  end
  language "cs" do
    sha256 "440a4c7f2a4e6cb3d29d4df1cf44e08977635769ce5f89ec8bdb0794a7487d7f"
    "cs"
  end
  language "de" do
    sha256 "a93d8330f83a0e47c099235a3fe86650fc02e579a8e352c814c467a065938268"
    "de"
  end
  language "en-CA" do
    sha256 "e4d4522872f56b1405eeea0d78ed46396827243b6b0dd0d5b22d694a6d53df63"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c62c8254132e370f237a8b7aeac30458e62a86a0f7877ab2adc2933b1990a11a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fa321c5624ee1edc5003b117781736b1a7896c8dcd347e6939dee58128a12a2b"
    "en-US"
  end
  language "es" do
    sha256 "9713fc361cec477bd82649dc1f6be633ee19da58f8156c61eb950116365a54a3"
    "es-ES"
  end
  language "fr" do
    sha256 "f240b5e92fd33a40fbc3696e4e9048ba54ddb9f7c14011a4a0628da10cd96849"
    "fr"
  end
  language "it" do
    sha256 "b867ead2f6345b87c1f2d8e16ddbe7f14dfe51f199aa46aacf50a5ac78850a84"
    "it"
  end
  language "ja" do
    sha256 "586238123ed99092cb95efddf4f8e7c48101d30b9e91e56a0a4e384f1b50d860"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "3c111ea935ef02ba2c464fee95e65834c9cb2a1e7380747e6ed5d55df4949f98"
    "ko"
  end
  language "nl" do
    sha256 "c5ffcc057fd6029fe0dc9b7bb935c73bd8f1743e4b9353718f9a3c3e334fba0d"
    "nl"
  end
  language "pt-BR" do
    sha256 "bd5a98f70b848f4f9a3412b5647556dba2c7ac58ef6b5464597591fccf415728"
    "pt-BR"
  end
  language "ru" do
    sha256 "1299cf26c594eeb0d5fd36bd0a5e6ed38f7decf5407cb37b0bd7eb2381ad7ac7"
    "ru"
  end
  language "uk" do
    sha256 "6b35d6df5d32ee47e6b1129c8d0a9d6ccd8a3688a32229bbd00e298bd702598c"
    "uk"
  end
  language "zh-TW" do
    sha256 "1776de97ecf935e20bc9e3475cecac3c50c344eef18a0364edfad5d0b1205f88"
    "zh-TW"
  end
  language "zh" do
    sha256 "056564b0edbf333efa6b039fef71580030a115f75848d9b124df422c832de447"
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
