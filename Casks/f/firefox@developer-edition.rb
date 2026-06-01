cask "firefox@developer-edition" do
  version "152.0b6"

  language "ca" do
    sha256 "72d73cd68e4b426aadf51f279e42ab6c01774737966016687d4a509687fb78b6"
    "ca"
  end
  language "cs" do
    sha256 "03eb5b404178fd27e6eee818a44b5efbfd762eb426316dd36dde73930460d859"
    "cs"
  end
  language "de" do
    sha256 "774ac0cd13cdf8e71d885c4ca7bec94299ab9ffb57f1d840b64031240ea3a6c2"
    "de"
  end
  language "en-CA" do
    sha256 "5dec8ae5bbde2c52c886a733ccd46e51fab265ea68b12760d122da9c8161776d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "fa5a40ee1a3b727a9d3a03c3ee0eecef907867fbdbedd4a64741a22bbde7a2e0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "760ce598e6dd6a64ec6545aeb5980dd73cd1d1d46ae17a97095371c350b4679b"
    "en-US"
  end
  language "es" do
    sha256 "6d7c44322dcc4b1841af036f9f81ef1cd86fcc648ba2a4f6736d772aee95ce6c"
    "es-ES"
  end
  language "fr" do
    sha256 "ea257d8ddf340694ce35801d0b686d123d2ed4ef2215bea0cab81c2f9e94f9c9"
    "fr"
  end
  language "it" do
    sha256 "524add3147d4bdfc539f4192e56b69dbb93e39ef4ac09111407bc7751cbde496"
    "it"
  end
  language "ja" do
    sha256 "06c2db8b3a07f3066ecedcb5ba496c2456ee1e77a95e8f781e8c0736607f348d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "13ec6b5e2720f9be43158fea198f85e62b5eaba1e78f5e2d446f13f187f77977"
    "ko"
  end
  language "nl" do
    sha256 "152a1bbed26a4b88404aec052f2375ae229022e7a4b2bf5ea3f3dd1605b9282d"
    "nl"
  end
  language "pt-BR" do
    sha256 "f8dd423ad33c730d4a2b8fc2dace1fa9e8545163fc0e59cd4807118572558a3f"
    "pt-BR"
  end
  language "ru" do
    sha256 "9a85b9e9310b29155b40aadb276869a3b6d226ade9056219a45667b2de6288f7"
    "ru"
  end
  language "uk" do
    sha256 "d49b04ac2a35313a771444f5723b05e9a3c7a95d67be94f4274fe567386eb486"
    "uk"
  end
  language "zh-TW" do
    sha256 "8cda47eb80ef49a4e1d9cea757a62d978dbea4fa8f0ab69df1397a40de262774"
    "zh-TW"
  end
  language "zh" do
    sha256 "e5e9ccf7f438d16553a39e4d0299c9aa6d1a36b5464609cfce116540bc76511f"
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
