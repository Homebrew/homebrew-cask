cask "firefox@developer-edition" do
  version "147.0b3"

  language "ca" do
    sha256 "8d1866727bd5c965666c58a71784bdef057bf1fd7e1e0b83a87efb6bf35c3aeb"
    "ca"
  end
  language "cs" do
    sha256 "19d1888d79d11aee05f9b4b197fd0cc84a9efd03b4dfffb0baccf52cadc63145"
    "cs"
  end
  language "de" do
    sha256 "93632304ef4328843786e8290f8aaf4f4c42a5951c7f910c286425103284b866"
    "de"
  end
  language "en-CA" do
    sha256 "a33c1c78134f26cf4751a420ec78c7b4636a1238f58e5d7fc351733897545255"
    "en-CA"
  end
  language "en-GB" do
    sha256 "9d9c4679d2b1291055415ead298efaf1e9e5a9d33beab4bed86223ae84284b8b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0663fcf43f8fa64de0d41b2748f0f2e4fa8ec94b529acf6297f1e3b30e255d6d"
    "en-US"
  end
  language "es" do
    sha256 "0e913f25c3df173a3e5cf791a13c7b1019f319c827b663d8268e5f55c94ba5c5"
    "es-ES"
  end
  language "fr" do
    sha256 "b08e55fcbcb63e5c5885bc67cca34d6fc97f7414c7310301c29a67f1e33da9a4"
    "fr"
  end
  language "it" do
    sha256 "e93674316b51179f7c82a04ec672aa43254e80058c22b6cd5f8126729c34c404"
    "it"
  end
  language "ja" do
    sha256 "0a10a6a96147493eabcb0804e54ed032af7d9d4d01cf40cc41529e63207d0e16"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "fecd82e82f513cbc288323890a8043b452a53c7c440d60cb722d173c0af7cd41"
    "ko"
  end
  language "nl" do
    sha256 "1084551bb243e45dc6cd0209e8be9fe5e8169c7ab34224b04f88acbd5e83d024"
    "nl"
  end
  language "pt-BR" do
    sha256 "2586cfe3d459a451f3dd87242a578d0d7b9f553c23469f0a4f545822942c54fa"
    "pt-BR"
  end
  language "ru" do
    sha256 "aa3344f9769369ba4d3fda7bb7e1674e76e68756639bc629d621d9a645251290"
    "ru"
  end
  language "uk" do
    sha256 "08be5ecbe9ee8270a76ad79ed1395e4cb2b4da9ef4ea97d072319f9d024efb1b"
    "uk"
  end
  language "zh-TW" do
    sha256 "48d51b0dfa486c819df0372929bcadcfce1f14c1d82fa3c504af757f0b9a22f6"
    "zh-TW"
  end
  language "zh" do
    sha256 "1e2cee515ce8a0add977a4822754a489435c9e2cf6b62e3a331f7d4a173bd3f0"
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
