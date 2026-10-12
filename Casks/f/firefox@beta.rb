cask "firefox@beta" do
  version "159.0b1"

  language "cs" do
    sha256 "43da8117f9b9de0acec415cea85de7d95bd32750f50547e4928a16e65014b1f8"
    "cs"
  end
  language "de" do
    sha256 "3d481cff4b284b16af9ae336ddf797ccd2dffdd99a44167c3ab87a189fe8243c"
    "de"
  end
  language "en-CA" do
    sha256 "34f01be3c9c56f681edce08bef01f940a87c7cf44b4d7569def9174dc0fd88ea"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4f8f0989c0b5a1ab6bf91c6a04c4a970e615170e4205e639c9611ee7b7168e37"
    "en-GB"
  end
  language "en", default: true do
    sha256 "51e203e953a03b2ce7f2925b9e5363b7c5ddd1edd744b88bbba42d006f1857b1"
    "en-US"
  end
  language "es-AR" do
    sha256 "ad87c8904454bb89839ade57b0dab9151767d696a15d615f5d4b6c340ba63612"
    "es-AR"
  end
  language "es-CL" do
    sha256 "b713a75fd3e13813dbb154e687e26b7841f61ad1a88af13433325347ff9187f3"
    "es-CL"
  end
  language "es-ES" do
    sha256 "371ef3046f49184aebdbc31eb3677f61eb24d7d81eed50acc7b98a0a32700072"
    "es-ES"
  end
  language "fi" do
    sha256 "45450779a422af4d0c90995d08e8a1f7f228c9d5d2f5850e33dea9f50f730628"
    "fi"
  end
  language "fr" do
    sha256 "ced358f25e1e342919401fe8eb40f9d3ecb17b0fa6dde99abee9c3f742d89d99"
    "fr"
  end
  language "gl" do
    sha256 "7154a849f1d749ccd3dd1be96ec3018bba7eed030ec71aa50f1a8cf45af77c3f"
    "gl"
  end
  language "in" do
    sha256 "c23e278549313d42079c62b58e8aeba7fcd5507ad21b5c6d2fc6ccea1579e2b0"
    "hi-IN"
  end
  language "it" do
    sha256 "44c6f086e7c91bcb4beb2a302f5b43d24a53db5199ecda3dc08b48ab913ec128"
    "it"
  end
  language "ja" do
    sha256 "09a611a2c718689e86ae55021108d149be87a082d12962428e9c1c0e94c3eb75"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "53f2b6ed8b2351eeb73e886f6781d2e19a9872dcd838207daad550c165b12565"
    "nl"
  end
  language "pl" do
    sha256 "bf9727e066a8836d33247e7dc1a16dfdf8c82dd0bb4716090c7145fe539586a4"
    "pl"
  end
  language "pt-BR" do
    sha256 "379c5734eaf4dec175a643d2ea99485b18fc8e701075b7f219a4c2a08e569fdd"
    "pt-BR"
  end
  language "pt" do
    sha256 "3b53205c821b4e03ed11126c2a521db7dcf94a6e9b8d00cfebf7a541176bbdc2"
    "pt-PT"
  end
  language "ru" do
    sha256 "d701ae970ed3ba99b00a718169f10230db4e5016f8c5d9374dd91b85e51453ee"
    "ru"
  end
  language "uk" do
    sha256 "3a80baca92b180c8773eee31e22a1fdc39af4adad54dbf8b1329ded426149d58"
    "uk"
  end
  language "zh-TW" do
    sha256 "8d0406dbbf2254a9f61eb0c6d3db8ce913ee18a400496b9c509d34567edfef4c"
    "zh-TW"
  end
  language "zh" do
    sha256 "459ee84c3417eacc053445a8a144ca7be4b36fff5cdd26d84b4b05c47f50bf1d"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
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
  depends_on :macos

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
