cask "firefox@nightly" do
  version "159.0a1,2026-10-02-09-50-17"

  language "ca" do
    sha256 "7ad7bede96f61d9861cde20ebf539456227f41acbcb201f1a8ae204a98a68572"
    "ca"
  end
  language "cs" do
    sha256 "53658eb5d7a55fe5badbfecf34d23db95e97faaad52fdc994897bf52ec4d5696"
    "cs"
  end
  language "de" do
    sha256 "93f75c2f6a4504c9e77d745e5f59087376f2e7f6fd8897d018cac7449265ab9f"
    "de"
  end
  language "en-CA" do
    sha256 "4ae0cf00668a8d85193d75a52138eff5b9e589b03e093b72cf04c4847b9f4a6e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "9e6af66860faacc2a606c3ba164ab316fae9492c4f538a37afae7167d1996b05"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c74c8bca658607c1829549c000675f7046cba8b3d86b243800d63a79e4095533"
    "en-US"
  end
  language "es" do
    sha256 "874f787b8069fcc3eddf38213fad70e68d8123f96a24584b7f6d22158e217d3e"
    "es-ES"
  end
  language "fr" do
    sha256 "703b9dda810a4c9e7ed42b70ea6de0d4fbd215723d04403b8421d07b5b8586a2"
    "fr"
  end
  language "it" do
    sha256 "5380b1b58227b1bd70a7ecf631b8c032d9f02ca6d2fd1d4064c50ecebb9ea841"
    "it"
  end
  language "ja" do
    sha256 "ed65ce9fda24a9d185f361143cf958ae487841b6acc53a8407bc4009e742e02f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a4a3c3d8fc04bd0813d1ab126aa6ab5c2857f0a4c328042d2dfbd3e05df14602"
    "ko"
  end
  language "nl" do
    sha256 "2bb581130b7d096af0a43f566a86699725dc8f1ecf02ef46925f73e65c08ee44"
    "nl"
  end
  language "pt-BR" do
    sha256 "d63de52649b0d746bb95327e56b64ca0902ad69711d13cdfec9c60c942a55fdc"
    "pt-BR"
  end
  language "ru" do
    sha256 "247f40fb5ad73426770e914a25a23098e95c96ab74989d1314bb6953da5a6d92"
    "ru"
  end
  language "uk" do
    sha256 "1325ed1e4cc0cc181e3326708c0d5f4e527e55435db8ffb6bb39defdbd2a1243"
    "uk"
  end
  language "zh-TW" do
    sha256 "40da8c2475ffebcf11078bc87439ed006f057e70ecce0f6e06b88b775cb73996"
    "zh-TW"
  end
  language "zh" do
    sha256 "ad6d9e2e8aaa46a9a8c84135a1376ee46ffe3ff7384ec21118b741fe875249fb"
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
