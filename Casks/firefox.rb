cask "firefox" do
  version "82.0.3"

  language "cs" do
    sha256 "6037050efb9a57414d76b7616f5aabfe1ccbc7f7a97c2ca099c308239576bb2b"
    "cs"
  end
  language "de" do
    sha256 "abe0f990e16e131fa3f712e035162074f4299f940767c6c9458bde7846a3d08f"
    "de"
  end
  language "en-CA" do
    sha256 "e60dc54bde7d4c8a43bae8c9ee56eb9e497aea8e3adc5f3623e009407e7446d1"
    "en-CA"
  end
  language "en-GB" do
    sha256 "cafa14c8cf50bd91faebbc096625fb5b8c2be752046e389a002a175e13ccbbd5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c1f74e535db7009e296af03d376a18e54d92c4ad55e9170efd491c2faf595983"
    "en-US"
  end
  language "eo" do
    sha256 "dd984751c82dfebb3ab2ad66fe65632a18dfd5d8adbdc404f9ef286df6c41b3b"
    "eo"
  end
  language "es-AR" do
    sha256 "6f6e6f14ee264a6fef1e49d05baa33d4f1daaee2a0c55ff2929f91c97788e9e4"
    "es-AR"
  end
  language "es-CL" do
    sha256 "a823cfca81cd5aa8b1189e9c40cc47360f960812bb0e066fc66f4c218b76b006"
    "es-CL"
  end
  language "es-ES" do
    sha256 "0cb9dd83accf621cffb18762c52b4d41ffa915a913062f8167932c1ae2a0569d"
    "es-ES"
  end
  language "fi" do
    sha256 "d443a27d0b057b982c85fb9b63d4864198186b01879828f1864e33192705a018"
    "fi"
  end
  language "fr" do
    sha256 "9462a25a9c1d042599c74f1748e3b6f4166e2cd8441aaff9b4deec20234885f9"
    "fr"
  end
  language "gl" do
    sha256 "e8b214630eaad537ab37eba9843af5b674bdc85269aaff4cb2531e60d934b497"
    "gl"
  end
  language "in" do
    sha256 "f2d70830463ad5b9eb5ce36fc15b86bdc0afe8aa1fe89ca5c0dead638592ae1f"
    "hi-IN"
  end
  language "it" do
    sha256 "4d77c850164d663f670d4cc88f3c562ffe6097c7dbc350b1b1b126e079c35ea7"
    "it"
  end
  language "ja" do
    sha256 "0922c1a8a0b626333ae833ea9f892aeaa68aeafb544229e5b56dbebb59b8ef2c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a473201e899856964a8191fa398ce8c9e6054d6b1ece9e9c19fb8b57696ab7fa"
    "ko"
  end
  language "nl" do
    sha256 "2ab4f134b9f1ed07cd61ff6f8bcdfc43c8aa5ed343c452ab9fee17c069eeaa5f"
    "nl"
  end
  language "pl" do
    sha256 "d606163da7b1112fed9707ba305c5a10de857ecd39abb73f55643c46c9f97c1b"
    "pl"
  end
  language "pt-BR" do
    sha256 "8566c981870cab0c349f7a4a69814d49429d28f1211864fdbde163c70cd0d3b8"
    "pt-BR"
  end
  language "pt" do
    sha256 "09514c16a17538bbde41b0fa76b5455021a498c719400d3123a0f8f0927700c8"
    "pt-PT"
  end
  language "ru" do
    sha256 "f00b14b0dba9747f956206d484afe3c41edac021d9be660a5080422cdb247bc5"
    "ru"
  end
  language "sv" do
    sha256 "9ef8ee19d6426b7a7893cd4a83dec2d72c46fb99b8ad392696f66981d46cb546"
    "sv-SE"
  end
  language "tr" do
    sha256 "ddf0865b156cc0220cfa8a103d31654d852801d7c41509b3f5bbb96192d7882d"
    "tr"
  end
  language "uk" do
    sha256 "fdb991505a6a3cb46bb64e020404e816f614e7fe7dff3681d332ecabb7be3618"
    "uk"
  end
  language "zh-TW" do
    sha256 "a881597aebbf2ce833491ce9ef9053a5114a7ef9793312326936fd70aaa8d33f"
    "zh-TW"
  end
  language "zh" do
    sha256 "6d53142b21b6ae06659c53c59d14db706b8f23d5415e6b7a92be25ba8d7099b6"
    "zh-CN"
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases/ was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.mozilla.org/%3Fproduct=firefox-latest-ssl%26os=osx"
  name "Mozilla Firefox"
  desc "Cross-platform web browser"
  homepage "https://www.mozilla.org/firefox/"

  auto_updates true
  conflicts_with cask: [
    "firefox-beta",
    "firefox-esr",
  ]
  depends_on macos: ">= :sierra"

  app "Firefox.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/firefox_*",
    "~/Library/Application Support/Firefox",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
    "~/Library/Application Support/CrashReporter/firefox_*",
    "~/Library/Caches/Firefox",
    "~/Library/Caches/Mozilla/updates/Applications/Firefox",
    "~/Library/Caches/org.mozilla.firefox",
    "~/Library/Preferences/org.mozilla.firefox.plist",
    "~/Library/Saved Application State/org.mozilla.firefox.savedState",
    "~/Library/WebKit/org.mozilla.firefox",
  ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla/updates/Applications",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla",
      ]
end
