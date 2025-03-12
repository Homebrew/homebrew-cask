cask "firefox@beta" do
  version "137.0b5"

  language "cs" do
    sha256 "176f711922ec4054f1e777d3d66cfd747b7469ca8f8c1a0aad5481fd88a2a7b6"
    "cs"
  end
  language "de" do
    sha256 "d0db1e9d68c5477bec3dc6d8508db5188a49ba32783ccdabb6a27a5760186d0d"
    "de"
  end
  language "en-CA" do
    sha256 "f185c8305c846629b0fc7cc55261e347c538a0cd37eb1ebc7079d6aa29e798d0"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2de3d02e4a2e628a093e4dac1c4710d494a8f92bf8513bb9bea9c94f419322f4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "55061539335ba6bdded8fe0e4c7915db7317bedafa8eef1a457ac71be784ba4b"
    "en-US"
  end
  language "es-AR" do
    sha256 "ccae751044d41ae1885a87fee8079adb79603ddea1f4a566fadf9c4a45a3f632"
    "es-AR"
  end
  language "es-CL" do
    sha256 "70d82fd3f768aa8ac2de601189e5d84d82ac99de79593cf7cf8e3a05c8134792"
    "es-CL"
  end
  language "es-ES" do
    sha256 "b481c92ad447ef8512850d35cbac9b7c1b4de5e5d6388876dc577157c8e45405"
    "es-ES"
  end
  language "fi" do
    sha256 "22bc3eea84e6914a353948bdfd3a6ce15f4d35ee59c9371db676e319586b623a"
    "fi"
  end
  language "fr" do
    sha256 "f993960d1cb32584c248d9dc528b759f75276735b7a977b311eab38a00ce5d2f"
    "fr"
  end
  language "gl" do
    sha256 "e117ccd83621915c19d67c38653de2d84475569ec82aa5be450c2bb69e7e8b24"
    "gl"
  end
  language "in" do
    sha256 "5a8213ede157d6d37e95e4367243a36b9b2c83683f7ce84348ed3fc11c102f7d"
    "hi-IN"
  end
  language "it" do
    sha256 "e17c425f28123a738d5dbda99e021ca9683b1089237a6707cc0ae0273dcfa84b"
    "it"
  end
  language "ja" do
    sha256 "c7be2f0c8a06f2b6f76275120885e6bca16309979f03eb68e068bc6deff70fd8"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "0f1df244c877f20cd0d01ab043901bb18df2c96aeadd6140b40aa4eb3d03deb4"
    "nl"
  end
  language "pl" do
    sha256 "b7544d017cf3a2a70dc18e218ba8a4bdac9c9cc1260f9c366c4b9086ec6883a6"
    "pl"
  end
  language "pt-BR" do
    sha256 "161ea7f728e2f941856f112e6075f0ef15183e6c00a1fd61f53afeab34038a5e"
    "pt-BR"
  end
  language "pt" do
    sha256 "740361c8b53a56df5a3cb7035f82ee6fce3b01f7904b86bb80833c4064237c86"
    "pt-PT"
  end
  language "ru" do
    sha256 "f40df59124fc2461103ec802d04097958bf7ef04b880869c24bc1bd522f885f5"
    "ru"
  end
  language "uk" do
    sha256 "65213c83442cb1df385f15e4a54da164aac2473626fa39d9a21fee65966acce2"
    "uk"
  end
  language "zh-TW" do
    sha256 "efc85926a5611adf91366ec9594f3b6c6663ca534f0fff93eb54cf884cd0072c"
    "zh-TW"
  end
  language "zh" do
    sha256 "78cc25dcd745cbe8d26bdb658890cb348c71f11a58eff8ed2e4890e37fcbff29"
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
