cask "firefox@beta" do
  version "133.0b5"

  language "cs" do
    sha256 "1f9ca0f2c89676830747279bfd094e924a2f68d519bb8a30280f6f1629cae11b"
    "cs"
  end
  language "de" do
    sha256 "f19531846156f005d05ca4ac707310206bad4c50e16ed5c176bdb0f1f1efb3d8"
    "de"
  end
  language "en-CA" do
    sha256 "46684f73cc33c32257031ac5c1ecf777e06ceab5b32c69baff0ba893670c7676"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8362822cf67f4043b48485e6838f3950799fe3a4f46631525b6899caeaf57a61"
    "en-GB"
  end
  language "en", default: true do
    sha256 "561ba10b551ab4f484c9a7a0e485b674fafdde0915a023f369974a0fae10d7ca"
    "en-US"
  end
  language "es-AR" do
    sha256 "8f9d8f822f20ab712c9f107328cd2a779156529618afe00498a1548b725ba9c5"
    "es-AR"
  end
  language "es-CL" do
    sha256 "f148352ce413ee845f0cf0ce5256f99a7cb05b74b9d3d0cc284afaceb6786184"
    "es-CL"
  end
  language "es-ES" do
    sha256 "bbd6c2073129d3c923b09e4bb0f3199fd3d3ed35eb67963bc98dc88e9cb0cb6d"
    "es-ES"
  end
  language "fi" do
    sha256 "1a17bdb8cc73604d67f608dafbc7988103ee0bcf2dbd31014aadd4951bc79ee6"
    "fi"
  end
  language "fr" do
    sha256 "bf6a9701a3e8d07dcfb65adc1a3cb2f2da3b091de47a0da4a1f324ef323a8966"
    "fr"
  end
  language "gl" do
    sha256 "605d11354e75dda755ce7928d0e07592e7aed1b4fe21bea4a074343bba170d21"
    "gl"
  end
  language "in" do
    sha256 "bccdd0983fc03ac4d5dba6b7a1f1c19b055a2de0912f4ce6f94ad56c79a853c1"
    "hi-IN"
  end
  language "it" do
    sha256 "263af618c9fb094a876d673d77ba7e65c88cbf7f742f205692d89dd08729d6ad"
    "it"
  end
  language "ja" do
    sha256 "4ae78003e49badc3d3c0e4e34d1f2e068b57e45e2284e2a61b521c125734e896"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "4d4b771ccb86b4670d41995ce12c0b5ba10b3fb6379e6f474573afefcb2496ad"
    "nl"
  end
  language "pl" do
    sha256 "6e293afea25e6fc1a92b5e31f9eba14b58787a97a6e6b1762f678af642a8f0d5"
    "pl"
  end
  language "pt-BR" do
    sha256 "c0db65f6221110d0fb2dded74dae02c3cd404de9a68f6f1b01893c46f265cd03"
    "pt-BR"
  end
  language "pt" do
    sha256 "8eba469bfb9766b9ed771b0a2b773294a0dd96a63b66cd48509239d0307a6387"
    "pt-PT"
  end
  language "ru" do
    sha256 "cc06a416e566f9f45c322abdad1c2b36547fddba5fee71d8c32cad0dc249c0b8"
    "ru"
  end
  language "uk" do
    sha256 "dabbbf5686de0901757427de625cc193e4443e55770bbe99fd92bf90d120e5fb"
    "uk"
  end
  language "zh-TW" do
    sha256 "c47ecbaf9c47c44b2cad6fe164f2ea032675ba2e03cb0c54f2f9de59c23dc5e6"
    "zh-TW"
  end
  language "zh" do
    sha256 "cde2680765cd4026add8e925acf541875fede339f82e1878159200427ddf95c4"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
  name "Mozilla Firefox Beta"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/channel/desktop/#beta"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["LATEST_FIREFOX_RELEASED_DEVEL_VERSION"]
    end
  end

  auto_updates true
  conflicts_with cask: [
    "firefox",
    "firefox@cn",
    "firefox@esr",
  ]
  depends_on macos: ">= :catalina"

  app "Firefox.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.crashreporter",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.crashreporter.plist",
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
