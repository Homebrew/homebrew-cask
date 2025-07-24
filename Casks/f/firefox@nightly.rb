cask "firefox@nightly" do
  version "143.0a1,2025-07-23-21-57-55"

  language "ca" do
    sha256 "f646b02fa9225d452037ac6a83a94a004d153aa49485b0620c9b05d2a5ed4ad4"
    "ca"
  end
  language "cs" do
    sha256 "57bee1b54beec3239d1f0ca79cd8ee5198ca81f4c9f8c93a200fbe61260178c9"
    "cs"
  end
  language "de" do
    sha256 "c50605ec89f9e99300068e5274e69d04cd1a75f25ac10d6a915e2fa5714e926e"
    "de"
  end
  language "en-CA" do
    sha256 "f7589f89c80c3712e78183965f32ab031c805b75d18a9fb02498997ab6ac1c14"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0a2fe10f734dea723719097fdc15d7539069393d6198aa31c04b533fd90e68ac"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d1384fb90801bd8cec775188fd822c44e791107c29fba45b2cc22e27b2e2c198"
    "en-US"
  end
  language "es" do
    sha256 "e47156ccdac31fd3c0f561d33f4450c3be702db345366526ce1155dd174687d6"
    "es-ES"
  end
  language "fr" do
    sha256 "e6c99523de2cd3d4b727565ab24e198d8b7d3f1b8cb94bd3084ee263422dfee9"
    "fr"
  end
  language "it" do
    sha256 "ceb99fce192b3bed1a603faae2e3ca50328b79a937080bc887bd8b2e41fe4d3a"
    "it"
  end
  language "ja" do
    sha256 "d7eb0b5de7e2d04aa4407e920126bb0d8456ea07f1f7546a99080d4ec4b89e86"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0245c3c8d4f429523a0fb1189c1083fefdca8aa4e94388b1783ab62a4ee4d987"
    "ko"
  end
  language "nl" do
    sha256 "5226273d4494f92fc84da5b4ce48374fbea3b41238c4c201375d6212a3ca9208"
    "nl"
  end
  language "pt-BR" do
    sha256 "a49de81e6386b59368cb401bb71bc092b01148f87a38eaf29c63c757aaf78496"
    "pt-BR"
  end
  language "ru" do
    sha256 "fd70c0b22d7bc4cb8014cfe5442513bbad910667564e6a641f15d0752de2d0ec"
    "ru"
  end
  language "uk" do
    sha256 "d0aac61f4e33102522398f4b8f9a8e05c21af41163d803975cb5697de601b41a"
    "uk"
  end
  language "zh-TW" do
    sha256 "9b27d670fe7bb22d8fdf780ac640823ecb9d81f1daab67de703c0258ef0dab07"
    "zh-TW"
  end
  language "zh" do
    sha256 "799bb62f5fb1f1ad927bf8275fd53ea672b916f693b3d45beea2f5ba9d8364f8"
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
