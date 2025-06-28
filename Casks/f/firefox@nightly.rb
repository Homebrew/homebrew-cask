cask "firefox@nightly" do
  version "142.0a1,2025-06-27-16-09-56"

  language "ca" do
    sha256 "70b8c96c080c5c3ce9b21c831fc6c0a957d8bc6cc4dc064b24a3e93d09dbf77b"
    "ca"
  end
  language "cs" do
    sha256 "20a9b706a795a75846129e7f3dc5cf94be0b9efdb2578666e2f71f469ac259e3"
    "cs"
  end
  language "de" do
    sha256 "d7a909e0df5defe47fef0c7c965f0d77c4bb1e5d2147d54d4fd94e4a4f95c53f"
    "de"
  end
  language "en-CA" do
    sha256 "aeb224669008529bd4ba58453c01dc5980742ccbaa9bcb953b6f9789a04811cb"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f45dee9d53fc3ef4259e64f5018e5aade4577f901c43c92fb3959649b0c07888"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9d8a9db2920160a6ad0f3deb8d9c16eafcb916e61bd8c4f2735be986005d9db3"
    "en-US"
  end
  language "es" do
    sha256 "31c77cdeec5c2c6d2092b6a790446c08e3a7c2b7ab2a610dd6b309f5fc121531"
    "es-ES"
  end
  language "fr" do
    sha256 "60fb04f280c871292be27d277969348ddf81c7936abcad9973c71d60472dcad1"
    "fr"
  end
  language "it" do
    sha256 "5239097f64775192936f473d5310b1bcdb5ddd85d1751fdc719eb5e224c3cb9b"
    "it"
  end
  language "ja" do
    sha256 "82afcdcdea00d24b23c47506ef2f74557d11bd1fc8fd19a0b12a4c80e3db2192"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "138b8a48820920352794ea5e33ff31b7a267de1a1fd03792cc61606376e139b6"
    "ko"
  end
  language "nl" do
    sha256 "e88c06ea6fe69c65d43c82378c3b9900cb86d936235f1416403160b28cf9832b"
    "nl"
  end
  language "pt-BR" do
    sha256 "7412050d939e3b50a4caab7bbd74c7aaf2837262e937ebe977ac2994dfc4148e"
    "pt-BR"
  end
  language "ru" do
    sha256 "2f9a6171079f7c676bf963fa599a6289cce8380554fa77b1a93151ff6513cf94"
    "ru"
  end
  language "uk" do
    sha256 "819c3b678fc94d42c0c82e3586bdf0f2e1e052720421cf204da4f04b032fc989"
    "uk"
  end
  language "zh-TW" do
    sha256 "7c287ad1997a97924da6eb398b2c64de232b6e4433fbe1be37dd17cd113e63a9"
    "zh-TW"
  end
  language "zh" do
    sha256 "b2c4f0b849a610d9a52c218be46dba4e1700369284e3bad16e8583fed9e2c0bb"
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
