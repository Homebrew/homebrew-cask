cask "firefox@nightly" do
  version "143.0a1,2025-07-25-09-37-57"

  language "ca" do
    sha256 "6e69c489815b0898d24f2669ade45a82ad6829e6b9d07f7c8b3825f3e00bee6e"
    "ca"
  end
  language "cs" do
    sha256 "6fa130d73ae064b9de9544e40c767c443b38bd5c47df33b66008d8414c06fb68"
    "cs"
  end
  language "de" do
    sha256 "736c1a74f231465f64ce56fb6da230877144556ab18c1764c8edc743d4e98a10"
    "de"
  end
  language "en-CA" do
    sha256 "d66454a36868ce643cc5adb0ad6758e0073c5f20ad5012b03af1797d3c41b9f6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "55df6ac0ce9d55246f432457e24d11f6dd95ee286f24756a108afb3b0649e846"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7f0af4103983f8cacece231868a4bf6820d36159ee9154672d4fe1a7b96303b7"
    "en-US"
  end
  language "es" do
    sha256 "9691a538afbaa8054710c2d807d72c8212d33f5bef9876349be24a2911d0c5ba"
    "es-ES"
  end
  language "fr" do
    sha256 "29ee468c4fa12304d14dfc6f1fc0063533eefb03244aaa3c5e477085300ddd48"
    "fr"
  end
  language "it" do
    sha256 "e84b6004d01e6d6449b2c6a79738f423f1a7ecef74aaaaba27d919d7d019737e"
    "it"
  end
  language "ja" do
    sha256 "1694b1ad360df502fe80cb58d76ee2ca25006e046badd031f2f63a9b10c61d28"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9ad84e431334d08f45e9089a1214a9d18942f4dbc96df7c92432d863d88c12f4"
    "ko"
  end
  language "nl" do
    sha256 "6f969d4341d086311b53b9210dcf65b25498b74629fe64991a84bd887d9b0b6b"
    "nl"
  end
  language "pt-BR" do
    sha256 "fc908ce14d2982618c4d626af1340201ea0b8d0f05735a47412636cfb898b4cd"
    "pt-BR"
  end
  language "ru" do
    sha256 "f6d27455ae82490d913d620b84203de99ac5d611783f2f184503fbac765582c4"
    "ru"
  end
  language "uk" do
    sha256 "a0743f99e21c7d17f99e95bc9fda1f11958bce30ed2172e285e8a6b3cf3e6373"
    "uk"
  end
  language "zh-TW" do
    sha256 "a8b4f86cf709eb2eb0e5c9ed35c6c9eaf5f65cfe29b0969444daf7550054b7a9"
    "zh-TW"
  end
  language "zh" do
    sha256 "6b420d59001ebe728ff18f1fae90581c11666f8570512304c2fc90ee11339683"
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
