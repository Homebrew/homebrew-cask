cask "firefox@nightly" do
  version "151.0a1,2026-04-02-09-24-39"

  language "ca" do
    sha256 "67f8e3b9bd429d7a6e736d172080585c2d06b57742a4d1b600aaf1a4dca550af"
    "ca"
  end
  language "cs" do
    sha256 "76c0a5eb3e9f0de61d985a2ed44130923920de0dee407c48bfcf23f84ae94ba8"
    "cs"
  end
  language "de" do
    sha256 "0d81b8b603c98b95982fa2a18b064dafae57966923647c328989bf6f3f70ac0a"
    "de"
  end
  language "en-CA" do
    sha256 "8c0821fe628d23d60794b563217d927bdf97b416fb1a37623446776ff62efde1"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7b9e505ee31acb2a495ed0530ed480eedde0029b3513294254e14f4c31e6e546"
    "en-GB"
  end
  language "en", default: true do
    sha256 "97036d85a3c2d686773acb4d65d1281203ee71e1712042e9c1363f2ddfc7070a"
    "en-US"
  end
  language "es" do
    sha256 "85382670be026e369a0f52ada9749a890ba529803775af88871e4eaeacb93b80"
    "es-ES"
  end
  language "fr" do
    sha256 "f3e9d4360c64423806a75ca82ff218091efa54138e055ee64d041eccf7777047"
    "fr"
  end
  language "it" do
    sha256 "2277515564ad51381013a98b5c25a7c630b63457b59496989fc8263b4f494361"
    "it"
  end
  language "ja" do
    sha256 "21e99264a041a71f2c384554e22fbdcfe708c4c0f7982d50e0623c176b8d8cc2"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e5c7bbfe52e71596824b42eac344d757add5e003591ad866ac2d159cf939624a"
    "ko"
  end
  language "nl" do
    sha256 "76a448c8b2306cf38b0078a726544e49fb99a434db588dd3a68f776b79cb0aa9"
    "nl"
  end
  language "pt-BR" do
    sha256 "50593c6296bf4d55fd2a99b8873e1f826101e229b2e45a3dc3d0fda2384fca9d"
    "pt-BR"
  end
  language "ru" do
    sha256 "8ed58ab64358ea5ce08a865e7aab91644094ffa4a408fcc27d03417d7ee19f3b"
    "ru"
  end
  language "uk" do
    sha256 "d7d0d2ea4b735133530cfcd2d2273e7fbfd4bdce7975ba57f3433c7dbf54fd0c"
    "uk"
  end
  language "zh-TW" do
    sha256 "3b97456ff1ace90571fe8f95a16c1062a6e670fa7b3d73a2b9b6ab2051fa801d"
    "zh-TW"
  end
  language "zh" do
    sha256 "4441692cc778de9115273e9f90ca4d612172026f597d84a66e0c06a200077ee5"
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
