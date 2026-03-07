cask "firefox@nightly" do
  version "150.0a1,2026-03-06-21-58-30"

  language "ca" do
    sha256 "21fac22ad2763d2b2ef474b09c0be16c32574c82ae34d61b426845a8beb344cd"
    "ca"
  end
  language "cs" do
    sha256 "644ec5b53e1013128da412748bf220dee2d5fa29ee07d4f68935e1ed2fbd1d9b"
    "cs"
  end
  language "de" do
    sha256 "75f9ef7eb1a59a8903d4a79dbf221caf113e225e6a2a5515defa7099e76284c2"
    "de"
  end
  language "en-CA" do
    sha256 "d1be2e024b593898238b2c1207647c546011459242e7492fb4cbcbc159920864"
    "en-CA"
  end
  language "en-GB" do
    sha256 "58eac60873854148ad17a0d08f500ffde2756d2026b2853ced069a61916cef74"
    "en-GB"
  end
  language "en", default: true do
    sha256 "71a59f91caa7a47e81c80e8e977eabc1c6f34c7f5191aa46cf67e7ac5aee9028"
    "en-US"
  end
  language "es" do
    sha256 "954bdc1880a5c11cddb8d9a481b0fc63576f58a34ac31c1c94a44b4d6e7f626e"
    "es-ES"
  end
  language "fr" do
    sha256 "c7d472880c3b21d91867d5eb057a4bf7bcf587beee8be21877fb1b6e215a5b97"
    "fr"
  end
  language "it" do
    sha256 "538a580dfd8a0c2627ba7a71e1f2f76ca516438be0c11ff2778d84d6f1e9c390"
    "it"
  end
  language "ja" do
    sha256 "bdeb47552ead1ac19955fbc801d2ce781a0bbde4a38d715d82106c8ab074df6d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "43bfcc7a738944cf03015ab1ac7ebd3e6fce711c0292e4e54953ce2d2538edb3"
    "ko"
  end
  language "nl" do
    sha256 "f4520d8ec4ebd4d7524c5c7f48e48fddada0cf898736f8f069094771affe81d4"
    "nl"
  end
  language "pt-BR" do
    sha256 "68e29932fb4d841a1d24e50c82c7bc6c679d5315001a28687cadce7a301ea215"
    "pt-BR"
  end
  language "ru" do
    sha256 "d1365f5922f1c8e9b94c014cc5e457e485f2e1393ce5837b141ba55858d5fd55"
    "ru"
  end
  language "uk" do
    sha256 "2d4e3697324efa0d5db276d912c43b9b39d123b9338825fd3a628dcc21e9e72a"
    "uk"
  end
  language "zh-TW" do
    sha256 "6bc4706907552f27daef1696125f7e2e910af78ddf591650a677916f9c232703"
    "zh-TW"
  end
  language "zh" do
    sha256 "e326180e0d74e69da80bf81daabe21d65adbebbed7370c0282ed5aeea388b981"
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
