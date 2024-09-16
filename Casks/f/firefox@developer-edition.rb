cask "firefox@developer-edition" do
  version "131.0b7"

  language "ca" do
    sha256 "96990f1545d508d482379af838452147153689c4a2906a53274fd1ea10e9028a"
    "ca"
  end
  language "cs" do
    sha256 "bd997021f7a9804dd7bb493d8a0593936022392e917f346cfd27f4990176b53d"
    "cs"
  end
  language "de" do
    sha256 "539dd5249216b6c6e6aa421156208291d881d1534b7018427ec482a5194d4137"
    "de"
  end
  language "en-CA" do
    sha256 "5039f0fff26a248975f84a56dbe09ef595a6c38cd9d496687aee9199bbfd5019"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3c0714ec288e2880f45c08dc28d419f40a915bf3dc19bccd1ea6501d98e2d2d8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9b2306027c0e2297fb6cca3e4536d8686cda96d43a3d256547ecf7f5b1c8ade3"
    "en-US"
  end
  language "es" do
    sha256 "5ad7e1564e1acbdabc807d47bf9971130096318a25a1734590ad042a91c1e4a2"
    "es-ES"
  end
  language "fr" do
    sha256 "61a9b6ec01bafc69ae5787ae6b454acade3f68fc7559fb7e288167e65c375782"
    "fr"
  end
  language "it" do
    sha256 "77a5a717b8c735345c43ea6cdaed77baed43398cea3ed035623a092cfc060f3d"
    "it"
  end
  language "nl" do
    sha256 "eb6eef3123237fe0ab08486e043b1cca6a0c1f88891092481a65149195ce9e2c"
    "nl"
  end
  language "ja" do
    sha256 "42a77d1d7e43809ab1d1e973f5de546440639de266729d5ed0da92f4203df5e6"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "259b617e9487bcfb2643f8f12badcf84cbb63d8a4d4c3ad35a04932062f14f01"
    "pt-BR"
  end
  language "ko" do
    sha256 "89a62e24879b069f57c955f62ee724b898ea6eb9f8c38e4f5e35afc720f132b2"
    "ko"
  end
  language "ru" do
    sha256 "a80ab8ccda77af4610dc5e8e4f82dd0b0137e362710595596b3c505e53d92a5b"
    "ru"
  end
  language "uk" do
    sha256 "c8cd7e5b1bea1e83f9c67a551d9fe4aa323d2e4e265a86fde7653cca43821bc1"
    "uk"
  end
  language "zh-TW" do
    sha256 "bed0d289b75ff22c0e2c696eeaac09fc66d2cc8c6f1ac878b723f75eb161bc94"
    "zh-TW"
  end
  language "zh" do
    sha256 "e3f11b8d8d33a045287032365694ff0892142cbdadcc4649f98967c9f76565bb"
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
