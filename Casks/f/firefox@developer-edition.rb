cask "firefox@developer-edition" do
  version "148.0b2"

  language "ca" do
    sha256 "5e77949e4657ac1ec83b7cb8aaf87bba4da42332ff81d4e67863f86478b2412f"
    "ca"
  end
  language "cs" do
    sha256 "c2be2e346206cae511701eb5e63b27f6d5de6e950d909414a7993486e20e9129"
    "cs"
  end
  language "de" do
    sha256 "1d417a571997c86aa6401f732d03d6195b3adec0dfcce82298261637d55cc004"
    "de"
  end
  language "en-CA" do
    sha256 "f13214b307a7e47a9fd057446780e1ed32600f64439457fcd5ed2173660ea385"
    "en-CA"
  end
  language "en-GB" do
    sha256 "28c37183ccd7e536b84aa3b5fa56ec874ffea1545b444cbba9c62d4548024d91"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b47f6c1bee157d6ab64fdaac04e8094e7c20ef5426135e9742237d08289c3d8c"
    "en-US"
  end
  language "es" do
    sha256 "0d4820b5b2ad49c87a48db1f3e193bf30d2466923046b7c3197a7c45d8006af1"
    "es-ES"
  end
  language "fr" do
    sha256 "73664b552c8307c6cea97cbccb56f251bb0e6390dadc39838241f9e0ccae51e2"
    "fr"
  end
  language "it" do
    sha256 "d5aa904c9aee9d9023d4f6dd78b372847df96f73b1abbba772dd4d659eb3d457"
    "it"
  end
  language "ja" do
    sha256 "17f4b9912ca7e005961adcd2cc4315616bbc1eec4df9860613004678031e3852"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "3f5c4fae602b4a679fc3496b82eb40c9c5cb850cc00199f94227e364a51b950b"
    "ko"
  end
  language "nl" do
    sha256 "581a3e51dbb8418b99711a10e2af4921cd3c2456b28902999ed386d26c48611c"
    "nl"
  end
  language "pt-BR" do
    sha256 "31364dfd3efb72cd839cba166de51bd62bad5cb118105955b2f1c9aadcfbfc0d"
    "pt-BR"
  end
  language "ru" do
    sha256 "8ab6ce47efb123ae36eb02fcfdecc0f5642976ed588813b98761a5c1604a457e"
    "ru"
  end
  language "uk" do
    sha256 "5b228f50649f7d59c99ee00946a1300ca9269bd19b4e388af0107d3e2d9f1f01"
    "uk"
  end
  language "zh-TW" do
    sha256 "24fe7fc20a4e8b8b9155d7134ddad36d7c35f6cb990015945e2d79e3aa8eebc8"
    "zh-TW"
  end
  language "zh" do
    sha256 "1e2436ed859911b994308cb1c3cf52abe9dc1bed6398c39fc45595a4cb7a5174"
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
