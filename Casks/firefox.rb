cask "firefox" do
  version "80.0"

  language "cs" do
    sha256 "1af2bde317094745ecfce6a64c97fdc0f759b9865c3a4d7877cbdcb9f5ed5ecb"
    "cs"
  end
  language "de" do
    sha256 "e918bdacd46876df45dd55c8922c1f4094e68dd96b14ef5c22394389ee6e3aea"
    "de"
  end
  language "en-GB" do
    sha256 "f69400577d917e31f67b5c2fc2f89789b704ad59657ac566057a712ff4789dea"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c5234f44f7b4102debdbd0a5af56e9414d0f6d99a38eb1cbd99b43f186b28a85"
    "en-US"
  end
  language "eo" do
    sha256 "a448b0cff203b48c9af93dc0f205cf4add33a7f15b779171e5c91bc29616182f"
    "eo"
  end
  language "es-AR" do
    sha256 "3e38f54e289976361153be0a9a062f54019290032c7cc73b5954256d7c3a32d5"
    "es-AR"
  end
  language "es-CL" do
    sha256 "d989adb4af63b2a5b618e61a1900d60e7d9efe3ce6e32fed6c33c9f30fd244aa"
    "es-CL"
  end
  language "es-ES" do
    sha256 "75a77af023e89a7746ec416fb4dfdee9cc22f6ef53630b81d0fa67163d584f0e"
    "es-ES"
  end
  language "fi" do
    sha256 "31d4edf5daab644e110ca233ae9dc676dec49a8403d8d8a83c0190367b621d4a"
    "fi"
  end
  language "fr" do
    sha256 "65c60b669b3c52b13923fbf46728b03f8054653c092351dc454a08a510935096"
    "fr"
  end
  language "gl" do
    sha256 "693f05d40ed82f9b7c9a4dade75b016f324922554ae4cad738f6cd0000293002"
    "gl"
  end
  language "in" do
    sha256 "e9bd0e41a5c8e09e6e7b5f995de131fcd31a96bae263d2ee21796996f7fd1357"
    "hi-IN"
  end
  language "it" do
    sha256 "164754042e74558e0d493e9d2a0a6357561cb96ffd3b882373dc67ffefada506"
    "it"
  end
  language "ja" do
    sha256 "c7939a4bffbe94a37de17ab825d9af33fd966796e6301fe61b166ee6b1f974a3"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "1a876fbc113169dbfffdcf58bc3b51130ab21e157043849ae8b7e811ce5e02c5"
    "ko"
  end
  language "nl" do
    sha256 "50f4aab969c7baf009833c12c480ff339d10e5359cb1e14f3f83c90218d69161"
    "nl"
  end
  language "pl" do
    sha256 "29d2fd3a4743563cbdb14893b49403b9a6d2ad1b8493f5e6ebba46580ef5e568"
    "pl"
  end
  language "pt-BR" do
    sha256 "b179b338b31cf7586119248512fad52ade1f8d797680d46bd2d8baaa44e133a8"
    "pt-BR"
  end
  language "pt" do
    sha256 "acadb2ead6025da8452b7062a13bc9be2e186420e136b251b21846131a1be7bd"
    "pt-PT"
  end
  language "ru" do
    sha256 "e3891eed24d635c09dd7b94d061b4a4422044b196477b4f2e3f7253f327ae34e"
    "ru"
  end
  language "tr" do
    sha256 "6acee0bced94e2d2e82db4ecc9ffd656ccaa02bbe5f657632738af28f095133b"
    "tr"
  end
  language "uk" do
    sha256 "872f47e2c72bab521588522a6b0e2c38f86c598fe30f7a96d8df481a4bb80887"
    "uk"
  end
  language "zh-TW" do
    sha256 "1a624c288bf599db45ad87c573adab1737c84ccc38b64a5f050bd76ffdb6c0ab"
    "zh-TW"
  end
  language "zh" do
    sha256 "d727b3bf29ec21708ba126622c17baa7e4683026514445a902ee93209c7484ec"
    "zh-CN"
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases/ was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.mozilla.org/%3Fproduct=firefox-latest-ssl%26os=osx"
  name "Mozilla Firefox"
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
    "~/Library/Caches/Firefox",
    "~/Library/Caches/Mozilla/updates/Applications/Firefox",
    "~/Library/Preferences/org.mozilla.firefox.plist",
  ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla/updates/Applications",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla",
      ]
end
