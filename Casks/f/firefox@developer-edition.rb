cask "firefox@developer-edition" do
  version "157.0b1"

  language "ca" do
    sha256 "e3004329872d88d49196785b5f2db15bbb0ecd4029ba8cff837e06cb062fe456"
    "ca"
  end
  language "cs" do
    sha256 "a7845459a999b32f375dbba2b043424a03ea29148f5c0bbb80d7099166a6d6cb"
    "cs"
  end
  language "de" do
    sha256 "29d462ad5e9a54b7432797ee26937c1caec15ba600aae68f8724254a440bab5b"
    "de"
  end
  language "en-CA" do
    sha256 "fddcc46252cf8239570f2e72e6c3f41b0e489f76ce7f7be67b034a14fc1deaf8"
    "en-CA"
  end
  language "en-GB" do
    sha256 "22506f603028cbf1e88f8d3c68d564383c2911a9c715e735489062259c40618e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "318c248c42262e5d675a2d5b6a6ebfb2f502d0c6c5a4b768d6599a2f8020c5b2"
    "en-US"
  end
  language "es" do
    sha256 "10af1de2c8daa7522b036b4caf887d445c8cb416e39033bf4110383236063be5"
    "es-ES"
  end
  language "fr" do
    sha256 "f86b24efc725e61ddd2ae0f5330c48d37df700c25832aa0755edad9d9c34c6b0"
    "fr"
  end
  language "it" do
    sha256 "9383400555cd972c20856fa097b4c09b985ad96e3a5a3eb537c4117bdc45cbda"
    "it"
  end
  language "ja" do
    sha256 "45a05a23c31afc90632327e13cc87fa94843e00eb45556d3b393804da1b09c6a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "937400e659a66a465684d88639353c803d2ba8875b22c26888450e91e382ed86"
    "ko"
  end
  language "nl" do
    sha256 "58ffdede058f98c3d97811b6eb700637925dbf61a9f499fc90d8da8d127c6d6f"
    "nl"
  end
  language "pt-BR" do
    sha256 "9272d40babd3112fcf8463beba349019bef4146e85aedea1093aad30fdcdb09b"
    "pt-BR"
  end
  language "ru" do
    sha256 "4a6cfcc6dd6c37ba44606a0ab0f0ed44c2c5f2c8f39e60f9d04c4acc907c77f7"
    "ru"
  end
  language "uk" do
    sha256 "36af0db89b4a4a561f26ab293180bb20f0220f6ca843dc6853c8caad067fd077"
    "uk"
  end
  language "zh-TW" do
    sha256 "b5aae7fda231f8b7571507da92f448f49e927a94423c4c1ee43427a4ba93dca9"
    "zh-TW"
  end
  language "zh" do
    sha256 "25fdc65aac786ed9ba72d11a20b0a2bba7106ee55b94ae292563071bdb0cb670"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
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
        "~/Library/Preferences/org.mozilla.firefoxdeveloperedition.plist",
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
