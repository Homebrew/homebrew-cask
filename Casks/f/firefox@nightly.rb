cask "firefox@nightly" do
  version "145.0a1,2025-10-03-09-29-20"

  language "ca" do
    sha256 "105d78b02c20153629f2da0aa5206abb20810fe1adb1e298a2b4716131db7d65"
    "ca"
  end
  language "cs" do
    sha256 "420e6ee549c1b07ebb819084444c51e98b6e0608f6211a91aa79e14f420b9270"
    "cs"
  end
  language "de" do
    sha256 "69c026a85cc97067b3da21a573b18ed826de1d8f49188c54b50e4b732a641a0d"
    "de"
  end
  language "en-CA" do
    sha256 "d0da37721a787853341c186680df9b3de3be310f46466579b1c5a0da94bbb8c9"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a6be585e48676ea5142cc2e883e3259bbfa49fc5a386f35e840c197387109f1b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1f45abad82d5ae7cb8c664fcf179696187c8d476c51f54f4a3beedbdf00e4492"
    "en-US"
  end
  language "es" do
    sha256 "5a994dac17329935f505ada04108a435258b3b1f799302baa5dcfbf9a9475a50"
    "es-ES"
  end
  language "fr" do
    sha256 "7d4ba3087c39f01aae3c300a065cd07af3ebcdb66688b8a1f93386eac8b1f376"
    "fr"
  end
  language "it" do
    sha256 "8bee36b83030f425a57b556fdd827b71cf75fb2a928371f21295b604cf8db8ec"
    "it"
  end
  language "ja" do
    sha256 "3c829e47e687c97621adfc736d87c919b47b6618a098b485ccccec2abbbed7bd"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0986cb1b049fdb0da25c208791576470752c32f98070c637d6836ff0b58a9b8c"
    "ko"
  end
  language "nl" do
    sha256 "ed75c6a2a5264411eed90d15d7d810efcb974ea7af4f87bfc83d7f1d3007f241"
    "nl"
  end
  language "pt-BR" do
    sha256 "4b9e1bb1862a448cca6608e4bebabbfccf4ba79cc3cbaef347815ef01987c476"
    "pt-BR"
  end
  language "ru" do
    sha256 "0835495f73bddd82a817459043963bcf04b98e7c7b8482e9f1d998e02180730a"
    "ru"
  end
  language "uk" do
    sha256 "3bfbb14c41d036521241f209fc36f35626eb60927d1279f9628d70d3a5cdf521"
    "uk"
  end
  language "zh-TW" do
    sha256 "51391cc5a82d0ad0252722b5db739a450194b50cfc4d826c3fcef797b159f08c"
    "zh-TW"
  end
  language "zh" do
    sha256 "a4b79b0091c7d17db23e74baba896fb99b0e1652098616b7fa9bb52fb1f7f77e"
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
