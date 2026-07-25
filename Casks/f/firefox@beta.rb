cask "firefox@beta" do
  version "154.0b2"

  language "cs" do
    sha256 "3c0afcfcdf162ad623a5220ebbb6c291303ce49ff8875702ea4580a975fe7850"
    "cs"
  end
  language "de" do
    sha256 "1681998bb1ff83d6ba638ca48725221a7a671517108acce8163c4b890761baf3"
    "de"
  end
  language "en-CA" do
    sha256 "05675cb70c452b5614e5f791bdd02816a5e6c5eaa8f5f884bcb824554a2544ef"
    "en-CA"
  end
  language "en-GB" do
    sha256 "03cf10ab760009b54dcb7c2590cca8a674b6c6f6e99873abbd00c23b0029c470"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b40139e6a8b2cd3ffdd92996c4684d064e02dcb34d93e2bbb33c03385647729d"
    "en-US"
  end
  language "es-AR" do
    sha256 "b157ff9a506b76c731577bfdb859072a68d0bc77f222937e46953b8d0ad1300a"
    "es-AR"
  end
  language "es-CL" do
    sha256 "7ee0c226e8393c081de852d64d783be0aca82833cc775615bb00bba257a93bb9"
    "es-CL"
  end
  language "es-ES" do
    sha256 "b0409243b386cd76b31fc67ae04de8220bdff22652d7eff8feede30ac81f0bab"
    "es-ES"
  end
  language "fi" do
    sha256 "dd8f9d36a3950aaba96822760a90d458200fad5382b99b19c386718f20e99daa"
    "fi"
  end
  language "fr" do
    sha256 "0d01aae5b5d90169eab2a901c362bed959c4571da7cba798730fbd95f5439528"
    "fr"
  end
  language "gl" do
    sha256 "d16f0ee6176fc7e9f77dac2c509293a2964b1f8e3f4bc346a94f6a4dce421882"
    "gl"
  end
  language "in" do
    sha256 "c03a403b2513dd2bf9b3be749b134806c7ed7e9631680334ff50c5a89d1b1436"
    "hi-IN"
  end
  language "it" do
    sha256 "6c0b691237e24b01d897725e7ce7b7ae6d9cdbab9c55dacd78aac4ffea06f2f6"
    "it"
  end
  language "ja" do
    sha256 "b0f36cab94b542028a4aa026330b368e09c81ca07a4b59810d694c89b3ca477c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "0f69b593e04d4ef0242796880e2eaee789edb585cca46ff671ee04a65ab6b25d"
    "nl"
  end
  language "pl" do
    sha256 "aecefd07b442492c9bdc5dfa0a74889f49fd528aa53f0c1c026eb180c70b25e3"
    "pl"
  end
  language "pt-BR" do
    sha256 "69d2ffb4cd4cf9d1c1fa4bec28d5dd10435b1b3f5ae0744e691f7f07ea888aab"
    "pt-BR"
  end
  language "pt" do
    sha256 "c6460b80262e502da2c08b80a6d47f9b0a1a72889963091ce85fc633524485fe"
    "pt-PT"
  end
  language "ru" do
    sha256 "27b658c2c75a95017edfa584d6a94787366b2bdba5b1d0dd3404bacfe7af7765"
    "ru"
  end
  language "uk" do
    sha256 "7381be589f6614c9ca0632a74519a6692444187b7079bbace94a4f0743b26dd3"
    "uk"
  end
  language "zh-TW" do
    sha256 "70422a1b52ada436d4d6d0bfafd9b78ee3d2019878425866117e842aceb3cb9f"
    "zh-TW"
  end
  language "zh" do
    sha256 "1e5421576b89c421de493b6cd869b5cc4da5047b5cce2746a4beb48f2f87a1b7"
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
