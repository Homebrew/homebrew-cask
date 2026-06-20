cask "firefox@nightly" do
  version "154.0a1,2026-06-19-15-48-17"

  language "ca" do
    sha256 "0b8f14874139817bde022cfbba43e8b8dfacfc573b680a09af93b5d512773996"
    "ca"
  end
  language "cs" do
    sha256 "b56cb1b1000325b6a8af6784a3a3969062975e42fec5a56d2c748dfcda049f18"
    "cs"
  end
  language "de" do
    sha256 "30d207f4aa483fe329b0f8ac4afa951618f027e3b75c26fa47947190d7a2d16a"
    "de"
  end
  language "en-CA" do
    sha256 "4bc649b1ba21014dec9ad5f669f418c7cd873f8f77e4e1de98c01bc09e49800c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "555384d874a6a9e078b078e7121ab628d8b7d83a840cde9707ae157a5a90e910"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c87dc5c1ff7b011bb7e697c5b02b379f01c611e1f31915b5bdfb0ea54d9510cd"
    "en-US"
  end
  language "es" do
    sha256 "1b54b0e57293b5d1f199d18c557e20d6f53d307f52ad3872891174610b8b632f"
    "es-ES"
  end
  language "fr" do
    sha256 "18b4dc38629023ff3b0fdfecdd36fb9ace0d23fb000a3ebbf41d705a6558260d"
    "fr"
  end
  language "it" do
    sha256 "daabf49f50488f1f60f620e350ae134a955285ae4af3360ea42538d8242d0ad3"
    "it"
  end
  language "ja" do
    sha256 "4621a8cfcc56c1567c5a4e471dc7c53ae4e2eb2620f5d3f8d696578f8c88c8cd"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "412fc4c8ae65843e8daeb6c32d30715738453370260e596cc7b2c80eb27c3145"
    "ko"
  end
  language "nl" do
    sha256 "5819aab1b8918aa943747c44d12aaa57232d789e3c07f9baee476df1ef5cbe24"
    "nl"
  end
  language "pt-BR" do
    sha256 "b00f55ddce9d94aa59f7079f443b3b0467c53e614eef0762326a8845daacd68c"
    "pt-BR"
  end
  language "ru" do
    sha256 "38dd563147566697f9bf9eb396dc8e5416e83c2066b6bcc0dc04cadfae0d1921"
    "ru"
  end
  language "uk" do
    sha256 "e9e3c89441b99f27278a319c94e6aa22158d7b5311c559ac0041847e8d4182af"
    "uk"
  end
  language "zh-TW" do
    sha256 "d63719a8549b6496d6d9db04d8dba91849c9688c34913f7359466ffd3b80232e"
    "zh-TW"
  end
  language "zh" do
    sha256 "84dbe33ca77a5efd8320b353d15d399f5b0018bc87064f2acad251c90f0b5e0a"
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
