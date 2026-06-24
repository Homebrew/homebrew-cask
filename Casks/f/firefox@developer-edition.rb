cask "firefox@developer-edition" do
  version "153.0b4"

  language "ca" do
    sha256 "f0d2a1d50cd1b74c6054e6d69ed3378bcfd08ef15a607f80e7096245de26caba"
    "ca"
  end
  language "cs" do
    sha256 "e7dea734f2dd99e86baad1b0115ab3eb7e0b0514076921a9ab9ef445f547f3d3"
    "cs"
  end
  language "de" do
    sha256 "aaa8c895ca5bf8c0f6dd8f8c572d8cae46255655c49122f1fdad80bf8c011e44"
    "de"
  end
  language "en-CA" do
    sha256 "18682a5027e3bcf01a19cd749ff838e876181f2a562d0653e1bae0d7f99d1202"
    "en-CA"
  end
  language "en-GB" do
    sha256 "32cf0ffa426450715de0a93a6b79f15d754017bb17d6ef22c346e96038ee7553"
    "en-GB"
  end
  language "en", default: true do
    sha256 "147403a098f8053c196c570ebec07253815e5176a256341ddfd3b9179303b4cb"
    "en-US"
  end
  language "es" do
    sha256 "d2d4dc9c3189222b8c3d2e02ebd8f07d0436c1510ec66c57e014e3e111d9c8a2"
    "es-ES"
  end
  language "fr" do
    sha256 "c46d9ab519657f5c4093b1c35e1a749cd6205d9f497e53f0a5841360395afc2f"
    "fr"
  end
  language "it" do
    sha256 "ea680f7521fc6fcaa2be8810e5067e38c6dd564da869ace67098a627b973bf44"
    "it"
  end
  language "ja" do
    sha256 "7e3fb91b14d9f6bc01574592b941341646349098721839641dd42c247f694694"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "31350d6554035a4f0051f351d25eab3a42d27a0213a7c493e7edd6d5e25bf3a6"
    "ko"
  end
  language "nl" do
    sha256 "0e6e1afc1fbe597c30e76ada0cc11f129f0d61d4fff46daafa96a974ea23b618"
    "nl"
  end
  language "pt-BR" do
    sha256 "c9867c43d1d9817f6f0c91a513955e1608eab2ce76bf0f8dddcb6139875b84bb"
    "pt-BR"
  end
  language "ru" do
    sha256 "4e54c2b5311283a4372e1871d2c947a91f518eb52e30295e9d521e5fa763c571"
    "ru"
  end
  language "uk" do
    sha256 "1d60f64f1d911a6497ff2b4ed5c14a563f160e3444e2367c251842da8b478ff3"
    "uk"
  end
  language "zh-TW" do
    sha256 "1dc2f3f889f105193f3a2a64aceb3bff67da45f0bee8d2bbbfcc8b9ebf4c107d"
    "zh-TW"
  end
  language "zh" do
    sha256 "98b5b2a60cead319ff11669ef1ac0700009ea0f26e87884948fffde246253757"
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
