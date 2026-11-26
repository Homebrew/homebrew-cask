cask "firefox@nightly" do
  version "163.0a1,2026-11-26-09-56-27"

  language "ca" do
    sha256 "2c35b2d8bf00149e3bfa22b6403110ccbe54e9d898ededdf8da867ef3310ded4"
    "ca"
  end
  language "cs" do
    sha256 "830142d063f1f1f79185532c4a827f7a2fa049bbf449f90ba0d7b80ad5840a72"
    "cs"
  end
  language "de" do
    sha256 "c0d204eff28b3d3640146df9d85cd4557a006a5e43b2783d3d948093a0260266"
    "de"
  end
  language "en-CA" do
    sha256 "11206b6ee8bc6e0fc9e20edb3874be01c564c1beaf204a93166861645c3295f1"
    "en-CA"
  end
  language "en-GB" do
    sha256 "eee2ddb66e69e12281d1ef521ef36747b99e435895b95cd85a9e871b9e072962"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4cf1f46da371d89200e429ba7903b5db2ef901c5420da84bb3787589d5f1429e"
    "en-US"
  end
  language "es" do
    sha256 "45bf334bb66295b129b7257f0327b19ecc7883e383725543f395258a9be7fc52"
    "es-ES"
  end
  language "fr" do
    sha256 "975b4e354190d62f3500132df65b1bccccafc80dd061ae37c5b6bd926f86398b"
    "fr"
  end
  language "it" do
    sha256 "760cfef13ffe8508f57faffecde32b0fcb07092b2f496b99e309c3a44ad64764"
    "it"
  end
  language "ja" do
    sha256 "8511b020ec33d39a2da78ec8d1851be61c5ea6cb36788fffa967fb7ff08980f1"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "24c8b95af38a97ca12a6dfca1bc031a0226ee7e90538e12137e3218a527a0f4a"
    "ko"
  end
  language "nl" do
    sha256 "636cd818d2d49d0ecdc11330a24d67816c4775e9323ca7f8cb195a0312627368"
    "nl"
  end
  language "pt-BR" do
    sha256 "5958914f640feba3cfd9550c8c47a20c709410079869d011f90c4e33f043bd5a"
    "pt-BR"
  end
  language "ru" do
    sha256 "4f234da2527cfe6255ef89765bae33e05482f23f70ee53f997676ef5196a652a"
    "ru"
  end
  language "uk" do
    sha256 "68f95dea953d81917ce94058d49cce11b2bcce61813e23748da0b9202af0e700"
    "uk"
  end
  language "zh-TW" do
    sha256 "53665275b0270cc40be853b207700031c6472096308ab0f02b72673237c5a252"
    "zh-TW"
  end
  language "zh" do
    sha256 "1eb293f85c423fa63f834c617b4e80dd3ead3abd0b4c0fa3bc5d14118f8cfeeb"
    "zh-CN"
  end

  year = version.csv.second.split("-").first
  month = version.csv.second.split("-").second
  locale_suffix = "-l10n" if language != "en-US"
  url "https://ftp.mozilla.org/pub/firefox/nightly/#{year}/#{month}/#{version.csv.second}-mozilla-central#{locale_suffix}/firefox-#{version.csv.first}.#{language}.mac.dmg"
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
