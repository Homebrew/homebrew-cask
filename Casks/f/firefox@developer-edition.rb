cask "firefox@developer-edition" do
  version "147.0b5"

  language "ca" do
    sha256 "e40c7dcdc03c9039bf0375b63425dc223d9aa7d93a614a54ae1456df5eeedd70"
    "ca"
  end
  language "cs" do
    sha256 "8c0657ec70d0412c9afc00f13d567d3933e4bebd69f451334b7b7146a1dbcb13"
    "cs"
  end
  language "de" do
    sha256 "8f38262563018dff93c8cebbea023f6779ad75bc796aae2795a51ca5d84e9434"
    "de"
  end
  language "en-CA" do
    sha256 "04c6f13031dab6a8887149ee4902afac823236f2da1c08af8c4c137344125880"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4e80b1862faf5ac26e2e8a516fb48d0bea80f997ed6ec4c27fb11db45ae96de9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9ea1e4ddaa40500015580f35b0d2dda3bd8e4c726caf25380d087af1639f5112"
    "en-US"
  end
  language "es" do
    sha256 "8d90e1bfd55b42c1c1c69e0eb906fd27184ecafd7defdba86e571584a67aa90a"
    "es-ES"
  end
  language "fr" do
    sha256 "b240457ba377add4dd2eebc4e514ee2c95a9dfe598d4403e520aed9a90e141d8"
    "fr"
  end
  language "it" do
    sha256 "e80750820e059fb9f4bddd66c40133fe10b5dfb346b2d274f2db2465bee88ea4"
    "it"
  end
  language "ja" do
    sha256 "05940e47d8a92db891827bc144e9b03e3837217ee7cb79742bc3f15908379d09"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "286b99ffcae1054dbbb70b272c3fe2a2560ae127333eb37f14bd4b6f20ae26d3"
    "ko"
  end
  language "nl" do
    sha256 "0d1e5f029c063dc1d5b4551f12cf2fd6d62cd4a60e9e3a282160718416410ae7"
    "nl"
  end
  language "pt-BR" do
    sha256 "948e155c1d8edd78c9de903c0d8b5b589e73a70f1974c015d2fd2ffe37566b6c"
    "pt-BR"
  end
  language "ru" do
    sha256 "3f87e0643fbe7d0cf50fa57a62a4c1b1c324fe4c76c62fff542efdf6fe2a3c31"
    "ru"
  end
  language "uk" do
    sha256 "ca7acffd359653bbd2d7032cf7760ee6f62c206ff8bc587450ba844fb8fb2743"
    "uk"
  end
  language "zh-TW" do
    sha256 "d349dd91942da3b1e14068d60885f1a3b1e36ed1ebfe8ce5e41d7e1824297ec9"
    "zh-TW"
  end
  language "zh" do
    sha256 "2513cc57a88f259d35068e42da2979c163be9d6ecb6e91a88a75ecd8c3cb694b"
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
