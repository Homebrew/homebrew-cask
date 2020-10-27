cask "firefox" do
  version "82.0.1"

  language "cs" do
    sha256 "4ad20c54ed14a2c119f81adf72709e3f755332c824db724283c56dc1071ab7a8"
    "cs"
  end
  language "de" do
    sha256 "9ce1d4fa6e8c782513eb14316537756e94a414ba554e9e9b1e5799e1f6d3664d"
    "de"
  end
  language "en-GB" do
    sha256 "9d76f2ce949771a2dc973863028593c040d6b4fa18b45c55451bdd29d718e764"
    "en-GB"
  end
  language "en", default: true do
    sha256 "470823962053c06c8d28256fa6a7ec6c60c373413a4022988effb0be27a35f56"
    "en-US"
  end
  language "eo" do
    sha256 "afaba3c742f52d43604769a0603d4eaab686dd05eeb896f20c8fbd2d0fd1fb5d"
    "eo"
  end
  language "es-AR" do
    sha256 "0d7a07159da3df5ccde43cefcec8979adfd67b505c345c8d23775828ea79f442"
    "es-AR"
  end
  language "es-CL" do
    sha256 "b440f36a4a4de085d53af8500735b11e0256eec24d3c177a0cd6db043ffad5d6"
    "es-CL"
  end
  language "es-ES" do
    sha256 "9017d0e95445ee9c4d57daca357a93c487b3c85f8d1137956bd194810c589b27"
    "es-ES"
  end
  language "fi" do
    sha256 "cee674a87c738fffd9450cddc42df1a0eb737109540eea232ad84e892b6779b4"
    "fi"
  end
  language "fr" do
    sha256 "eab6562b8830ee5998e89783c8a866fd0b8747768d1a69f78b1b82baead808e1"
    "fr"
  end
  language "gl" do
    sha256 "c5ff4a9e545ceefb43cd8b8b7d5140c80afff2439b181a35e124720864593845"
    "gl"
  end
  language "in" do
    sha256 "88433bc0efac796051f264170f95f5a58c55d305a37cecba3d9d8421bf6b1512"
    "hi-IN"
  end
  language "it" do
    sha256 "5daad245b6214e912b58c6da137f85f71c20fc85f402bbe2b109b7e2635188a9"
    "it"
  end
  language "ja" do
    sha256 "895544057cc8870356cf60f72a7cd82afb14d481e3fcdf09c7cb02d348f90cc8"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "5fdf47931d97e806cb821eaf1592f3bbb8c3cef264adb7deca1f502921218da6"
    "ko"
  end
  language "nl" do
    sha256 "37aa35dc9eac4d2dfbd7060b9c80cbaddb6c716548db4c2e1306d1337f7e2783"
    "nl"
  end
  language "pl" do
    sha256 "80be454516eaabc452ab76e2278103a2bac70495222e02fcfb65740883f51519"
    "pl"
  end
  language "pt-BR" do
    sha256 "5400ae900e6e33c70ea07d2a2c6cb3a4fcbb4f419fd9098668c7a418e373d569"
    "pt-BR"
  end
  language "pt" do
    sha256 "1cce1f80c9d6157662f317cf52a8d7b6ff5341d0ca6f71cbdcce1fc73036b9de"
    "pt-PT"
  end
  language "ru" do
    sha256 "d665723f77c875af48c12e4e2e3be196039530a41324e840fee17835e588fb62"
    "ru"
  end
  language "tr" do
    sha256 "332fa415180a3bfe391039493da9ed594f8bff9d6d464581c53ad9639fcf5dcf"
    "tr"
  end
  language "uk" do
    sha256 "49f686040a33bbaf2d4828dbc8a82f00a8e9986025faacc09ae0ebf48dec36dd"
    "uk"
  end
  language "zh-TW" do
    sha256 "cc1e5875ab050f5a94dee8d011f48d67d5345fe2361476ac91ca636112199033"
    "zh-TW"
  end
  language "zh" do
    sha256 "5e278da71f4f52e2d61b7c85e01bcbe0bbe4261f0a29f927276a1d708f5562ac"
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
