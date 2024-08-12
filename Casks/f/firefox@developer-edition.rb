cask "firefox@developer-edition" do
  version "130.0b4"

  language "ca" do
    sha256 "15b592e61be99d53a63ebd8aab762862fbe95f33fdda157fadcc1f3e4bd5cf30"
    "ca"
  end
  language "cs" do
    sha256 "33fcc85143e9a17fad4beac9e740b91c14bb2ff4dfacd4c40a545a94355210a0"
    "cs"
  end
  language "de" do
    sha256 "35e85d6cbfc3593073897b98f310224f89d1f0d972a5fda0db35095a75006124"
    "de"
  end
  language "en-CA" do
    sha256 "a506a8eb0bfbb769b809300335cad19d89d5bb4cddef7bc2da6c0b30f5923224"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f76cf0f8c2964b8a8bbd1fa6383b3cf6ee20c582bf7da7a41ec4fd35f922b1a1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c7c29e57ed64300f17d734b1684f3623bbcea71e9717164bcdb57e3c6e789d6e"
    "en-US"
  end
  language "es" do
    sha256 "dc40ebb2a11edb10963e4d72c5e9a8fe3ba1e6e591c4396d287b9ff28acba8d5"
    "es-ES"
  end
  language "fr" do
    sha256 "9fed654c1ab48b08607c37f37d95685b4fda578e6d4b242edecd94ce9b872d76"
    "fr"
  end
  language "it" do
    sha256 "cebfc977b69d2a79476332c457e7fe66b25b97a56d627b445adc2c02cedb02e9"
    "it"
  end
  language "nl" do
    sha256 "bf6aff6b6fd2adc2a768ff24bf9f8e857f760a70c762b4d528a12839821d5649"
    "nl"
  end
  language "ja" do
    sha256 "4dfb47b1d8cc62a8ef020cf3d95a37ff6935e0ac7850493d8ff9ee69ed505a3b"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "61ccd69661788a0d5855f370fc309e84c72aaadcbfe422c498b14066def95dfb"
    "pt-BR"
  end
  language "ko" do
    sha256 "e97acc5156f59870cd03dd1fe4d0199a4420584e9ead0eb11c8a133062a7b27d"
    "ko"
  end
  language "ru" do
    sha256 "61545e5bf71b02d6df70bc24cca725523347c0a602fc02e0edd1072cdc96e74c"
    "ru"
  end
  language "uk" do
    sha256 "80e4e3b6d5d6adc3b12ca998a7fc72cb08d6797d059cce4e6c678e9802e654f6"
    "uk"
  end
  language "zh-TW" do
    sha256 "a6800c25c47747dda97ddee70ca31d835bdd64d6b5aa6cfe70f74a307eff0fc6"
    "zh-TW"
  end
  language "zh" do
    sha256 "25870fb07ad8bfa04276f707e7825059aab7b2ad6c724253bd7b3dc4bc0a767e"
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
