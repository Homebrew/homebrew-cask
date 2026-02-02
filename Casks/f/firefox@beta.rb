cask "firefox@beta" do
  version "148.0b10"

  language "cs" do
    sha256 "524abd2a8d30815b92933a6d0dafef391e8ab7641bf4e8e5f82088375acf2dee"
    "cs"
  end
  language "de" do
    sha256 "eb535ab96c55b2b7a6e505cac5eac0bd92fec8c343953b8a83aadc83eb952ca4"
    "de"
  end
  language "en-CA" do
    sha256 "1d4fe9d3f60ea20c444fbf808367283a7dbf8be6aa402572a1d40c78a482bf1c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "edc9de642e236f11afd4e2c3ce66050897e0891728e2cc9ba70301870ad05e1b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "77789df030fb7bb730eec2999fee228ecaefff43580bc70a376655d16dddfa85"
    "en-US"
  end
  language "es-AR" do
    sha256 "01b43af949d84bf19adde40521a98c9b9694db297c90127c4ba796a6b69a92da"
    "es-AR"
  end
  language "es-CL" do
    sha256 "21adf32269d91633657ade1f76feabdac04a14dbaca18fdb57ef511b32c679b1"
    "es-CL"
  end
  language "es-ES" do
    sha256 "8bd24a3f6518b6f37b14cd610f9fcf8de373209746f81f483de6d012b283cc79"
    "es-ES"
  end
  language "fi" do
    sha256 "2268c3774e709799db9dbf37ad84b672c829def87f3606e9158b8fd7bf100885"
    "fi"
  end
  language "fr" do
    sha256 "4cc8733fcd153364429843c24cbb2fedb1670a4297e4e3396d9bc298d7ed13ec"
    "fr"
  end
  language "gl" do
    sha256 "4400a03a4233a3eb0c78db0c6ef423156603fe56708cc3ad217c99bd049d4166"
    "gl"
  end
  language "in" do
    sha256 "e812a56d52ab492c710c22ced437a596130d8d4a1977daceef5f89c818ccf9dd"
    "hi-IN"
  end
  language "it" do
    sha256 "32fe23ebe1a65834abdbaa7da996cb6ab042d65f97778cec1ce1bbaf593c5d76"
    "it"
  end
  language "ja" do
    sha256 "b0ecb7f5ee0d90ab053615cda64eabda78711e886bc9d9519c1d387d5e04f8d3"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "5f238eb03c20c90497ece44ec377c09e27caa33dae68f394e060c9cbd68a066c"
    "nl"
  end
  language "pl" do
    sha256 "849058f61f983e9441af6d471ebfd87428a474372081c4a71d63f94165f1a024"
    "pl"
  end
  language "pt-BR" do
    sha256 "452b0fd2028252d407448c8fdeeed46fda58a2efc9123de86c6cdc3371f53be4"
    "pt-BR"
  end
  language "pt" do
    sha256 "90c178126cf6b86d4c6b7e7c1fed7d07204a93e083c5269d973338324092d4f2"
    "pt-PT"
  end
  language "ru" do
    sha256 "9583a7217d24ff0465ca6b1fc1508c23aaeafc2a73a3d0c2c3b345fd3049ca4b"
    "ru"
  end
  language "uk" do
    sha256 "c40964d8567dab6f3ef716f5b41c29f08207af0da08e474f8812d7d99540cc79"
    "uk"
  end
  language "zh-TW" do
    sha256 "d105ec1439fc197d51177b269cca87a3486c16729ec2f67a30502e596941dbe9"
    "zh-TW"
  end
  language "zh" do
    sha256 "2e08581c876ab71cc59db86e9907e275c5e368bd0eb1624aba017f71264822d7"
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
