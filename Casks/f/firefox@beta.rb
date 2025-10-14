cask "firefox@beta" do
  version "145.0b1"

  language "cs" do
    sha256 "d75dde2612838399613ec23be624fd5c9c37863e7983339ccf3e64cecdda064f"
    "cs"
  end
  language "de" do
    sha256 "4aed1fe2975cdbf9ec9861c4d4b9b97f5ae8ab3d8b6f8152e2a622ecaed82f4a"
    "de"
  end
  language "en-CA" do
    sha256 "c7fd71accac64c34e7f5bf5070eb595e0670c97a9753dac522c093fde366d7d7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "358228b8f609ffa16637941007902cb8eac2c095c03667d484389c1cfce6d8eb"
    "en-GB"
  end
  language "en", default: true do
    sha256 "be24adf3ec50c911b2b1ee5b66e0c42418d981e2c484f4d09db7e7dd29563479"
    "en-US"
  end
  language "es-AR" do
    sha256 "31219cd4585f06aadb58ff917c5403faad1525c5a6f8f2092110d07b3faff484"
    "es-AR"
  end
  language "es-CL" do
    sha256 "5fe5f9d3f0bc7ec7a9340fd9ed8f190bd7e4ec6850d4988f75c5a89152ca0255"
    "es-CL"
  end
  language "es-ES" do
    sha256 "7995014248adac2971744f8097393ebd2db782ee1bdc28af8db4ad9d23e39cdb"
    "es-ES"
  end
  language "fi" do
    sha256 "562d5519af405f562e76db14c2f4b73e04ba0de3d20279d649f6af757d3e5816"
    "fi"
  end
  language "fr" do
    sha256 "b1199cc093a4891e50a9971d3a0960162b38004d34806f9a588e97361f46aa6d"
    "fr"
  end
  language "gl" do
    sha256 "379c229cfe43b7930ce90ade75161cdb317e5097832f93106915f5b5b8015ca1"
    "gl"
  end
  language "in" do
    sha256 "35719077b2b8571cebbff7b5911ed8da7a2543bca8e3ee49f7b53d2fe7611b86"
    "hi-IN"
  end
  language "it" do
    sha256 "1931e0c7950799ab99e6a8010a44f45b290624621fe6437b79a5606ee79e57b0"
    "it"
  end
  language "ja" do
    sha256 "eaed5fffd2bdba26c700745e0cf3c19b6f3b709b352dfa969168407cee4a4e37"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "76e8365268f4d51c18a00cd256b9ac5b79e6a90a311591f6a0c6a822762eebb7"
    "nl"
  end
  language "pl" do
    sha256 "744d5dfbf0b700b562d011e26b9fdf9fe40624f118f711648c300da1f500e00d"
    "pl"
  end
  language "pt-BR" do
    sha256 "215ca3a922a34b9d5a15d5e02b8321de5e90ba30b8e63372bfb7f53cb127bca4"
    "pt-BR"
  end
  language "pt" do
    sha256 "fbbe323f45a8e8a5b2e885b817884b343a1f4ebb330767cc78f797614ce7abda"
    "pt-PT"
  end
  language "ru" do
    sha256 "dbf3a02e8d48e12de59bbbc48336eb3a5b064a2065fa6e9ded8f510293242414"
    "ru"
  end
  language "uk" do
    sha256 "aa8c34600f06540f12a1b6b7a408f1ff4e6d1f61a23961ad19a9c030391e5b48"
    "uk"
  end
  language "zh-TW" do
    sha256 "6dc495564d1b846422e710c502a77e1e4514a4ca74daace436c9b0f7bcee0b1d"
    "zh-TW"
  end
  language "zh" do
    sha256 "cd0da5dda0f049a8826e1b3a40bc8996cd14a46c454a1f791a685f12d2198dd6"
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
