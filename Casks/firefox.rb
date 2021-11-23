cask "firefox" do
  version "94.0.2"

  language "cs" do
    sha256 "923581c75b27f72673f05f03864a48197418bf62f0300b60589487d3b463eea4"
    "cs"
  end
  language "de" do
    sha256 "0c5c8fd139824663b89bfdd5d85d8c0785d589eecc5356a931728b54a276ccf2"
    "de"
  end
  language "en-CA" do
    sha256 "d26e445830ab6c6dfa93fb9fa42561225b11514608af22cef90beb9c6e0b6e86"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ee73eadd5b822b1aa117523b2ef01c0e51447a3bbda6ae52528bde1c8f0f71ca"
    "en-GB"
  end
  language "en", default: true do
    sha256 "51de64f078f31e064e1b70f129571b50b5f11e1ea91d7eb29b390792a3ab1959"
    "en-US"
  end
  language "eo" do
    sha256 "8f99d1bc4cf7a792757ff071c0bc42d204f82723e2d22680c883f630fbae8d97"
    "eo"
  end
  language "es-AR" do
    sha256 "f59c6385e27e29007e2155ff7caba9bf9535e46d16e5544271722f245e8f5f91"
    "es-AR"
  end
  language "es-CL" do
    sha256 "e5b1ffa0a0631516d1b6086912ac9f5e2880180b77bb93258d127b7b55179bd2"
    "es-CL"
  end
  language "es-ES" do
    sha256 "1960f863f57f588648244818606bb0fea8f6047ddc968662ab18ab98fe6f2f26"
    "es-ES"
  end
  language "fi" do
    sha256 "dd3026ece5dbd1229e1f7b6479d7940dcf63d48e454f71ebd841689cf4531e91"
    "fi"
  end
  language "fr" do
    sha256 "3085bb4bd30012fac35629d234fdb4a7538bcff98207420028d2eada3db64cc1"
    "fr"
  end
  language "gl" do
    sha256 "47aa1aeaaf16d28897f870ba38c00b2da92a2f009518588f24c4049c49354d1e"
    "gl"
  end
  language "in" do
    sha256 "ddb17a090c2ee30b3703cd2c7dd16b509c0fa92509e43abe8472b211de628836"
    "hi-IN"
  end
  language "it" do
    sha256 "65ed47ae382d2e4b75688c3a1028a122962a70f5a00b4ff3666477f285b932b0"
    "it"
  end
  language "ja" do
    sha256 "f7ace9053149260e0fe69d26fbf9867672a92fad1b43d92fbee19b60baf07259"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "3932fde08563bddacfe544a2a7de61ed159e861adce53823d41623aabfa25aae"
    "ko"
  end
  language "nl" do
    sha256 "31cb07923ecdba9bcc5cb5b5d6e1ef6582a349f4e777e20403d49ba687990d2f"
    "nl"
  end
  language "pl" do
    sha256 "33fe7212b9efaf1d7d1dc6b5add60458199f13fd475828b8a6e1714c54463978"
    "pl"
  end
  language "pt-BR" do
    sha256 "4a0b97eaad5e36ba2af6619db36da0436f13b38fb240c5e48fb74f598eed4f0d"
    "pt-BR"
  end
  language "pt" do
    sha256 "1e46d3dbb9fa5a541dc64a1628e7e85ff82225cdda5c7db0108d8a6d3a751d38"
    "pt-PT"
  end
  language "ru" do
    sha256 "3aceb71e7cc91364c61f75806a9f20fa1e0e27429a9a3a0c8394b7a89c1e8ec4"
    "ru"
  end
  language "sv" do
    sha256 "7b6afd56b0ccfb892779ec70a62c0c6eac96cad3a66d7ec7b28ded8e38d79db1"
    "sv-SE"
  end
  language "tr" do
    sha256 "67bcf02cf8e5bfc26960bceba69d914cf8870d42c60856a0634206f3ccdbe1fa"
    "tr"
  end
  language "uk" do
    sha256 "88003c901f5a3824b81691d1d6b82962142a849c10fb0f6fc0dd46ff584c15cb"
    "uk"
  end
  language "zh-TW" do
    sha256 "1905faa02fb1cd40243df66f161265ddb489997822f428c8c8f112aced855d62"
    "zh-TW"
  end
  language "zh" do
    sha256 "da6c4a21c6da104459ee640c939610dac4ea6b09060c0e37eed5ae00a0ac39ed"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
  name "Mozilla Firefox"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/"

  livecheck do
    url "https://download.mozilla.org/?product=firefox-latest-ssl&os=osx"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: [
    "homebrew/cask-versions/firefox-beta",
    "homebrew/cask-versions/firefox-esr",
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
    "~/Library/Caches/org.mozilla.crashreporter",
    "~/Library/Preferences/org.mozilla.firefox.plist",
    "~/Library/Preferences/org.mozilla.crashreporter.plist",
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
