cask "firefox@developer-edition" do
  version "160.0b1"

  language "ca" do
    sha256 "532d066ba11394a7173cfbfa7607d14eb4883233fd02d9c4d9ed934ee93d51d3"
    "ca"
  end
  language "cs" do
    sha256 "c9199ae8c4a87f1c3fc2b10f22826442a70fa51fd747db51ba62b3476c7c6cab"
    "cs"
  end
  language "de" do
    sha256 "07b1cdaf2717c64267a78f0ed320ea251aef958a2f712e981a3df6668fffcdfe"
    "de"
  end
  language "en-CA" do
    sha256 "4872b8bad7b89f514c0af6c03757646f9af5e47eb17fa7aff8ce2ecf0a41364f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "52ea93b03335465d308c444cde494a4839b57a4db4e2ac22c504698dc8840492"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0bb98c0cda85a29ffe57b6930fecb50764b6c172cf3eb26fdf5fafb1e80f99c8"
    "en-US"
  end
  language "es" do
    sha256 "3ff3c1ba39b674eac706f0452e232db028f616f932ca90d8341738923a2934d4"
    "es-ES"
  end
  language "fr" do
    sha256 "c905473371fabaa26f3335b2aa7601cdd66d7e65dc8b39c3f1c62a0230103cb5"
    "fr"
  end
  language "it" do
    sha256 "5da3d849dc98fa3c99285eeb4520d9d60c9129fb483f80604ef31527db446789"
    "it"
  end
  language "ja" do
    sha256 "1361f8bc548ffd7b80e759245cb2528a149a67c27d6818c90bd17f9d5806ed50"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b4bc10ce5e0dd1efafe06eaf8b5a25a017c4739731d8e9bf80cdbf348aa46fa7"
    "ko"
  end
  language "nl" do
    sha256 "468dc2124dabebd32bd70400bf73083faeed93d8de0f99be526ae8c45b1df40a"
    "nl"
  end
  language "pt-BR" do
    sha256 "fa5fe63ca4307f225da287cd7d106c1c7b9b96aa9a25ab3d505021e1e94176b3"
    "pt-BR"
  end
  language "ru" do
    sha256 "b3fec0cefc982b5271e12b7662e43a9b7cb27f22789385215856a5789bb91542"
    "ru"
  end
  language "uk" do
    sha256 "7ae280aa411599bcff250d9a8e33ec1a7e3a043cd2db365107192f6dbca3deda"
    "uk"
  end
  language "zh-TW" do
    sha256 "d5c7b0e281a870306b26e49aa0ad6142b43aefb83879c8263cdd9e61ab4b2267"
    "zh-TW"
  end
  language "zh" do
    sha256 "e089172002553546c5fdf9f58e29ecf2eeb65347c9684e0cc538094a937ecde6"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
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
        "~/Library/Preferences/org.mozilla.firefoxdeveloperedition.plist",
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
