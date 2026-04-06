cask "firefox@developer-edition" do
  version "150.0b6"

  language "ca" do
    sha256 "47ff919afe02c346ee79bb4ccad7d9c205dfa30b5e19deb32506e06e858dc41b"
    "ca"
  end
  language "cs" do
    sha256 "28286d5a717a3a8f8aea8f65ff1c81218a3be89ba873e9767bbf1cf40fde031d"
    "cs"
  end
  language "de" do
    sha256 "3ecd341f980dd5ef891a1d9d931c1224e3197dd6e48c1a544687165376fc2339"
    "de"
  end
  language "en-CA" do
    sha256 "8db261c2cd2b7b70cff2db42acd2fa864e07b2a06e5f4eb197cdeaf68ebf3e94"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2c89cf31b74a9cf4eba399749b95d23687abd49f5b3ec8b23a9929f4d6a6e6d9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "38f34f501bb0ee408e3e678f797217f7e2fabb8ef4cf5775c07021594b2346dc"
    "en-US"
  end
  language "es" do
    sha256 "a4ea5e3f5bbc28b69455ed88a3c2c9a64a20db4d91632b21ccd9ac709d282b2c"
    "es-ES"
  end
  language "fr" do
    sha256 "65fa080b289e0692528acb5db03c555cff6063c0221ec262a7d809de985166d6"
    "fr"
  end
  language "it" do
    sha256 "7333820aeccf7ab3c3b62502df1440f00c4a5dfee4c77751692f8e052af0779d"
    "it"
  end
  language "ja" do
    sha256 "a885fabc64392bb9efff5315fea4339282e33920f595056f3d1a4d6662ce4aac"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c8d1c5fbc70162f548b6398f76176573a0df94c87c94c04cfe36bfcaa9fd5441"
    "ko"
  end
  language "nl" do
    sha256 "0e5befd6fb7460c469e5a45b4847cae957ceddcafc119da530b60331d6d234d9"
    "nl"
  end
  language "pt-BR" do
    sha256 "ff3008aa79a0fbf571ab29c0640e37ad7385a3439e9f1f7fd6e53a08b1e83833"
    "pt-BR"
  end
  language "ru" do
    sha256 "839c82730327ba2cf4a90485d38f6c651b786c542828e7b2b524bb5d89cdcadc"
    "ru"
  end
  language "uk" do
    sha256 "a5780f5624543f94d748cac2b55ed7d3fa773a0abecfacfa0be244402ebd341a"
    "uk"
  end
  language "zh-TW" do
    sha256 "52c4cd5f8791c422a1e3bc346d10e4fe6deae547b846110fe31a1df19dda7bf7"
    "zh-TW"
  end
  language "zh" do
    sha256 "31e0e236362176f08174748d0f8b8947c59c7405058c958c83e2475cbb252920"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/devedition/releases/"
  name "Mozilla Firefox Developer Edition"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/developer/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["FIREFOX_DEVEDITION"]
    end
  end

  auto_updates true

  app "Firefox Developer Edition.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.firefox",
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
