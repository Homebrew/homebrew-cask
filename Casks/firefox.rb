cask "firefox" do
  version "81.0.2"

  language "cs" do
    sha256 "71041e3afacd6147643ddca633acdb73eae50681a12eea2d6d9ad6a0888fe2e3"
    "cs"
  end
  language "de" do
    sha256 "56bfcd3105fcb0d13d6dcb74f13e54b27a152ad6c4b13880b1d7f86a7b249027"
    "de"
  end
  language "en-GB" do
    sha256 "d924cc880139b3facf486784cda39aa9f1c273566eb368d669a4af6181484385"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ba142965be66b9e583d1daa4e45faefb3c3caa346c878679a6e28f30b3d51fce"
    "en-US"
  end
  language "eo" do
    sha256 "c09d52fcef3f3e4d4f247421271e4254979d2f8bf443cb38c6bea7b0eb5ebd3c"
    "eo"
  end
  language "es-AR" do
    sha256 "c3a136222496853d268f3a5194c682d8d34eb8f5639290b60f1467d94c5b06b3"
    "es-AR"
  end
  language "es-CL" do
    sha256 "f87be984075bc45ecb7f664b4eea201b291c567e758eae5c1f13f765d0929e21"
    "es-CL"
  end
  language "es-ES" do
    sha256 "366a7a7cf95f7fbdda235a5ab2f09b03c0ee8233a18fe290abff2ac74140d6ea"
    "es-ES"
  end
  language "fi" do
    sha256 "17373b57e36ac688d62b7881c180abe505338ea55f2fb6deda63970ef3969fe0"
    "fi"
  end
  language "fr" do
    sha256 "7a0f8bbb0d2479e59fae187a9d20af9e348ef033a2b991ef31ede204146485a0"
    "fr"
  end
  language "gl" do
    sha256 "0ff4c8c7e78f1ed996ff2fcb7dadad26fa374bb795999cc9dd438188325c60bf"
    "gl"
  end
  language "in" do
    sha256 "77163b9ac84287885784745a870de0303672dc3e2f867fcd4970198e16c9c6f5"
    "hi-IN"
  end
  language "it" do
    sha256 "5a10174b5f4ea82b60fa5d3c1f9e0e5de858e29e1ebfb025d4e3da9ea45ebb19"
    "it"
  end
  language "ja" do
    sha256 "51133b8948c9655e5b7705ce8eb018a6853d5b510d0372548b7c60c0e862b313"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2c4b239119a65f2788e118d024cd980a5a0b21e9784d6ad3c43cf0e7c102f5b7"
    "ko"
  end
  language "nl" do
    sha256 "53f183b4eee168ea266135977039d06d5e73014bf8b06d15b01e49426c0765e2"
    "nl"
  end
  language "pl" do
    sha256 "a6abe95ea3fb5746fb72c840791412429311390f3168bcad70146b9dc47da7fe"
    "pl"
  end
  language "pt-BR" do
    sha256 "b45b9fd83370af0c7808b5bfc8f933f4d3461e38db1f787778d6f75339e4bbeb"
    "pt-BR"
  end
  language "pt" do
    sha256 "fde1efa43d135efb97360a41740bdfe70b5edc3a24e37be57aab8e54b74aabac"
    "pt-PT"
  end
  language "ru" do
    sha256 "a680ded996543a3f5ef9103cff197a31837b5125a46c547e89e32d71a1932275"
    "ru"
  end
  language "tr" do
    sha256 "74e83efb88b0d4bd3828a649f973b64d080bc0be55295d5ab822dd9457f70f71"
    "tr"
  end
  language "uk" do
    sha256 "c1c7225d93a311cc274ce7a3e65c3132cddfa45e33eedea6ab67b0a3d1912058"
    "uk"
  end
  language "zh-TW" do
    sha256 "283e38e767658c2d2bff595764c786e44683c562c0d06cab99bdcc62da4adc5f"
    "zh-TW"
  end
  language "zh" do
    sha256 "a823c5621d10469bf4f117117ca7cf961b2683dc4fa9cdeaa14cdab8e426b541"
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
