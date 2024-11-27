cask "firefox@beta" do
  version "134.0b2"

  language "cs" do
    sha256 "89668c550b1ff93e3e413664667dfb7fe595a364914320eddaa808e18ddddd1a"
    "cs"
  end
  language "de" do
    sha256 "4dd4fd1c1d3b8dd7777e238692d3ea6f923128fab247ec3351c2f09cdb81dd8c"
    "de"
  end
  language "en-CA" do
    sha256 "4382c10e48c561857c667514c478179b31af1ac7156c6c84833dc58dd43363e0"
    "en-CA"
  end
  language "en-GB" do
    sha256 "274cdba67c8e953b5e58aba3a3da81b64fcbdf13b3768f506d625e9cbdd697a7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0ea40721a5bb12c5cca52de7da80fcc7885fca93c93fb6527e6cffa004b1f430"
    "en-US"
  end
  language "es-AR" do
    sha256 "893e430057522f41977e7c0a211043fc1b727768e3a3918e09d9e6fc4721ab25"
    "es-AR"
  end
  language "es-CL" do
    sha256 "43b0a99f0fce2e649a52fa19aa5cef9b94d4b8ec58d35ce3b123477bf5be0025"
    "es-CL"
  end
  language "es-ES" do
    sha256 "b10aef33b681e96bdeb8b333d62f3fc92aad8b140428e78551c51154035b230a"
    "es-ES"
  end
  language "fi" do
    sha256 "42ab42299ce4d5609c32df5a524a6da9c0297796a56cc701e97a8376ea507243"
    "fi"
  end
  language "fr" do
    sha256 "a720ecbf59f965a4f8b21d4e503624b57e07a25b55f7ff70fea7d4dbb2a204f9"
    "fr"
  end
  language "gl" do
    sha256 "366315b3826aa0f8853138839dc27b7cdbd0e3de89002cdca29b3f8919c0aa1a"
    "gl"
  end
  language "in" do
    sha256 "9eb1304e0da31607c50386607509c972600ab4812e9e3571f42ced299fca1395"
    "hi-IN"
  end
  language "it" do
    sha256 "262f337eede19cc2fd69941cb39e2bcd8b5c406b241e2307bc482bee3660bfa2"
    "it"
  end
  language "ja" do
    sha256 "7cf07a6ae2df52b6976540d7c5726ac9129d6d14b5a4ee3856ee235f8d277671"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "5998febaafd9b7baa884e19998de44dc60889332682493db89ea83bec6310cb5"
    "nl"
  end
  language "pl" do
    sha256 "2ed5eaeefcf7845024fb7346bdb17b1e1631846438cde6426277107ef2db5574"
    "pl"
  end
  language "pt-BR" do
    sha256 "ab5a296a682e99019fb8eb9d9edae3974883caa6de91df0354ea0b4cd594306c"
    "pt-BR"
  end
  language "pt" do
    sha256 "e7b9eaa6746ac69c5616fc41a99b984c18d5fd0e1627e7e6f39a652ca5ec8961"
    "pt-PT"
  end
  language "ru" do
    sha256 "9a4c03bf4a24e3000b318f9b93c50aea5308a04ce849cde081740611bd9d3d5e"
    "ru"
  end
  language "uk" do
    sha256 "77e9b9ebb28c2ee9ecb6fff6db5844ed2fa0810e5297719e64076fcdff12ec8a"
    "uk"
  end
  language "zh-TW" do
    sha256 "ab055bc6a57459fc20ba7a4178d10f93944ac049513552e7de20b4078936526c"
    "zh-TW"
  end
  language "zh" do
    sha256 "ca52771125fbf535c677cf0f28be228e575272ff0a6f070dfd69aa5154ec9bee"
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
