cask "firefox@beta" do
  version "137.0b10"

  language "cs" do
    sha256 "5b3abf01111852b09d07817eb8c91b4e5ba356bbd5262039bd3267cb9eb851df"
    "cs"
  end
  language "de" do
    sha256 "3aa31b2fe8540c780c5e800920db81f2fc3eae127b8b931095944687ef925467"
    "de"
  end
  language "en-CA" do
    sha256 "3bed6bd11d1502931fd9d560874b2c7a2c70f2d2084d6de492e55db191e42f58"
    "en-CA"
  end
  language "en-GB" do
    sha256 "064c6048117e9c274788e9f03225f4d4c074b8a0a342ca54843f6316af4cc258"
    "en-GB"
  end
  language "en", default: true do
    sha256 "93de7f00a296d0027295020bb8c6378fa1a95015bc78ec0bb3ffd60d264ccb0e"
    "en-US"
  end
  language "es-AR" do
    sha256 "7e882b1205177cf87e565908770800322b30bbc44d008f509cac41268db1cbca"
    "es-AR"
  end
  language "es-CL" do
    sha256 "148cea27317b9ba0d060969549a94153b7f400e77c5f0c8ad4c1f7683cc143fe"
    "es-CL"
  end
  language "es-ES" do
    sha256 "073c839ed944beb64d28d791129882ebaa16811766221c9810803fde8100251f"
    "es-ES"
  end
  language "fi" do
    sha256 "1c7031e08a06408c133128a487af0ecc7f88e78a83c9b0feeaf92a2c962f2450"
    "fi"
  end
  language "fr" do
    sha256 "571aaa4a1fca4b2bff31666af882d01d885673b54f9f702e8d83167098d859bd"
    "fr"
  end
  language "gl" do
    sha256 "884c39a2d0d267fef8103cc9ca4745bb7066fd3e49320e96da3968ac89a2d880"
    "gl"
  end
  language "in" do
    sha256 "deed29e909760c1799af1d4cec9a6c224339eff5e2e1dad7e6e55e093530ef5f"
    "hi-IN"
  end
  language "it" do
    sha256 "df18e94df2b453804c8d45c94af7b194d16198743e9680fb4d8968149c6ec763"
    "it"
  end
  language "ja" do
    sha256 "d002b6bf5bd207fcb05121849d76256231d9e3a0f0a71e423eaa07ffde36291c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "32dbc968be79b7f5f67ec9abf41460b41e3ce263f29569d4a5e274a9b584c8d6"
    "nl"
  end
  language "pl" do
    sha256 "2b5afd51d4b2bbc32ecbe824833d2defe82c2a852a6c9e5691d46d6a917d2228"
    "pl"
  end
  language "pt-BR" do
    sha256 "72052d22eef4d76837c30b6cb0b61e2526426973b03c8d0af566d814f6571025"
    "pt-BR"
  end
  language "pt" do
    sha256 "33ae44fcd0124c3d5c43629d8a1b52d3c8481e5b465ae92ada8e69ce68dc1d8c"
    "pt-PT"
  end
  language "ru" do
    sha256 "592b9f8a69b7b1d36d23a9036d9d50cf84d087e82961cbe08b84f277bc23190a"
    "ru"
  end
  language "uk" do
    sha256 "cca433b67e82a4a7480e6a266d5e0c4f888c1916ec316c06a79ebf7982ac95b4"
    "uk"
  end
  language "zh-TW" do
    sha256 "138883435d62ae0955c2246c68c3ddeef64a6688093611b4f0e3e4a84cf5027d"
    "zh-TW"
  end
  language "zh" do
    sha256 "d65d37168bf9e5c4604584e645f310e9a471080461bf8179a5e0ba07c88736f6"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
  name "Mozilla Firefox Beta"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/channel/desktop/#beta"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["LATEST_FIREFOX_RELEASED_DEVEL_VERSION"]
    end
  end

  auto_updates true
  conflicts_with cask: [
    "firefox",
    "firefox@cn",
    "firefox@esr",
  ]
  depends_on macos: ">= :catalina"

  app "Firefox.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.crashreporter",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.crashreporter.plist",
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
