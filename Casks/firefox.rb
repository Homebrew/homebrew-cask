cask "firefox" do
  version "85.0"

  language "cs" do
    sha256 "d00093e9f4f4616176a1429b86cfc37be6ef1e34642294fd8f07aa096c832ea9"
    "cs"
  end
  language "de" do
    sha256 "de1182950f7da58168b4a4fdfc8f9657cefcacc515ef71c141b27c14db4e98fa"
    "de"
  end
  language "en-CA" do
    sha256 "c18a477cdabe3a51cda1e59e14121eeb4831732df5543a8c3915a445e21f6d54"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ea02f95c210705dc70687a1576e3bdcb3868e409b5ea717bf7645ceb6eebad47"
    "en-GB"
  end
  language "en", default: true do
    sha256 "54c1cfc7b51729f274a65825de0892dfa77a4796d1def8b54f2c132fded94198"
    "en-US"
  end
  language "eo" do
    sha256 "175914009e48a7c53d78de6ed46c9730af8dd0618984033f167534742a7e5a59"
    "eo"
  end
  language "es-AR" do
    sha256 "abca1e94eae96de4bff615e2718df3ed3e469c29106877e1a02ccd9b910c1eb6"
    "es-AR"
  end
  language "es-CL" do
    sha256 "551b2500fbb40699514420ddc91de23f78dcbd78275650ec50ca39bced389477"
    "es-CL"
  end
  language "es-ES" do
    sha256 "97e48f3a7567b8fd6888aca543b693884baedcfd2814835e2ce6b2b6375c3f51"
    "es-ES"
  end
  language "fi" do
    sha256 "f4a478505b5652bd2088b2a808ca7636ef2fd8765aab54daa43cd2002cc16c28"
    "fi"
  end
  language "fr" do
    sha256 "06cfa4ed9bf53faf00a9ce949da8b74d6e6f6d3f404f4bc2b6babd60f3a2bee7"
    "fr"
  end
  language "gl" do
    sha256 "84878b6861f54b728d33f566c585b031ddb6cbfaf22ced0d255d07d62afb5ce5"
    "gl"
  end
  language "in" do
    sha256 "39f3ff6b65abe72ab0e3556e7c6371bdad47fb69d49ae2780f82aabef0969026"
    "hi-IN"
  end
  language "it" do
    sha256 "cda6bba58b557c7524dd59b0ee7ec42efea14f5fcbc262065d8568c08f538683"
    "it"
  end
  language "ja" do
    sha256 "d70e87af1529105b5d2d9fb67053a57e8b6de54c7a9e829c53edfdd5dc71acbb"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "885824461fb5b2c658b21243563700b913b59268412ea1371fd1e2b0b41ae26e"
    "ko"
  end
  language "nl" do
    sha256 "5f19038f422b7fffa2b0b57e0870c4383696d520132eb9d55b73de256bddfddd"
    "nl"
  end
  language "pl" do
    sha256 "6b91de51f9ecdf23c4ee38908b6eff5a306397c0bb07a88b29a321a4bfecccda"
    "pl"
  end
  language "pt-BR" do
    sha256 "35a4a1550c850b74578585f1904bdb8c9dcb01e16bee1b6496847bca9a243fa3"
    "pt-BR"
  end
  language "pt" do
    sha256 "2fd78a09a95d8d17ca57ca05f7d130eef037cdc6bcceec79375ad37a371c5a2a"
    "pt-PT"
  end
  language "ru" do
    sha256 "1de39d52f29127f5b6098738fc0658bd081e4083df99ef419cf72df8f00071a5"
    "ru"
  end
  language "sv" do
    sha256 "9b15deba2e5bac82fdcef07fe72a334b8944710e565dd35f3aa45e8b6e9211a3"
    "sv-SE"
  end
  language "tr" do
    sha256 "7067b2a926d10064db5c8c836a91bc87524d24c1d1c71135f0e04f164a615761"
    "tr"
  end
  language "uk" do
    sha256 "631aa7e07fb9d0891af8a16224c9085d6fd8c911d1d67e1d33816c9002e9bc27"
    "uk"
  end
  language "zh-TW" do
    sha256 "3a97db3caf7330536b9a6fbcced2822adf6b87634bfcbdd7b155798bb6f7eba3"
    "zh-TW"
  end
  language "zh" do
    sha256 "bf3a4242b2f618bd1dfa8dc22dfc929cabe75ebad632c21541dac243bec307ee"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
  name "Mozilla Firefox"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/"

  livecheck do
    url "https://download.mozilla.org/?product=firefox-latest-ssl&os=osx"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: [
    "firefox-beta",
    "firefox-esr",
  ]
  depends_on macos: ">= :sierra"

  app "Firefox.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/firefox_*",
    "~/Library/Application Support/Firefox",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
    "~/Library/Application Support/CrashReporter/firefox_*",
    "~/Library/Caches/Firefox",
    "~/Library/Caches/Mozilla/updates/Applications/Firefox",
    "~/Library/Caches/org.mozilla.firefox",
    "~/Library/Caches/org.mozilla.crashreporter",
    "~/Library/Preferences/org.mozilla.firefox.plist",
    "~/Library/Preferences/org.mozilla.crashreporter.plist",
    "~/Library/Saved Application State/org.mozilla.firefox.savedState",
    "~/Library/WebKit/org.mozilla.firefox",
  ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla/updates/Applications",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla",
      ]
end
