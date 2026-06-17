cask "firefox@developer-edition" do
  version "153.0b1"

  language "ca" do
    sha256 "57504277a167eb3886cc0059f8aca0d1f1d4680c2a6391cd163221483c5bcec2"
    "ca"
  end
  language "cs" do
    sha256 "68adf70d6292f7d93513e6654972fbd4fce3dbe4fda0302c88c94baa66ddffed"
    "cs"
  end
  language "de" do
    sha256 "3ce7e234bf3f93d967cd6fd12816235c47a7f1fa9a305eed29f2683a84c18eb9"
    "de"
  end
  language "en-CA" do
    sha256 "7cf6713b0c004f344101fca9fddd9f0972e5c4daaff1468744ab71ec658ebc98"
    "en-CA"
  end
  language "en-GB" do
    sha256 "67509ba8ae465e86801102a5b6ba1a3fbb76daf42f5a900584136dfb4dbd54e4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "666d9fdbfadf12a806bd1997db6c991e258cf12db8e39cfce2670d9004a0169b"
    "en-US"
  end
  language "es" do
    sha256 "9f3aa6aeb875d40f183e38c2e6d5ac4e2fc219a7d647455f4c836bd2fb844372"
    "es-ES"
  end
  language "fr" do
    sha256 "72cf9b0d4217482bb60752ca08dc4f96af86bf6cdcc7d0905005bc5ab15efa64"
    "fr"
  end
  language "it" do
    sha256 "052243bc7764902032be49878bce0b3586e999e67d0d20cc03d52a9efbe72d55"
    "it"
  end
  language "ja" do
    sha256 "844e52cfe4bc124886439e6eaafe765770ae3486ff4eb64b53d5b30cdd33748c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "01ba0b8ae90724e80deb394e007b04199872df8bf5e09c5ac7bc099906876150"
    "ko"
  end
  language "nl" do
    sha256 "7e475abdfc5fba6757f3d52193b2c9c4fcbd82155263f0953a3bc06149395349"
    "nl"
  end
  language "pt-BR" do
    sha256 "105b191920f264c80b96240f2005b039d6039ef74a2aee434254e278ef90a5f6"
    "pt-BR"
  end
  language "ru" do
    sha256 "a3cfc4b49294b71a97d94bc7f9735560fde852a7e796454f3d065307325f9179"
    "ru"
  end
  language "uk" do
    sha256 "d8676f2a2359ad29596dec68e63bee1819db15fc62890cc7ebb2562df5d2aa6e"
    "uk"
  end
  language "zh-TW" do
    sha256 "00cc499bf3d90854cf79d24dc47936856d38e80f54e1f242f3d420da9aa52c4e"
    "zh-TW"
  end
  language "zh" do
    sha256 "f05374a98786ab4095d9b4aa237a3faebdfa522bb3f126260dfc2aee9a46c9e9"
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
  depends_on :macos

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
