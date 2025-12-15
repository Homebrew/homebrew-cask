cask "firefox@nightly" do
  version "148.0a1,2025-12-15-09-40-13"

  language "ca" do
    sha256 "5abee85bbd048d9d4fe0e140b07e9c7da25d2a69fcf5566634a7e6c31b7ead39"
    "ca"
  end
  language "cs" do
    sha256 "8da783691bd6bba83c1791a49791ab632342dda5cf80cddcf9baa37d7ebc2d33"
    "cs"
  end
  language "de" do
    sha256 "e0d0669bf9573419b903030f585a46fa3d4d28217d6691557a93fe3fc0fd2cdb"
    "de"
  end
  language "en-CA" do
    sha256 "6dac5a38545bca2eb7c104a0e839693ee02715c7c4099ddfe3db233e332245e1"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4d730496960793e837daf9557a8ad5574cbe197482c9db3cb9960fb911f413af"
    "en-GB"
  end
  language "en", default: true do
    sha256 "90bc6920409bad876ea24a260f6d2f5257af75aee821274720bdc6ec21750e88"
    "en-US"
  end
  language "es" do
    sha256 "7c42d16e6463c979bbe7322c6898042901b7ef6c2e5bf9bf93dc27f9d1f88970"
    "es-ES"
  end
  language "fr" do
    sha256 "277715a24dc9be25e258ac6b8f349128545e3ff33342110bb5823f15bac75d7a"
    "fr"
  end
  language "it" do
    sha256 "60d3b179f7f76e1b207191f250cef9608365b1f54a92e098ced410327f3e6696"
    "it"
  end
  language "ja" do
    sha256 "2bfbc32d67118cd5d0c4b8f944637ee34784b7192b55ff28e460564db4d47e07"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "bf8c08eabcafbad11eb597e0cf0adc8c0caf23f1f313a10668d55d835c47a682"
    "ko"
  end
  language "nl" do
    sha256 "1384fd936e76a83469020378cd18a768f943d922630e7ef3551ebee1487edf5a"
    "nl"
  end
  language "pt-BR" do
    sha256 "2f77d6f06250b69daaeb34ada54b15356126b977afb3d1c29ad0d565373a8ada"
    "pt-BR"
  end
  language "ru" do
    sha256 "55588b87b3c53ac14b9d8d5ac1597aaf770ee6664026bc7f19128753235452bb"
    "ru"
  end
  language "uk" do
    sha256 "623d0fad2a8d2d427d9b653b0c4b9b9bf700e340d701777ac0a0c8ed1adebd44"
    "uk"
  end
  language "zh-TW" do
    sha256 "148a9e3b526b7cb43246463b78323502c211fec3e13aec86ed3eda83a5f5c070"
    "zh-TW"
  end
  language "zh" do
    sha256 "18175d0081b6dec16ff7a9a98af413b406fb975fa22be1053d0afe84297df8c2"
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
