cask "firefox@nightly" do
  version "141.0a1,2025-05-28-21-16-05"

  language "ca" do
    sha256 "74b56b647af0e7b0c5065835bcfe3820d5b08bd35500df5653b062a9a87a31c5"
    "ca"
  end
  language "cs" do
    sha256 "a31d48214465d8847b95a5d4687ae240c88345d7e982a8361c8e36184f807120"
    "cs"
  end
  language "de" do
    sha256 "234b3971f38bbbea1c0175375c3d5b9eceda44f655ef4e069a572f3f61379de2"
    "de"
  end
  language "en-CA" do
    sha256 "367fe91d9cae16c14ac3609135f8998eddd4f873c90d7ad1e999b9a0c5700f90"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ed80b78b4daa226394688fede6a1f85e503d4993d8d30d0a948c7e75f265ea29"
    "en-GB"
  end
  language "en", default: true do
    sha256 "94415873fc21dc96f0e9e33c34f3f341cd34ba663bc0dbbdb9110ef53f2a5f05"
    "en-US"
  end
  language "es" do
    sha256 "defb561241deaf45fb0d54a53c280ec06d9e9436327932fa452abb76374dabe5"
    "es-ES"
  end
  language "fr" do
    sha256 "3a3b00a426e939dceb3a0fd23f99172bbd39b1778bcaec6e74f5f51f5ff2bda5"
    "fr"
  end
  language "it" do
    sha256 "61c3925938b5c7b9fa2a8c9f975cdfecda31b011aa4439504bdfe2aebf9afaad"
    "it"
  end
  language "ja" do
    sha256 "95ffcebc7f71456b3346935db91cec5498ea69712819e05f5de5b1f7586beac4"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ffaae67299a9937908945d50f87db7adb232d1cd8d24de35036bd94b5f04ba48"
    "ko"
  end
  language "nl" do
    sha256 "b6ab8a3ac1545b8e4ba6a16653b0b0527d873c5b787389c0598268bdde639cdf"
    "nl"
  end
  language "pt-BR" do
    sha256 "32272c7badbf10ec4d6e29b302940bbec3afa1031fb39ad6846aee0c63c2fa78"
    "pt-BR"
  end
  language "ru" do
    sha256 "f738e041237f9cceb18d4fd68c76230c84fcb3d2ddb48aad161d3c994bb20c5d"
    "ru"
  end
  language "uk" do
    sha256 "96d65117647a4d7d0b4020cf6073d6a177c3f37732b51ccb1dca21b5177f0d72"
    "uk"
  end
  language "zh-TW" do
    sha256 "f0a6eb0b48e9c1fbf0b281378077500b4d7e9875b97c0b6014a02de1df808727"
    "zh-TW"
  end
  language "zh" do
    sha256 "63ce43396e1e8a5d50b397670ee023638336c309e76f013abc6821522ecd167b"
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
