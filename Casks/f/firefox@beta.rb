cask "firefox@beta" do
  version "142.0b2"

  language "cs" do
    sha256 "8633159336a25fd003659800614a44095b29a6004cffcd9b33c345a5d5532c0a"
    "cs"
  end
  language "de" do
    sha256 "54418916fca57284bf21d460cfcdce2f6713ec67590a01b9a924da2a42bc0271"
    "de"
  end
  language "en-CA" do
    sha256 "ad55eee307aba494934168669712cfa57f0001f1cd1afffd28ad5d03902575be"
    "en-CA"
  end
  language "en-GB" do
    sha256 "46e91fa9e9f77a982f6601c415b29144f852770212d47844204a6bc604374151"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3036c88ccd29844adbd91440b560f081191245375d2d44190412bc1e611d7558"
    "en-US"
  end
  language "es-AR" do
    sha256 "3d1de68129ea43804d869a7b3a8b9600046ca0db0586dc1b8bc1ace151ad8551"
    "es-AR"
  end
  language "es-CL" do
    sha256 "821e48114e4cbda32fc3c61c6dc6eb9c898ba8b2c59ebe9c63c40770618c5d6e"
    "es-CL"
  end
  language "es-ES" do
    sha256 "fbce7de38b6d656113ae164358fe18866af57493fb80e031b60838ec69586c56"
    "es-ES"
  end
  language "fi" do
    sha256 "ce1ec6102e8676292aae59658372cd9c72c4524e00f9b669bcc66d95ba42d478"
    "fi"
  end
  language "fr" do
    sha256 "49422420df21bd752efca5c9688a5f82ca3bf2344dfc47d91ceea207c926b916"
    "fr"
  end
  language "gl" do
    sha256 "ee2d891f9a1fb44d5de9011f8216352bb50713eea24a9d993c51251115b82d02"
    "gl"
  end
  language "in" do
    sha256 "8cc293a1782402f50278415f385e07bdca6eb725c983c07b652b0edb5629392e"
    "hi-IN"
  end
  language "it" do
    sha256 "ca6bf0861ad09d1aee3ee3423383520679bb53c428beed301eca1385ac6657e6"
    "it"
  end
  language "ja" do
    sha256 "ee2179c2ffda24daed0ff6e32f0e0a095cdf80d016c27707c83a8cfe27727361"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "caad8adb864e83b92d2bd0a4fcccd2b038c9989e998a73b1050dbc851635c183"
    "nl"
  end
  language "pl" do
    sha256 "1a025532ce1b6e65d2f43ad77d235bc8f7a69229794e0fe9efcc5179b80e9ac2"
    "pl"
  end
  language "pt-BR" do
    sha256 "5d652340cd6f8f614eb80bde1cc6897a76928a4ad5bbbba34ba5274c2d74e351"
    "pt-BR"
  end
  language "pt" do
    sha256 "3b3d2ad261e170af183ec7c1b3d5f92b18879265cbf77a8fcff7cec70aba99a2"
    "pt-PT"
  end
  language "ru" do
    sha256 "84930752c1ef93c1b29dea5b3086b487fcdbc0fb87de17cd032d11ffd5aa7c6d"
    "ru"
  end
  language "uk" do
    sha256 "9ae9bf7358c32abeb5364d3c492689d04d2b54be258042307c2844e7395b3571"
    "uk"
  end
  language "zh-TW" do
    sha256 "df9d5afb61c2705e4db246ebe4939b3aca3c74c1dceaa144f0012eeffc75c3b5"
    "zh-TW"
  end
  language "zh" do
    sha256 "7331159b3dc638b84a95802414b3ed03cf18fe586938a8906a9cad219475b1a3"
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
