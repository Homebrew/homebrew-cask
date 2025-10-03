cask "firefox@developer-edition" do
  version "144.0b9"

  language "ca" do
    sha256 "ccefa064d9cccd87875df582f3c1896f4ac0583ccd4547e713404c3f3e9544d7"
    "ca"
  end
  language "cs" do
    sha256 "c5abeeb41d3cbc9d48a572b9bded93d925da71e24d6f7ea91037b99d03d40710"
    "cs"
  end
  language "de" do
    sha256 "dd1a050b64650d98aa4dd3d1a9a14aa2e88e90d4d62f8720b7eaf9d719005c67"
    "de"
  end
  language "en-CA" do
    sha256 "ae56d125e4a9120ca27cbf5a6f4ca4485910bf958c2f4e7cbd09a5bf16cef893"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f0bb8d636b24f66d5885d529184df1fde344d07566b002a815da2102e114baa1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "627f25437ce68994b0e312f1c185c998ce86673df24eb5bcaadc5510cc05cf59"
    "en-US"
  end
  language "es" do
    sha256 "350d707f52dc693805691c2c1547dee718e8a7481147ed7c947401193295c726"
    "es-ES"
  end
  language "fr" do
    sha256 "2c72d1df68bf5e2ed7306334a3aa707cad8a364c403b34fc6b6dcd1097f5ff79"
    "fr"
  end
  language "it" do
    sha256 "52b156b57611ed2abc398e9084bb4b17f70161bbdab3f6ead5c973537a2a0ca1"
    "it"
  end
  language "ja" do
    sha256 "a65f690fd4511a3e3964cec742451497caa01f1823377826955ff9719cdea25a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4fb2f1f7b08ab22f0a2aac3d8dd9b8bcecc52d5580951104aa4a758fc1e76de5"
    "ko"
  end
  language "nl" do
    sha256 "2f63de47c0c1ba072477ccaa068d7d2e101bf332af7878375cabb9c908ae91bf"
    "nl"
  end
  language "pt-BR" do
    sha256 "5e2853456ec6ce7bfcd8e1ecf55fbb44cd8c60b850c85324831cc8019349db6e"
    "pt-BR"
  end
  language "ru" do
    sha256 "d05c72c2d72cd105d6e9e8f165418fafa6465a80acd77e054afb72bac89a46d3"
    "ru"
  end
  language "uk" do
    sha256 "c0040f7fb83c0f182ee1467e99b026ca9e802bfffaffe83f06df34a10f60276a"
    "uk"
  end
  language "zh-TW" do
    sha256 "c315a61734209ac1f0c2f9880c8043086d088b33f3b17e49cebde6c6bcb2120e"
    "zh-TW"
  end
  language "zh" do
    sha256 "0a6a8875fd7c30e2e057f89d3ab4e1321daa6033c1c0a21f2ee452069811c22d"
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
