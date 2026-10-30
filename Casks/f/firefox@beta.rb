cask "firefox@beta" do
  version "160.0b3"

  language "cs" do
    sha256 "df13bb8170ef86c625c490912273c297d1d6b777efcbde3981f1646d00352a89"
    "cs"
  end
  language "de" do
    sha256 "4f2258cb24b78a05b7f337227149ec5faee4e054b528bad805b990a032bb9fc9"
    "de"
  end
  language "en-CA" do
    sha256 "cace7cc03d3b28d2b0bb362ca981b2a6971c3f7c2cdcdf64ef285c17da814e7a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "eb548396586f12749c110f78d2d783d77f89bb43afbccffa9905bda3261bd70f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d85eecf8433dcb7f09974b3c134ec3ac701c68c1f07b8146a4a1d7fcd4eb187b"
    "en-US"
  end
  language "es-AR" do
    sha256 "aa356dfdd2873141126b4c63c235d2e2523c25815fe975ade4fb957bf188ba3c"
    "es-AR"
  end
  language "es-CL" do
    sha256 "5bfd9221907a2cda30b5593f0391905ee67d0d8a7d016fe2b5282b7e88f5dcbe"
    "es-CL"
  end
  language "es-ES" do
    sha256 "b91edd0ff69d973744cad267d32d35c7500dc223f76a1d4a84783ba3b27484bd"
    "es-ES"
  end
  language "fi" do
    sha256 "e972d6d0aee64cf18cd94d2ae9be5239fa3843b5f10a380890487e1dc31297d6"
    "fi"
  end
  language "fr" do
    sha256 "600e61f3d0493fd61da35a79ee69f8816eeac41b69d064b8dc9a4b270ae25633"
    "fr"
  end
  language "gl" do
    sha256 "f12d869706d42f607ac16f020e4f973ca560d21becfc54fb06e4de0a6afb0212"
    "gl"
  end
  language "in" do
    sha256 "cc3be865a5a99b444469307852ec6f67341ecfae81ea0393ac276b53ab9532c6"
    "hi-IN"
  end
  language "it" do
    sha256 "568f5fd1a547611cae26b50284c84051cfda7339786eb5fc318c3cce3f818ec8"
    "it"
  end
  language "ja" do
    sha256 "6c2cbe059e5a33cf933f7582721e113721519bb7df932cd15e4d38be2947baff"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f01faa5ee4951b7fad88d57e2911516e66c95dc88f2a293a3eeb8a4fc96387f6"
    "nl"
  end
  language "pl" do
    sha256 "e3645a8b717ff33549b403e9833f8cfcf3b84463dcbad2ca284c24e37da02e2b"
    "pl"
  end
  language "pt-BR" do
    sha256 "f07116a4e5ee34f73a6a284e44dac33e5e6b291ed0fcc5d6909b7adb104ae63d"
    "pt-BR"
  end
  language "pt" do
    sha256 "525685b072d726cccd9513776c67ae9a3c264b3978dcc7f6935b6049a2548e5d"
    "pt-PT"
  end
  language "ru" do
    sha256 "ed79f2dd72c708ce4c792b49f223fcff2e4ca4495b557932cc81c390d10ec897"
    "ru"
  end
  language "uk" do
    sha256 "64412a49b0abf54c92160f015683a3429b6517cd368b8ea3866bd67312827b41"
    "uk"
  end
  language "zh-TW" do
    sha256 "ff8b39210c4c008a3925cf51a4758cdb3d8aa9f0ce50586d9c376945b4556f4f"
    "zh-TW"
  end
  language "zh" do
    sha256 "9fd6e06b5d3539aa258a69d3992539abf8e94e6bbd874fd3e276c0bbff5d6820"
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
