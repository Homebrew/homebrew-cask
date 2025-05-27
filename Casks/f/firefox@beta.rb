cask "firefox@beta" do
  version "140.0b1"

  language "cs" do
    sha256 "f3a0578262d614530ddc43fdaa2b872d0a75164ad995f93c8d0d0783b14c5a48"
    "cs"
  end
  language "de" do
    sha256 "44795c2d79c8d951c67bab873eae6a5bdd7edb36b7a1ba2b344a71bb213e3f09"
    "de"
  end
  language "en-CA" do
    sha256 "f9fadc9104e12ac721bf503e51a0713677dbe21f8b06e1745fc45880a919a108"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1634c14bc0b57ad095e0f1592df9efb07050804a1464d3e9a4801ba3576f4c9e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1233059971a4fa9ee221872c05ba85ebd3fa4707a08a13e5771c387729eccbc0"
    "en-US"
  end
  language "es-AR" do
    sha256 "abe774081138135534673453cf5ec8739e50f3b1a001e3a899ce7bfd24f28042"
    "es-AR"
  end
  language "es-CL" do
    sha256 "bc85974e8081adce933feb6f3dc4c7b16c1b84b6c2642275628ed996b2120b13"
    "es-CL"
  end
  language "es-ES" do
    sha256 "b45abcd8060419ce8175e8eaf9478218018965be23d13547c3dac47eda4be1ed"
    "es-ES"
  end
  language "fi" do
    sha256 "37498fa1e84af7368cb02013ebdd286770bdcbb5d436998e967812d5b9bde381"
    "fi"
  end
  language "fr" do
    sha256 "e29549816694c9f31dae8c5093d4532d3ab33f6c1e88548c653aee9135ddcca2"
    "fr"
  end
  language "gl" do
    sha256 "3d472f01f8a243409611df99d041551c2057936e4a8ed741f6485a697a127272"
    "gl"
  end
  language "in" do
    sha256 "9fa7e82c8538cf7eae9949afa5bced990c67c383019284fdbc5ceef5702281b2"
    "hi-IN"
  end
  language "it" do
    sha256 "cb5c660c9d9f52f439060402a5d2915d166acca592066b9bf91243c850d23a9b"
    "it"
  end
  language "ja" do
    sha256 "354d8fa54f8c12281ddcac7a6758c488fa326d5d3bb3378a9aaabcaa57d5a0cd"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "61e9f78b5dfdb922aa0da34633dd8f70cbf39e396c52b1f629b476cc19d05aa0"
    "nl"
  end
  language "pl" do
    sha256 "a39a2f9bc1834a54a3653d04e5685249d518293a8a55ce6948bf08f19e79606f"
    "pl"
  end
  language "pt-BR" do
    sha256 "010b42fd5dcce969939c2aaa6bfe64dd163e59728f3d847758264a7236bc03c3"
    "pt-BR"
  end
  language "pt" do
    sha256 "dd57b74f9b8b8885d067d34b94ae3f4d07a96c6c8845462f061fa3b9e8529b6c"
    "pt-PT"
  end
  language "ru" do
    sha256 "056035a53112456b61dbe1e9a8aae6fb608db28bf96ca0cb8d1e5d620f4ac914"
    "ru"
  end
  language "uk" do
    sha256 "aa6161a1c3080178b5247c0d12620d2f87b9317b3f2d275a695a775193d00ede"
    "uk"
  end
  language "zh-TW" do
    sha256 "1a1e78d722aeb87bd04d7b59d11bda0b8040b5af27f415b0e8cc0bb677971b92"
    "zh-TW"
  end
  language "zh" do
    sha256 "4b965d7e70df0da0fd72535e2a39fff87da8478186fc08d5343c469d271e33e0"
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
