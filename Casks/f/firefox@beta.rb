cask "firefox@beta" do
  version "138.0b2"

  language "cs" do
    sha256 "b4e38f3dac797331e05024aa48af6f47c6d3e786f2aeb360455529815fe19805"
    "cs"
  end
  language "de" do
    sha256 "edcaa49cb74a999298641a443ebdeb5b3b542bfe412a67398e08686ddb8e4019"
    "de"
  end
  language "en-CA" do
    sha256 "25e9c9625f08acbf38d327a39c2a6f4577d824d4839b76daedc8706f59f5aba7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a716dbdada0c1ce3110653fdc75a4e73dc84354533d1f6bd3e9d22dafad7371e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c7e7fcc1c72c2591ba9d64f76eedc060d777a2f00218e1eecc767cf71e7dfb53"
    "en-US"
  end
  language "es-AR" do
    sha256 "32d5f1f3a7782d5ef1cc72a0b1d1123ea61abf6655d9fecc6b4019f107a5e5ab"
    "es-AR"
  end
  language "es-CL" do
    sha256 "3b4dbc4babfd6fde18c7bc4780802318edf94e9670bd17196268a28b67db3c4e"
    "es-CL"
  end
  language "es-ES" do
    sha256 "10ddb000e1bf367e56b65aa96a30379d39bf2958b9c0fd3454b53e11f1bc53b3"
    "es-ES"
  end
  language "fi" do
    sha256 "d99acd72e32a9cc2bc14c06bd0a95e91c8e36c40360bab20e4267ebe2e4b43e9"
    "fi"
  end
  language "fr" do
    sha256 "8db787b9ad4bd7a4cbff79856f4ab591577c0a877e8ad871e030e01c4b3d12ef"
    "fr"
  end
  language "gl" do
    sha256 "d36679574fa7e8b294c55760c698b0e0354dda253a7f223aaeff2af073c8f210"
    "gl"
  end
  language "in" do
    sha256 "73ae17f5884254c02850b58dd8e63f15bc5c39771d7af9e45d6a6fa795375d9f"
    "hi-IN"
  end
  language "it" do
    sha256 "38a9f4ca2af768137d99dc26967a9a78d14585ddef4b84a4a9484f55eb3c13ad"
    "it"
  end
  language "ja" do
    sha256 "f38001ce3eb5324b6d1e0c6d90c792c30c0591672227cafde88805b2811d09c9"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e418cad903243fc4478fdf2616aaae19d6725a51869882aa9e82c829bd20ff88"
    "nl"
  end
  language "pl" do
    sha256 "cf11e52b46c41669308155772aab4984c47c40eaf03f43626ba50881287c4749"
    "pl"
  end
  language "pt-BR" do
    sha256 "288d80b965f2dd40c10d71776fb0951ce8ecd863cb2ad5377c80566f6b7080c6"
    "pt-BR"
  end
  language "pt" do
    sha256 "74ff51a9d29acc42a0818cb3b1de86abb8ae4c323c0105914c063a33fdcffa78"
    "pt-PT"
  end
  language "ru" do
    sha256 "46acc011187f702cdac029ff69f2257129e78f4a101f6bb10f76958cf0e0868a"
    "ru"
  end
  language "uk" do
    sha256 "53a83739efab65ca8228444cc7170880e33c860acb36c979eae04d1f3742e3e6"
    "uk"
  end
  language "zh-TW" do
    sha256 "4deef6ccaa6d51c501bf5c2663e4f95f74ebfb1258e0f73778143b545ba6a4d0"
    "zh-TW"
  end
  language "zh" do
    sha256 "65192a0c760c50f0fda8d69b8c9f2eac8ad5244b8073dedab97b0c82fcb47720"
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
