cask "firefox@beta" do
  version "148.0b2"

  language "cs" do
    sha256 "9f3202d6c9022b727e5ee479f10b22a35a176298e33df4bbac2de39eb3160046"
    "cs"
  end
  language "de" do
    sha256 "4963c5e2310f0ce07b938827b5f755ec7525a2b4d14eb0f824836779c4661e0c"
    "de"
  end
  language "en-CA" do
    sha256 "5e19a2b40f4831b47154b43a62e0e7b12276c37b99f24a2d4bf4a4c891ec4ce5"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f3774af35c2c577950ab88e2c87f5ce3c069b120571a1d82369cace1e4b5ee1f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "751eb59ff73d883624504358ccbd0f69b128cfaf955a179e545ec9e0b1203912"
    "en-US"
  end
  language "es-AR" do
    sha256 "78dc1c3534f1cecb1053624b897ff0636e0ef0a4a6d323065b6866b5a5f482ba"
    "es-AR"
  end
  language "es-CL" do
    sha256 "3a7bb66fff8db4807235e839c11fd38a124fafe3d6812025295025bde22f9537"
    "es-CL"
  end
  language "es-ES" do
    sha256 "73c54858a2e8d0cdc24aca28b862fbc2b90720253ff360409a477e37ecf998eb"
    "es-ES"
  end
  language "fi" do
    sha256 "56ead0ab0da57998e58bd6d0ca36b6acfa7cf2666f2898ac16aca88e2cfe5d3d"
    "fi"
  end
  language "fr" do
    sha256 "daaa7b607ac80c20d6cfa4c8773ceb72c71e0e28f91350990d0a585011470e96"
    "fr"
  end
  language "gl" do
    sha256 "b54bc8ccb30250ce709fcb892792dec1b0c35a86864f4d7e97315aeacccd647d"
    "gl"
  end
  language "in" do
    sha256 "104c1b2846300219689aa1d6b18119bfe71dda963a424816c51b60a5c5b22c12"
    "hi-IN"
  end
  language "it" do
    sha256 "737864319e757419c2e6ae752dbd47731661b14bc88914d60a1995a487b46f3b"
    "it"
  end
  language "ja" do
    sha256 "1e2d0232419c414490df4f669b35e63414bcd4cf8ac2bfb3acce8c7eab710ecb"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "64dab0e9248c46cfc5b200c63f048359496aabed1cdb81f16a0f8b49d38d2082"
    "nl"
  end
  language "pl" do
    sha256 "ee433b42abd6e8014d4b00a40934920ded3739a3c9393de1c5ed25ee58fbb734"
    "pl"
  end
  language "pt-BR" do
    sha256 "76f35377d5f1693542f07d1a146cd3c780edd930792a1b0b999d85e37203366a"
    "pt-BR"
  end
  language "pt" do
    sha256 "9545e7cfb63c22a5f14c4ca1227bed2676abab31068aa21201a0c9a0e9d71c91"
    "pt-PT"
  end
  language "ru" do
    sha256 "6b09e3da54490c2a5b5867c3c336d2a446e56dce51b894a117ac8991a043e832"
    "ru"
  end
  language "uk" do
    sha256 "4069e36887f27e3beeca6434bf863df73be2802968070bfd8342455bb85d7faa"
    "uk"
  end
  language "zh-TW" do
    sha256 "b9d7ada1cb08b7f410561c1b1ef11307e90e78b99635b23b600d41471a1423cb"
    "zh-TW"
  end
  language "zh" do
    sha256 "e63baca43dda9b69cd4ef59aca9a976ba2e0587e0f21d5bc6ad3b671dbce829b"
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
