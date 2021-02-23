cask "firefox" do
  version "86.0"

  language "cs" do
    sha256 "16df348993e4ec4511fe9c4b8fbe21653ab1e09fbe2e214cd13a8508aead3b9e"
    "cs"
  end
  language "de" do
    sha256 "80ce637be76b811db001095ad375d90232a7c6b0cf6b9230dc59957d61e15080"
    "de"
  end
  language "en-CA" do
    sha256 "d5e3d5ad32bae768badf24ecc23b516b9301bc12f052fffe5838c3f99922c2ea"
    "en-CA"
  end
  language "en-GB" do
    sha256 "dedc979b4f598a935c2fa5d20c9139824f7e070be19a1ce05e9fd20c956beb0f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ac678174a4d7b3db70da94bdec7d54b3fa96db3e756d584c5a7d1cf09ca65a12"
    "en-US"
  end
  language "eo" do
    sha256 "d41a7570bc14251658113abbd5f3dd54a44394ba67a0e42e532cc6bd3fff04a4"
    "eo"
  end
  language "es-AR" do
    sha256 "b590cb198d27b1132ac669181d6c085b353e2aab344020ad316e35d19e9a2d02"
    "es-AR"
  end
  language "es-CL" do
    sha256 "9528e0fb8db1ea858b87a6cb7003daae7f72153dc4ee889fb46241162c4bfe70"
    "es-CL"
  end
  language "es-ES" do
    sha256 "0b9481bfd989f888fa2a06ecb8a30890d1734e7b457afd11202e8ab6e507709e"
    "es-ES"
  end
  language "fi" do
    sha256 "0a10a8a4b8dd4e0b69da67c8b8d7ad2e38fad7539398a4b325d8288bd1f4822e"
    "fi"
  end
  language "fr" do
    sha256 "02bbf655943766447087c66a8f15f96a78068b09ca7af4b3472e97590215fc7e"
    "fr"
  end
  language "gl" do
    sha256 "948ac99ce2d7fae214d2a9dcc2372685ac7727a810c1a352749702b953576e4d"
    "gl"
  end
  language "in" do
    sha256 "f11fad2e5958f03e4a03f6df0506847a1c95bc7993f1932ce50185a287b677c4"
    "hi-IN"
  end
  language "it" do
    sha256 "e21e810b1631b08ff2a28bbd534fa303ab932bd26aaac17e10ef499506e993e5"
    "it"
  end
  language "ja" do
    sha256 "0b32ed9b1648d08fb682c874a2a1206d55eb9e6ac859b0acf8a0e243cda18a8c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e8272a45bd921a3c71b2b78eeb5817b331594c41521882bf9181892d297bdc18"
    "ko"
  end
  language "nl" do
    sha256 "3e314082941f95a2737450c9b60fcf7e1dc0039b990a5529035c374e85e35bb6"
    "nl"
  end
  language "pl" do
    sha256 "762cc5a154fdfa737cfa56d6a69eb93cc92fbcf8a1865915bf35686018545db8"
    "pl"
  end
  language "pt-BR" do
    sha256 "14a8f98ce46bbdfc4c2727703c412314dcb66376a3d3f10e496189aca0d2bb78"
    "pt-BR"
  end
  language "pt" do
    sha256 "56ca4e58ebf47e7ac95d797ba997be87919495dfd7e78b3a5f4b876ef7c5be5c"
    "pt-PT"
  end
  language "ru" do
    sha256 "36465e0eb34c090896a8a2b13f03de47038f7c6043c81986d46d69b404006432"
    "ru"
  end
  language "sv" do
    sha256 "4fcf2fd7aaa7e6d3f0eeeaa92fbe52fe2ac74b3f6b531889a914c724f097dbf7"
    "sv-SE"
  end
  language "tr" do
    sha256 "ba706d6943b2dfff06f847701877f0bfd754f493eb90699c038c61194d6141f1"
    "tr"
  end
  language "uk" do
    sha256 "74b4531b80fe1be38e3c16268742b8f8ef58fac83df6704dab64b741511bf784"
    "uk"
  end
  language "zh-TW" do
    sha256 "37950e4c5816dc15258745b66d0d92cb18afd0b26ec2ab3d9141c581c7da5c97"
    "zh-TW"
  end
  language "zh" do
    sha256 "6f30b0633dad75daaae9e8db3229b6ccf09a47c8af1fcdb3f3590bc40d9552ec"
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
