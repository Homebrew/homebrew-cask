cask "firefox@developer-edition" do
  version "132.0b2"

  language "ca" do
    sha256 "8af7a10ed2f4a222d1123a17e882c101dacac113e3620570ba1a7e262ea9c963"
    "ca"
  end
  language "cs" do
    sha256 "a037f82b1d582a827b1a9db7cf7abf85d606718cdb6a7e56a633f246514ddbb5"
    "cs"
  end
  language "de" do
    sha256 "27c5b20a9c933dc997b709ed40347fa79fb30547688ed1c62c3f9ce9b02b964f"
    "de"
  end
  language "en-CA" do
    sha256 "750ca38165b42016ef07ce8e49a6fccff56a2a847d1833cfbe0f7493180aeea8"
    "en-CA"
  end
  language "en-GB" do
    sha256 "79757f53652284a8697b8082aa91dc22da9abcf7716227db320b78ada22dae5f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c5e435f7069911dec2250b29bca1acba7a5b0f59e07a784d38f4304e0d0d3417"
    "en-US"
  end
  language "es" do
    sha256 "82e53c3ce547a43ef4bb525b4b2bfea0a7f91aa63397826d62c7c390a4ad68f5"
    "es-ES"
  end
  language "fr" do
    sha256 "4132c19c977eab64e132ae3631bd6decee5cbe17211f35b213d32fb6dd16e5b6"
    "fr"
  end
  language "it" do
    sha256 "8063cea0e49ffd4f929fd5dbc5bf4d40ec3d850cd6341b17c1f8c60494acde9e"
    "it"
  end
  language "nl" do
    sha256 "6e74c178e734fe1ab36365dbaac8791392d51b2fdc58eed2f405cf9c776a4b62"
    "nl"
  end
  language "ja" do
    sha256 "f59dfa5e268b53b15b3d0965286430e74f2bd2a3a2fdc6344a19bc2fa7105c1d"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "459314572c09ec222f7180bd684357bd3d7cdceac734a0b699be2b301e8871d0"
    "pt-BR"
  end
  language "ko" do
    sha256 "c08ad52a760c1655933431a4cf1a0e6457956d9425e0f21e735c003708458c73"
    "ko"
  end
  language "ru" do
    sha256 "4cb844086d8c0502f49042d7cc86d0f3c6c86f43be673039d1344b95d1b74138"
    "ru"
  end
  language "uk" do
    sha256 "1efcf48572170c413d4d0023c8623a1007803815b16bd28981914766ad1365f3"
    "uk"
  end
  language "zh-TW" do
    sha256 "da310f9f1a875a3876f95ec49639b572ed7916f75023e527ec15dbadf9c742f6"
    "zh-TW"
  end
  language "zh" do
    sha256 "dd07c79dbf8f47d9b3dfd8acce95779f3ce8291e100b1f19674c30ac9160a9a3"
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
  depends_on macos: ">= :catalina"

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
