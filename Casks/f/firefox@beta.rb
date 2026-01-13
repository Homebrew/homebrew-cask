cask "firefox@beta" do
  version "148.0b1"

  language "cs" do
    sha256 "15e3ffc2fd90255edfa7bab3870a4a96d7c3ae809a40d6b38990410dd8ddff6e"
    "cs"
  end
  language "de" do
    sha256 "da8a0c3a6ea54a91f4c0592ed30e2ae48c9058bb0d6f9566fe2d761902b17378"
    "de"
  end
  language "en-CA" do
    sha256 "e6936a2aee87588a9f346905f79276ade84e3260e5d923630bb0e3d591b344f4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ab4412e4d8b4768c29c563b71847ad57a50710161f9edc9a06bc2ce9b4bcf793"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2f9309a6c42bd16c3d6fddb35a0769867081dcd80ac8100446d6f9e466135df2"
    "en-US"
  end
  language "es-AR" do
    sha256 "d38514a7f9e94856c5d7983d8ea84d471163417024b7104589f9fd014007bf61"
    "es-AR"
  end
  language "es-CL" do
    sha256 "b22305a2fb497737e0c4d0ff46a05aa74e5615c20fbd1604fe6e1da27745ea94"
    "es-CL"
  end
  language "es-ES" do
    sha256 "b3a85d50f0cc66d914569569b3c0d1e35a0089ab6e1569308dc1a2c86455be41"
    "es-ES"
  end
  language "fi" do
    sha256 "5ed65cc1c8a0953e63a30559cbe3e3c221e28eecf051c2a6d182ff5fc2617bb8"
    "fi"
  end
  language "fr" do
    sha256 "3d28c7c76830c4ebae0bd2cd738511c69cfa28b9ac3285f37ec22c20e2308743"
    "fr"
  end
  language "gl" do
    sha256 "f1646f94061ef4cbfe38774b4a7fbf531ccadd2cfe249623f7956e27c7b5c246"
    "gl"
  end
  language "in" do
    sha256 "f04e8986cf20299fde4563812abc68392bdebde4ac6b01616a3c5703e61e6da8"
    "hi-IN"
  end
  language "it" do
    sha256 "1f469f6b5db93f5909cdd31c217a3b10349fa6394d2646a7049e140fd0350b69"
    "it"
  end
  language "ja" do
    sha256 "a9a4f9ab95e0b6315d7deaa1b9990b6bc88cff177a55ac129e8541a4571c18c5"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e969e3071bd383358106ef4d639406f3a16775d86b7ec8e1d3cce3f680d8cd83"
    "nl"
  end
  language "pl" do
    sha256 "49431da69af9a7ab1840258036afca457c5c922650fe1dfcc4e2f2e3eba96330"
    "pl"
  end
  language "pt-BR" do
    sha256 "514effd2f5d3a3890d95c6717f46b12dc87db8015901a402dd7c998e5954639a"
    "pt-BR"
  end
  language "pt" do
    sha256 "1165fe08cc30049ac5cb8f381de305c42c82b01de67b5a832bde8ffa56e70066"
    "pt-PT"
  end
  language "ru" do
    sha256 "b9034265ba77f270bcc1cbf9ce4b45263fa24dd16b17c61550287dee3f687a40"
    "ru"
  end
  language "uk" do
    sha256 "814142383a4634ebdfcb0ad04bb6e0a27762dd153491edcf04b06692e7ca2885"
    "uk"
  end
  language "zh-TW" do
    sha256 "489c98c5165ac3daae04bb278804da200c73d0e831539051578cc25f4d50fdec"
    "zh-TW"
  end
  language "zh" do
    sha256 "9ce9e9fcdf367151d398958bcdf5cffa57d7a109108bc8871a18da3ae362fed5"
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
