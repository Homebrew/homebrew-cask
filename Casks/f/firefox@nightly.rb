cask "firefox@nightly" do
  version "154.0a1,2026-06-18-20-04-49"

  language "ca" do
    sha256 "7c78d9b776125e646fc0a5047a620436484701439d203f258e1d262db6d94b2b"
    "ca"
  end
  language "cs" do
    sha256 "11e3138b2107437f312d8330a25bce28a599b48d0f22e53589beab8c06466bb8"
    "cs"
  end
  language "de" do
    sha256 "00039756c3d6b31d6fe3bdfb2815265bf68d978c21fc875cfc5e6745d605ae7d"
    "de"
  end
  language "en-CA" do
    sha256 "7223c418065670a88ff0bdf3639e82a8dacd89aef99f569e5d2f53beff136ca9"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4b98f4f80a1fd8d205774231c2364337b3a75c7ea6f6a45aa6e7e463e6e296a0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "403d49ce52e9d39f0f041f8dea03d2453f84f228982413236098ff9aabbb5c4e"
    "en-US"
  end
  language "es" do
    sha256 "6346911c08d00c6aa0209b08c669d1ccee3913b9776d0416592a09296ae028fc"
    "es-ES"
  end
  language "fr" do
    sha256 "d4aa8ca93d03805a9ce5aa6a2b463a200c3bfb90faa03e3e492f948bfb387f51"
    "fr"
  end
  language "it" do
    sha256 "a93f2b9752458f94ec99950158dafcd9163c2501cf9124b99c8b9325c124b9a9"
    "it"
  end
  language "ja" do
    sha256 "cbeb404de91c3bdcce76476582a736811b229f138c22a228bb11743d2f300552"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "1b72eb67e43666dde7c25f58c2e5dbfa8c1fb70dd2884b75da324df9583bbd41"
    "ko"
  end
  language "nl" do
    sha256 "c409582b387fa813b59d47e95e066c50a22cc79a0d2d22b830d2ff9700dbf497"
    "nl"
  end
  language "pt-BR" do
    sha256 "b4770f90d650ce49be9ac2f2ab4d0f1246fc06b2f326222572b4f5f4bef6dd3e"
    "pt-BR"
  end
  language "ru" do
    sha256 "afaa7642eca53a10f5fbd135417be0058a3951c4313dc90dd4a6430993efa0f9"
    "ru"
  end
  language "uk" do
    sha256 "bad88149a2b25fad55b903562cb2b13866ad01a5d57bbeb6d688c8e1d8a116f1"
    "uk"
  end
  language "zh-TW" do
    sha256 "1cdb3d2db4ef3f71d5637fcccbc811a7d99c66448bb6f668abc5a05ffbc3e6b5"
    "zh-TW"
  end
  language "zh" do
    sha256 "90341b33a8076370169e039c2aa70d8daa96710852713d14954e2b4bcec4768c"
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
