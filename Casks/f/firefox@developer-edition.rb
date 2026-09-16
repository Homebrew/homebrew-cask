cask "firefox@developer-edition" do
  version "157.0b2"

  language "ca" do
    sha256 "2c3e94c586afd5300412290bc1e4a490d61299197873e10698080bee04e6fab9"
    "ca"
  end
  language "cs" do
    sha256 "bcdba39b0375e5924c77e3f11b3957996432c42dee5f33603936534a5d6ff886"
    "cs"
  end
  language "de" do
    sha256 "be65d2c1db260f3490693eb55534466f56e5a5dc0e73df71322b0ab72d98fdbc"
    "de"
  end
  language "en-CA" do
    sha256 "beace3c3388220ebd037af9c77882382f928c5786213e53a0b0bf1f2f7d4f7b1"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f10684ea0e9d7716b2b645823f962cda90f8025c5ba31161ed28cf16716c8ac7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e52351280937816a8cd16caee291982847227023ee0176c4ed25a4612e4441b7"
    "en-US"
  end
  language "es" do
    sha256 "d4fb8f8013deff04d8230c8b94438df74606ee6ab84ad75e3883e02f6f4e5ae5"
    "es-ES"
  end
  language "fr" do
    sha256 "16078bfc9163760cf8079ed30c088164bccb9d0a96b0fc964138e0c2a1b8f706"
    "fr"
  end
  language "it" do
    sha256 "4436b4ea95a321b02da08c8151892b3494e6b2df6e8929acedd6f3b4d35fe27b"
    "it"
  end
  language "ja" do
    sha256 "ef8f445c3b56e251f5b2911ab438898f19739481314978818148772974b6395b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b1925ec1b933c1a669c6378047f52fd6e23dad3259f08215d8acabb02f1b5f62"
    "ko"
  end
  language "nl" do
    sha256 "268e10d21b5ea098f569afcef02e16444090b7f4ae93043134ce70feb0910ea1"
    "nl"
  end
  language "pt-BR" do
    sha256 "e38df3b099931d6fc29c8764956da9d3817c54dd00356f4aea87d8e69ab6520d"
    "pt-BR"
  end
  language "ru" do
    sha256 "ddaccd02e0a5432b8934d5123e007eede44e233c8f380de0dd4848459db769ff"
    "ru"
  end
  language "uk" do
    sha256 "c15be6843bedf66a6119dec03f91f28560eb58a135ea4132b0c2b8b6e4256383"
    "uk"
  end
  language "zh-TW" do
    sha256 "a435eab2988f771d7a5114be2562286f20d71a6f3e125d4340a0a9316a27b604"
    "zh-TW"
  end
  language "zh" do
    sha256 "0a3d61d4a847335d8b0d9375c857cca2c744b492329e91f3a3706f24bc501206"
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
