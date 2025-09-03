cask "firefox@beta" do
  version "143.0b8"

  language "cs" do
    sha256 "e1135018c368151392b8e3fde0b108899e8e973e53084b40fa855c4471261448"
    "cs"
  end
  language "de" do
    sha256 "ce578d9424847e4c3184c7a7ef933ba8af1f8dd554a92bd9ef71bcbb3975b8df"
    "de"
  end
  language "en-CA" do
    sha256 "9ab5db82933d4eb1d0a086afdc8cd55d5da31a38377483f0a0e863f1a4e3d150"
    "en-CA"
  end
  language "en-GB" do
    sha256 "137cd824c7dc75ab308abc05397fea5a94c2c537a42876fca330e71f5137713c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "924893b8445b216391a37527193428296a2956258f874dd0496897bfc81efb3c"
    "en-US"
  end
  language "es-AR" do
    sha256 "74c320c7fa34b1e6583479748e711f5a77c240872f5135c49ad8d8960e7ffad7"
    "es-AR"
  end
  language "es-CL" do
    sha256 "6043d7a34d8d48cf61a1d956e172be3612f3f456af7219675bb32723c0a53680"
    "es-CL"
  end
  language "es-ES" do
    sha256 "600455b55f55cba76f1c7a873dfda7af5fbad460ef14c3f6f55a40f191495286"
    "es-ES"
  end
  language "fi" do
    sha256 "3eaa5811c293c86a5c44bd5dd5b119ff5acd73cc98dac7adb14000d22fbcef52"
    "fi"
  end
  language "fr" do
    sha256 "e58c66ee40dca177dfb579ce76ea83c2a7e98358481794b3afb68e2f648ba464"
    "fr"
  end
  language "gl" do
    sha256 "e71054de1ca953e70b090eeb07bc3772a30b148068e8432326c91d69b648704e"
    "gl"
  end
  language "in" do
    sha256 "06ef40dbc2b829b732d946b9078f5898ce07cdabd83f5e493826cad27929add8"
    "hi-IN"
  end
  language "it" do
    sha256 "de9a9dce1f010db2d7d6d9c3cf3e7af4fcce34273c4aabff3d7df7529ceca946"
    "it"
  end
  language "ja" do
    sha256 "37463b4dc47b3dc2cb10ec2ddc354f47cbb9161632cee1637ff5aac5ca783812"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "52d81437ab389418ea436a38842f25e7220fce99bc18ae154bc1609f4d7dc889"
    "nl"
  end
  language "pl" do
    sha256 "335d5d4ca0ed3dbb15ad38cbfb0edf2d9872a198a119bb6205604d2889fe1c94"
    "pl"
  end
  language "pt-BR" do
    sha256 "94864a1068c956908aa82e1cfa6511a7a6a1d607fcc8bda6c6305c4afcdbc81f"
    "pt-BR"
  end
  language "pt" do
    sha256 "78fac9e8b5725f4bc542b1aa3fb16db92260e9ee0a91da3071fa510487a994c5"
    "pt-PT"
  end
  language "ru" do
    sha256 "d2dcf2022fae8178a78eb3cb7444df1d9b0a9f2f86dce646cb88e2ec35742736"
    "ru"
  end
  language "uk" do
    sha256 "ec0a750d4e10820f45d7bd4a24033a96ac608bb39b72c7edd8250471ec3e97f7"
    "uk"
  end
  language "zh-TW" do
    sha256 "95695e2fe42aec1abed655ee46d4bc207e2a5353a2b9243a9beed3a04b25b501"
    "zh-TW"
  end
  language "zh" do
    sha256 "098203a07b868c7c3014a53495a122b4c75c4ecfda86693f11f38b702baaa83a"
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
