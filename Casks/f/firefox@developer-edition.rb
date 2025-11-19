cask "firefox@developer-edition" do
  version "146.0b4"

  language "ca" do
    sha256 "146eccf0e15ec747bb73c042a7fa401cb0eecb54105917f4c2cf4604eef61f6a"
    "ca"
  end
  language "cs" do
    sha256 "868345ac25314cb23ac20e3f8485c92b66b268af6dc2836dc6807c0ad9125f25"
    "cs"
  end
  language "de" do
    sha256 "1d9082c492dd36d5551de2d274ed5dcc94685fd56bd98a9586acacc246b89f72"
    "de"
  end
  language "en-CA" do
    sha256 "c70bfa106bf77b8708c4c9091faa0d203971aef3be374e19fd810ecee9a25708"
    "en-CA"
  end
  language "en-GB" do
    sha256 "36e907cd797e461e6a9732d99a2bb7894ffcc391b2b3d4d3641258eafe135687"
    "en-GB"
  end
  language "en", default: true do
    sha256 "db2406c87e03f2623a58ebf470c226fef5e408710a7f8634c64c5fc009070183"
    "en-US"
  end
  language "es" do
    sha256 "fec52953aa28ce6f8111c93cecfb24a87958f32874eeeb25a62fcfb1716539f1"
    "es-ES"
  end
  language "fr" do
    sha256 "08624f5c7a37918cf76264a806cfa3b889a8d817c9c618528747f0a70f606cd7"
    "fr"
  end
  language "it" do
    sha256 "959fa745decd068a7d7b495fbedd2fbf6fbbadc271c4729061be193abaf1c263"
    "it"
  end
  language "ja" do
    sha256 "f91eab3ec5087f1965b3075826dbeb6a10bd5eb37d2056c2a331fcf17b5746d2"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "008e24d4723a03096a921a54942be2dc761e0c420c77899385550e355c55a219"
    "ko"
  end
  language "nl" do
    sha256 "315837df475e0f694a3bd076a4f5f52e75c55f178aeefa6e6d986e8a9330835a"
    "nl"
  end
  language "pt-BR" do
    sha256 "58dca3dd76363b28a5e2cc951d13da91028df159203af7172b2fdc9cf160448f"
    "pt-BR"
  end
  language "ru" do
    sha256 "caf18ad54ef11af5944e0f532280a0031e94ca098510c320c0f234941610f2b9"
    "ru"
  end
  language "uk" do
    sha256 "28d708ed278ffcd1d621a617cedd96f7258bb607beefd9dc585a5d9fbdf66da7"
    "uk"
  end
  language "zh-TW" do
    sha256 "1bd71278631e9c0c390cc0e1e09aca9af16e5e97286056d4329723b4a944fd59"
    "zh-TW"
  end
  language "zh" do
    sha256 "45957db37d3ed20f35620b6e23c7131567dfdda8f39fd0fcc1719a722ce98479"
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
