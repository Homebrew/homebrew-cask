cask "firefox@nightly" do
  version "145.0a1,2025-10-01-07-16-00"

  language "ca" do
    sha256 "24f10ac9c8690a760c88195b30e1b53aa1bc9c0a16265ba665cca497ddd38163"
    "ca"
  end
  language "cs" do
    sha256 "3a7efc3b1eab46696ce395ccba3de2258596c56508ad060f0b7a10d7216e0666"
    "cs"
  end
  language "de" do
    sha256 "2daa70172a1438975d5487bbc9894b04345880947172a5be82cfb19e5cff3e34"
    "de"
  end
  language "en-CA" do
    sha256 "56a96a368da5cd24e4acd3086ff3c302ba8d1ee5e4af1f20e1274dfb3172a69f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ff49fef851730ac98a97b9154d49d8515f87b80df53fe18481d82f8089d9d33d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "97092884962817ed54d16877a53bd539b9f49d736100cd866868506027e90ccc"
    "en-US"
  end
  language "es" do
    sha256 "183eae37c2e2f70836bcda3b8116c0303cd32c5850a5d63a36e3fb9fe673667b"
    "es-ES"
  end
  language "fr" do
    sha256 "da9e2ce87dc04a4ec26a54fb5b9a21980b4938815d40a74d69a0498c5ff26237"
    "fr"
  end
  language "it" do
    sha256 "39171469d9a2cdc50904216f47fc7fe42880bc37c316ba9925e25a0b8b2971fb"
    "it"
  end
  language "ja" do
    sha256 "93b317c2b9627db9a4025a0701d24374a9d9321b1dbd212c1940704104c3b975"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4251c24e9c27b6d1e7d941a10f5799b9c5a259262362c4635a81a8b492883157"
    "ko"
  end
  language "nl" do
    sha256 "c0b3fa76910d304890f8d8cb3b2b03f5f4b52a09aebd73e2ffe6d50910190347"
    "nl"
  end
  language "pt-BR" do
    sha256 "35e1cc211457413a08ad7bdda8a0cd4bc7932a8a4bfec97c1b259112a906ab32"
    "pt-BR"
  end
  language "ru" do
    sha256 "7cb9752ef7792b99aa25cb7a540d4122fbabc1abd31cda21931df4ba3a43e3df"
    "ru"
  end
  language "uk" do
    sha256 "fb874e7a73b0be2a391ef339a04a20aff9ee0baf05094c9ecea4bc31f9fef51e"
    "uk"
  end
  language "zh-TW" do
    sha256 "9f4780ccbc3106bce88e9f5f42d6c21f7b86ef6c31403f93d78ce5d7d4c4e739"
    "zh-TW"
  end
  language "zh" do
    sha256 "e0f6d13bd11ce9247315cf9469177b1899c9367a7a311f73dd78480e0a087f62"
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
