cask "firefox@developer-edition" do
  version "144.0b4"

  language "ca" do
    sha256 "25ee93e209bac2bc6c0af6a1378259236592c718e8a85814fec72f8f9cb69153"
    "ca"
  end
  language "cs" do
    sha256 "b18f88225a3bb50daad48b686af782dc9d185e7793e861fbf87a424aeaf4e0b2"
    "cs"
  end
  language "de" do
    sha256 "52a48e5cf347d2ad270a9b555467a4b0b8336f6a886c3c000b532b10fbd42084"
    "de"
  end
  language "en-CA" do
    sha256 "6f1460f554e7664be9e8ccbce3be98ca8a9842f0139e78740be92631c7ca36ea"
    "en-CA"
  end
  language "en-GB" do
    sha256 "668f56eb3b99635c73e5b1febfc1ec27fcf3fb09a8076dedd337cd0c18f672f2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "834b2c0d28718ea7e8663c0a22729e63c98876053bc63b1f5d12e1044fa16cf0"
    "en-US"
  end
  language "es" do
    sha256 "751b2d7a84b8e04b4449aa41aa05869db175941cb166380e31f5b281ff0fbb73"
    "es-ES"
  end
  language "fr" do
    sha256 "6e58281fd2776d7f14bb744356f5fb6a53a0ddc9289fe90841c3dcff10ccad0a"
    "fr"
  end
  language "it" do
    sha256 "9c7637defdef2675430c5db33b09f8cde9ec9d2fb35b74a158364dfa30041818"
    "it"
  end
  language "ja" do
    sha256 "d761394ccc13303641fb2ce07f1874982fd169bb2c503b224b9eff2b617a9ab6"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "5fec7e0fe65ae584b814f21ecada4360affb5722b042ffe14aafa1ea4347be72"
    "ko"
  end
  language "nl" do
    sha256 "68d4f716af7a94f0b49f12e6feef8f77fccf1f4329296f06cf546ca6b61643b6"
    "nl"
  end
  language "pt-BR" do
    sha256 "28f8479b54cb5e03b71d8eadb2d8e1d46c086b737ebe45c3fdd773da06cb4277"
    "pt-BR"
  end
  language "ru" do
    sha256 "3234e85feb872d89d5de08c971b951e0f6e2052a736102533294ad648b3718cd"
    "ru"
  end
  language "uk" do
    sha256 "c773c3c80a14385d9668977b8f625822112dba880a172c5ed00347211db55d79"
    "uk"
  end
  language "zh-TW" do
    sha256 "29b2ac8c70e216dde47a8a0263c471d6247d3d8cc2dc491691e9ffcdef214296"
    "zh-TW"
  end
  language "zh" do
    sha256 "c7592f1dffcb1f5916c1c7a1ce944f0a3722514de0916d5efafa04da5f92def2"
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
