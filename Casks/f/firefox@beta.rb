cask "firefox@beta" do
  version "154.0b9"

  language "cs" do
    sha256 "b88f0be0af0cbe779515211fde0fc84cb45609ea0d49763f115a29c4506493ac"
    "cs"
  end
  language "de" do
    sha256 "377a74901e63a9828458bc331cf89a086b8db79e87a7a878aa48a59bc248d1a2"
    "de"
  end
  language "en-CA" do
    sha256 "de837ea9c5750da6b7d0a0cf8eb67d9a19c6808ee13bac5f37376975c5f58ecf"
    "en-CA"
  end
  language "en-GB" do
    sha256 "eda961fa328d7b7a2c17261394bf59014adbadc99d51dec28bd42dd25b4d0c8e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "09b50f38f8467e6b6777eef673c6ea6f19a727f6646b94a0847fd69c4985640f"
    "en-US"
  end
  language "es-AR" do
    sha256 "7e9b280b4ddd2aba3d60140daa4e39850a43faa82c2e12004a9804a7e8cb4d89"
    "es-AR"
  end
  language "es-CL" do
    sha256 "3bc3818a54079bb023687ff783d13e49903720c4953b59a02fe87bfa864c5615"
    "es-CL"
  end
  language "es-ES" do
    sha256 "d91017c4e95b5b3a4de4d553fee0cb72ed714f63de391651fc2810b735293bbe"
    "es-ES"
  end
  language "fi" do
    sha256 "69d008d0fe114e169f6fdac8c0e08041cacfe8f74ba312057ff5b1bbfb309e23"
    "fi"
  end
  language "fr" do
    sha256 "d4a48da046e59beb58fd8962cb33d4611453437fa16c0d1767017640aba3a373"
    "fr"
  end
  language "gl" do
    sha256 "2dec13a56cc5bc27b160d080ed0ca17923e1b2958dcebb69cb0636a833c79e5b"
    "gl"
  end
  language "in" do
    sha256 "9b767d34ffec5285aefd13bf4f46f169e0e6a32920f80625cb1c58b090f2c37d"
    "hi-IN"
  end
  language "it" do
    sha256 "e9368aaa561111534b0a7d2c44f1fc23d6b2bc858a396a9d9a2fd0bb84112b69"
    "it"
  end
  language "ja" do
    sha256 "109bf1a7c040243e78a9ecb382f0711ef396cda9cf0867ab15daa8421e501994"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "a9d603c78bfdf5acc567f37a114f47e9110d9149dc47e33e6b39921400ffed92"
    "nl"
  end
  language "pl" do
    sha256 "c7020efae9c4fc3eed66ac72473da38460220f2079fc6833605af5648f82c175"
    "pl"
  end
  language "pt-BR" do
    sha256 "49970eb8812ec9efb6fa224e74d74a2596cb49496c4f23421bd5a1f414623c26"
    "pt-BR"
  end
  language "pt" do
    sha256 "8f68a0a3cc5ee330b855a3fe3c64c9c1b38ddbd861792d55be001b68c2a07437"
    "pt-PT"
  end
  language "ru" do
    sha256 "3bc3f6fbf39783b0a5721a886869c127d875bad113a28978e06cac2e8513a91c"
    "ru"
  end
  language "uk" do
    sha256 "2458e8dbb5c43b34ef304df638289e8f7af5045c1d14066af59c545d004aecd6"
    "uk"
  end
  language "zh-TW" do
    sha256 "0df8736a6f502e95fc20034a5f4da26cf91594e02c7c9369f3e16631163a5e8a"
    "zh-TW"
  end
  language "zh" do
    sha256 "c65829af2e2fc99bec3d4f951e8040de2095266fb55fd03cb6650c4edb54a20f"
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
