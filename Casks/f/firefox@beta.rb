cask "firefox@beta" do
  version "157.0b4"

  language "cs" do
    sha256 "d1650bd35177ea5badd2f7dc1a8dc06e211b646c14032ebb26732675d0aa12eb"
    "cs"
  end
  language "de" do
    sha256 "df51ac2936463578360e9f81cd0cc7324f8fedaa708881cf596fe8316dd449cf"
    "de"
  end
  language "en-CA" do
    sha256 "af341c833bf1f170b38701426beda2210608b97193fb424331fcf28dea6a00a9"
    "en-CA"
  end
  language "en-GB" do
    sha256 "590395f4b725567b1b2f6d52b3f1a0f24b5dbe758f03c01db8e59ce8039b8b47"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7a6d4defff9c1c60f0783e90617568e9df37fc46f45e8e1eacf1f01caf7da2d2"
    "en-US"
  end
  language "es-AR" do
    sha256 "91a850387f2da2e02592174b98c49710a46fd77260688a9a69fa78098dbb7a2c"
    "es-AR"
  end
  language "es-CL" do
    sha256 "6c871c08ffd265bf76e611be7bd93b0ee7b7b6d96f9dc1e937cca3940b512835"
    "es-CL"
  end
  language "es-ES" do
    sha256 "f42076a587e6e2e2f698f6c8d0d073be4f085d2751e7b46d8caa15611bf8924f"
    "es-ES"
  end
  language "fi" do
    sha256 "0afba6cbc5ed9791e7ebb5d8543f5de30f6a43c4bf688483092f415a8fca8a06"
    "fi"
  end
  language "fr" do
    sha256 "f9796e7e08901d6aa3a5c824cb2089259bff5b5a3f1b18b386264f9bdf95608d"
    "fr"
  end
  language "gl" do
    sha256 "29870ac1b8644bd5467f3f34cb7b91a026f230ecc19c686aa3f5e38109747aaf"
    "gl"
  end
  language "in" do
    sha256 "1a434c73e00157eaf97d2784b3fe8f7b9171235a549d052433ca76be3f9207e5"
    "hi-IN"
  end
  language "it" do
    sha256 "79787ea522d169db708de28367f79fa21c5d736f54891ebaff237f9ce05686cd"
    "it"
  end
  language "ja" do
    sha256 "1c4765be445c462ae3d544169e4059930c7f6ab90cd535429e99bddccfca393e"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "0faf9f4d177b4935619bdfb212a9645f07eb06aea7779057db0ba958552a2ca7"
    "nl"
  end
  language "pl" do
    sha256 "0462f421d6b7915cddf4af3610352253aa6842f37c4d7ca36fbe6d2d4c55c89c"
    "pl"
  end
  language "pt-BR" do
    sha256 "587368ae857c95365f25b3aa7d1606c3413afd140e182143ae2eb83e5f340c22"
    "pt-BR"
  end
  language "pt" do
    sha256 "57d250912c6b54c06d315323622acfff432f3c0a80ec7b2e1ba51ccc85ecc380"
    "pt-PT"
  end
  language "ru" do
    sha256 "3c0adfcb0599c4f03bf845d680bccaf2a89484497c4922cd8cbce53264cb7092"
    "ru"
  end
  language "uk" do
    sha256 "2d94be2352b1ed10aea5c5e5f289fbdc9ed67d3cc07fe8e238ae67e67d1724af"
    "uk"
  end
  language "zh-TW" do
    sha256 "9365bf3ed4a8526a67962407824a6751369f414102da88c6ba6923640d06484a"
    "zh-TW"
  end
  language "zh" do
    sha256 "c5c5381d6ee2bf71a2e70e2fbc512ca7b87d68f30433c3ba1890bc6f7be6f415"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
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
  depends_on :macos

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
