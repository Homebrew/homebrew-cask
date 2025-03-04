cask "firefox@developer-edition" do
  version "137.0b1"

  language "ca" do
    sha256 "ee1d61f6c1cc048b127260662dc7016b4f0bfdd0b5982f19c90593bd830ef2d0"
    "ca"
  end
  language "cs" do
    sha256 "c68985af445bda3068c470306e63914bee4653bc2a89d4264880561bcd0fb425"
    "cs"
  end
  language "de" do
    sha256 "79b6f5f4823ad047215dab05c18d71be136711812135dd9fad744e5c2674c87a"
    "de"
  end
  language "en-CA" do
    sha256 "cf2775021a0ae2a159a92916f272bf15e7a347f48aabe87b9aef8d303144cdfd"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7dbd211b6ce3f1c8a33dd1fefd04108fdc413313aad0d9ae220d589847f869d9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6059958ab3e9adc691ea239bf1694c7b03cda85476310e70df986202246440ca"
    "en-US"
  end
  language "es" do
    sha256 "d06c26af605a4c4c1aaa353c82caf8dfc3bcd3215b6bb03a3f19ed43211af4e0"
    "es-ES"
  end
  language "fr" do
    sha256 "896b7fedbb11f15f10fa2e04bee456c16b7b1845d274da2a61b3abc0e792852f"
    "fr"
  end
  language "it" do
    sha256 "daa4f9c9a237d2d26de2c54953b9c16827ece6026dc38909523dee2b79ca9f72"
    "it"
  end
  language "nl" do
    sha256 "63705e38f5708ee1604952ddc1396adf1a2dcd4a091aaffc2c5901bed79936ec"
    "nl"
  end
  language "ja" do
    sha256 "133136e1a7f9341b5e8ed027fff30ec956b66118edeea7086c63d3afcab4bbfe"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "9a0b24578bc4df0fd6f27beafe1835935e9c20a0b0262f143eb225dfe9d3a890"
    "pt-BR"
  end
  language "ko" do
    sha256 "ba6ceac72149d9ba9a05afbf1c662b06cb8afbb74a371228be70fe6ca3291884"
    "ko"
  end
  language "ru" do
    sha256 "d7d91344b1483e0a27d4364ca57fb0f7441dbdf7331e79822ea61c82c0abff24"
    "ru"
  end
  language "uk" do
    sha256 "fbf07a8ad60d4b38c827a8623ff75c259d805f2bc4c67678cbebda0fb7fa4a99"
    "uk"
  end
  language "zh-TW" do
    sha256 "706b43f0db5319ffa8abae9149b6be1b3637e3b790218457f9d45923ea7d84c3"
    "zh-TW"
  end
  language "zh" do
    sha256 "60ad3599c0198322f411c6f4c705eb314adabda2a57fa742198d7047a2ce79c0"
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
