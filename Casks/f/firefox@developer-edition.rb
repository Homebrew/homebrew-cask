cask "firefox@developer-edition" do
  version "157.0b4"

  language "ca" do
    sha256 "553706f3467c60deab0e301f31631ee8b3d7f26d27b0844dc074043e81373e8c"
    "ca"
  end
  language "cs" do
    sha256 "7d002c93fab183cc6a60957420de39136cf194f4431eadcda775f0b9953c31a5"
    "cs"
  end
  language "de" do
    sha256 "a49d2ccfe20e1f8112e26f93abcef2f51c120743d8d6a5c178190e08f4075d94"
    "de"
  end
  language "en-CA" do
    sha256 "e694084a1a3f6a8dae6fda577a1a40e7bf64bfa7a7aebe6c94cb9a9101143583"
    "en-CA"
  end
  language "en-GB" do
    sha256 "953d7bc597d5934e1de04d46ee2d254ecf3778d35055b5b0e1c0f4bfb8c76e3a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a5af52b7ec40e8d82f04ae524f169543a273da25f129d56a70a4ef026cf3e7ed"
    "en-US"
  end
  language "es" do
    sha256 "08d019fd4511fa7f8d4f4955677e20f38edabe99800a15486efe7cc6e05e2801"
    "es-ES"
  end
  language "fr" do
    sha256 "a519365bd032495fdc4a6866c04adceaed09564298f8e8ef6287f6f5ecefa360"
    "fr"
  end
  language "it" do
    sha256 "16e5c46ca7d2aacb85210fe1407de011fe910ff229781b731ea55c7477ba2e19"
    "it"
  end
  language "ja" do
    sha256 "3ee4ed515c1a7eaa7614fb5cef725cbc6bfd0fb4e185db526e5bbe72e82caa51"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0a98ac4a54e171569e184ffe0695ecba971f87442a7e5e1ba7f305446dd8c36c"
    "ko"
  end
  language "nl" do
    sha256 "a1908e8c5abd3244270ab33c8019edc5cdab37c0e8e3acc92c0980227c74fa4e"
    "nl"
  end
  language "pt-BR" do
    sha256 "e0c3118d6ce43751713342449ce2bdc5a7bfab517c9f5d46de33e6b7d8f5c02d"
    "pt-BR"
  end
  language "ru" do
    sha256 "e43b988db5f52d4e04fdda09f7a0e0cd0f2c88e06d5c8fe369921e463779ebdc"
    "ru"
  end
  language "uk" do
    sha256 "477142ca9671ef861ba73b8ad385e5d6bb6574ee024ac01c26e25ba5139e519c"
    "uk"
  end
  language "zh-TW" do
    sha256 "07f523d3e204fdc7c0bccab49b0733386aeac521e51178b5f561ac19a88b1fca"
    "zh-TW"
  end
  language "zh" do
    sha256 "75b2cec3b295d9aedc8825a802f99732f4575cdb3d9ecd68a8679ba726b8ca71"
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
