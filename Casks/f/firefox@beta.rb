cask "firefox@beta" do
  version "136.0b2"

  language "cs" do
    sha256 "be4b9ded5aa424c6dc1ba05c493111ac30fac7147188fe4aa2b16fcffb194361"
    "cs"
  end
  language "de" do
    sha256 "4cf0c50cc0feccec0c552d0b0306547b0c69aad5365d89c7f3d366f5ac10f27d"
    "de"
  end
  language "en-CA" do
    sha256 "54f75f19aecd4fbe397a1c0908378a7266271b180cfe071e7534af8cbd9cb97b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a91f2b5be110abb3d6ec4a9a25820b1f2bc8dc5bdaf5023232c2a1a695ee8104"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d6bb770cc095ff0713c5efa9ef5491acfa20ddbe3ddc4a1fb50d575044fb1cbf"
    "en-US"
  end
  language "es-AR" do
    sha256 "ad8fffac2b288f3e53b4a99bdcb791bdf65e75400981273c4e0a335424d1a408"
    "es-AR"
  end
  language "es-CL" do
    sha256 "d45fe416258ffe99f8e36999e997af21585b3be6b1fab21695b8df7fe9990d51"
    "es-CL"
  end
  language "es-ES" do
    sha256 "abed08c03233ed8a5d116ec634fef6dfd65779302b95a18299be61668504e1b1"
    "es-ES"
  end
  language "fi" do
    sha256 "6cec62bfb933ba46c25b746d910ba8612da7ed79394758ed5485e3a765f505b5"
    "fi"
  end
  language "fr" do
    sha256 "9de7c2c642140f4f5fa1232c7d68e6e94a946e6afd7e3b2494465552078233a2"
    "fr"
  end
  language "gl" do
    sha256 "2b23ae0b9758e5dc98e75f829879d31333d29c16da6bf14b320cac6333f1e190"
    "gl"
  end
  language "in" do
    sha256 "2ea0317329d18bbe0e681fb0c87fd3d80b7e3013072fdd48e85ba6f46184dfc6"
    "hi-IN"
  end
  language "it" do
    sha256 "ef89135e895a89e03cc61f6701f60026d08edfd98a5c1f296d90fc6bfa8104bc"
    "it"
  end
  language "ja" do
    sha256 "fa7d5c720ff462e4e76220fbcee300c0cb133f5bc623b2848e725950c1e92f0c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "c8ff089916e2a1e72d842d255c22dbae4dbd701f61ea2f25575c01f83baf6cba"
    "nl"
  end
  language "pl" do
    sha256 "0bded596dc760eb33a6e7625710ca18728ec5c7e9e91d11853e35d141f08ee5e"
    "pl"
  end
  language "pt-BR" do
    sha256 "edb03a89d2dea80de5514ea81e2814c218db60a49c87e50bb1fb6ef14a60c4d5"
    "pt-BR"
  end
  language "pt" do
    sha256 "bb28673e629044b3e9fa54bc95de52be3e80c54d1178a15d002a444763b57918"
    "pt-PT"
  end
  language "ru" do
    sha256 "630447a1503684bcc90073c6322a614e29df2ad6b1a1e4bd195d372db6d3d374"
    "ru"
  end
  language "uk" do
    sha256 "8a72b28335a1619b817f0641859354a28b285108cb40fbef8514017fb94bca19"
    "uk"
  end
  language "zh-TW" do
    sha256 "1faecfccca59580afaff8dea62644f69a48d474aa16683148ebd0cf9bb23e838"
    "zh-TW"
  end
  language "zh" do
    sha256 "575a9125955f277ca758c1dd539e883af21e70a443e42a65458a95b8269cf4fa"
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
