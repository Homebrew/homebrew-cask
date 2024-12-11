cask "firefox@beta" do
  version "134.0b8"

  language "cs" do
    sha256 "20bdf35fc8205ce341e224e913004319d01fe7cb3c5df6d5a69170e99958ced5"
    "cs"
  end
  language "de" do
    sha256 "5b9d8df1f773883eddbd887a2ab6ecd8d580be9506a527ce65e3bdbb890d252b"
    "de"
  end
  language "en-CA" do
    sha256 "fd319412dee11cfc05ec249125fe11e1315df91fbfe3e2e305f4ac366a596b96"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8ad2c93701a7c35507c9817947e952441f1233c4be187c927b51a1af8982e65f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8d876f90207020aaab38a26fa6455577451403a6e5fd03e00a5a6efa95c899a7"
    "en-US"
  end
  language "es-AR" do
    sha256 "edbea80afbe2e0b225036f61b55adc10669faad9fd0e37468ac5ef5ff8c1c6a3"
    "es-AR"
  end
  language "es-CL" do
    sha256 "0a7a448e05779e8cddbb3e4f241f7be6a8931729f9d13fd5de1da3cbb5397a1a"
    "es-CL"
  end
  language "es-ES" do
    sha256 "47f38e29d7f975c613a5ba8b1a9e91fd10af56405bf2ec7bc2170b61469fce6d"
    "es-ES"
  end
  language "fi" do
    sha256 "bcf2b246a38824abdf7c1ce18c982ed602ee4a5b1c182fd0726928acb72c1146"
    "fi"
  end
  language "fr" do
    sha256 "8aecf6065a7105d45cf0ef7e75547afaa50dc3826d8455c4465468683b540cea"
    "fr"
  end
  language "gl" do
    sha256 "b44baa6136d4dc304cf926f31794b66fe2e1c146db798af121786ae3b8ef8b1a"
    "gl"
  end
  language "in" do
    sha256 "938a9d0c7ba7d5c1544710e42ccb09eaf5aefe6d931d87a8bca6e87961b51e2c"
    "hi-IN"
  end
  language "it" do
    sha256 "bd9cf3c42a379bda8f9e2b30aad88fcda0587eb45b906a1e2d08dff8eab3e480"
    "it"
  end
  language "ja" do
    sha256 "ef3d4757c3502431313258b5db0b2648944a06aad94790860681c13b9152d170"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "75c3070d8b79471b152e3de2c91283f0c9e8a9657c27d9caca817656d43c8bd2"
    "nl"
  end
  language "pl" do
    sha256 "bb46c0677619a96ac76d3dac007061243946f2fa525591fe2a31dca7b2416f95"
    "pl"
  end
  language "pt-BR" do
    sha256 "f3a1b58b2655ffc6a3c229c492636bab4959988cf605762309baff64d0cb1f5e"
    "pt-BR"
  end
  language "pt" do
    sha256 "0015a82fcb4c59a67ca503d26a64589edbd9ab110ba0a33f3f72f1e8b76e6747"
    "pt-PT"
  end
  language "ru" do
    sha256 "07f8b9fada102b1acdc5c9c9cdc88177aba527c3d43c9d3f12f4120b8fcb7e94"
    "ru"
  end
  language "uk" do
    sha256 "31119983ada7e20338a022f97574d38b91f9a5d7b756ddd1007a3e48cf9e9cb6"
    "uk"
  end
  language "zh-TW" do
    sha256 "ca17afd5d98c3bf1c98a3ad02f8d8ff6cc2de6fb7fbfb0ffc4641d4f20aad36b"
    "zh-TW"
  end
  language "zh" do
    sha256 "c763515f060c8197d457e6c60a090b6662b170249c0077818b90ee8ba6a8f861"
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
