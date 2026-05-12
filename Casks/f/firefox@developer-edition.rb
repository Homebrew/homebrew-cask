cask "firefox@developer-edition" do
  version "151.0b9"

  language "ca" do
    sha256 "5b48ea5daa62186c1a1802d3f4970229c1a21fc399f9a4ff5432d951bb17af26"
    "ca"
  end
  language "cs" do
    sha256 "7c121e9c29c25306543d8c168305272771f7b82106897086592939387ffc761d"
    "cs"
  end
  language "de" do
    sha256 "501a6256496c211b43e9ce4330b9eb09d882bcd42d83460ea3115da859ea9c40"
    "de"
  end
  language "en-CA" do
    sha256 "82950527fed9849a56fd28babd6aea05963fbcc67db962f0cd60e65b64d473fb"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b82d8d3e3c691034008fb44d88a2d3d2788670a31f0debb6926c2b1a26adb16e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f3ed7328626ba727cd9fec540e53c36fa8c13ada21b171619db57b0fb9a8e21a"
    "en-US"
  end
  language "es" do
    sha256 "a883eafa6526df7f71d785bc73f8b7e43a6557c2aecab600d4e27e13c176f233"
    "es-ES"
  end
  language "fr" do
    sha256 "71adcb0322807e06345e01025dba06b713fd860bd51f185174c4763def248334"
    "fr"
  end
  language "it" do
    sha256 "16b1a0a0aa2530a1e1ef6c204b373b7a42fbb9fe708c5e4e4b283388998018db"
    "it"
  end
  language "ja" do
    sha256 "a742100b1a03ddc9c4d6c949caef417169b5223d5a91f5aa5847a58ead927c2f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e90e8728c8f601da2055739f7fb24731a8cfd02b4d248af04e9118b72beff79c"
    "ko"
  end
  language "nl" do
    sha256 "2252967c3e52a28dc23c72ffecd8180c5ea378b380d23819011d4fa43361901c"
    "nl"
  end
  language "pt-BR" do
    sha256 "acb89560be905810da5720637d83284c6d85b19a3a7ce49d25f52baea5337381"
    "pt-BR"
  end
  language "ru" do
    sha256 "cc8d19c85b4b8cb100ec0d400c50ec9fbdeec86530e91b970029d2cc30cb5722"
    "ru"
  end
  language "uk" do
    sha256 "4952b35a6a7cb3939e742eeeca4f9b986e38b5a96cf92f409451c00d672db7a2"
    "uk"
  end
  language "zh-TW" do
    sha256 "7b8444d2f5aaa376bd5c7e32fa3987479b5232024afbf4b21d88749ae9782d34"
    "zh-TW"
  end
  language "zh" do
    sha256 "b44aef94242cdb420f575adc3c8ff972eb5de94f58794a65fd14d7874be2c9b7"
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
