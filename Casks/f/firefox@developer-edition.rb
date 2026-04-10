cask "firefox@developer-edition" do
  version "150.0b8"

  language "ca" do
    sha256 "07875bde8e28745d59c494a29f7aafa5dbbf6862a6b06e6a906d0217e963bf86"
    "ca"
  end
  language "cs" do
    sha256 "9d038e0fc92bb43cfa5ccecfec0f918249efb1ad0a627fa16202e0771a80808c"
    "cs"
  end
  language "de" do
    sha256 "60a4e3f753f82ebaec02970172dbe22d35853a30d3d462000945948948844f94"
    "de"
  end
  language "en-CA" do
    sha256 "32646c55c77e790ace4c7513c7090a806ce9cbd4241d818416168d223cd422a0"
    "en-CA"
  end
  language "en-GB" do
    sha256 "77ee9049d79b2bf1f2c55df00f80376519e182974835919052528e90c35d88e8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "428c5df239b8f8f8308c379259f7075ce4d5c509d603343837c4749b9fb29cfb"
    "en-US"
  end
  language "es" do
    sha256 "52c1d40faadcc8cef1e89547bf57948934709a3805e7c9c0bee898a1a52b5fd4"
    "es-ES"
  end
  language "fr" do
    sha256 "dc6610b7cbaf58c884f5eb3dcb5883a93964535dd50d0da3e69221de7d7d1676"
    "fr"
  end
  language "it" do
    sha256 "c31854cdad4ab6165d32627fa9f5fdde15c084a982b29bfac7d2ae7d0ac32324"
    "it"
  end
  language "ja" do
    sha256 "4e57fc8499c94d5d2ad4709b306088fa2e372c07fb343e5319d3c3996e0db2b1"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f36801d2de6dae2273ee367b071c6b19131a190a35f566b7ef824e8935f2fe63"
    "ko"
  end
  language "nl" do
    sha256 "e9e90f725de4bfd5abb2a4e5c31dec151b44f70dfcaaa893fabf72155f8dd44b"
    "nl"
  end
  language "pt-BR" do
    sha256 "0aef00ed7a34bdcbdff60df0b85a0af94a823485d760512802ac9dee8f239ee4"
    "pt-BR"
  end
  language "ru" do
    sha256 "07f3c424a72c9f490a73deb3337d9aef367795baf005c3173004b9b405992777"
    "ru"
  end
  language "uk" do
    sha256 "9d418b023817025469a490982721be5dbc908373a3859e75faaa0db1184bcf91"
    "uk"
  end
  language "zh-TW" do
    sha256 "53fbfc2dfa80a34e9f0df23fed71eb714df107d8ecd069bdbe3f84d8fedfb681"
    "zh-TW"
  end
  language "zh" do
    sha256 "c841f316effc5997b47e80ca33a1783c0140666ecbef2da7ab46e9e1ba539a16"
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
