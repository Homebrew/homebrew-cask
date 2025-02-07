cask "firefox@developer-edition" do
  version "136.0b3"

  language "ca" do
    sha256 "9134fe7f2436e628c27e9567d28a4feaf23f7d8de3e22409e8cc44d6f0992b17"
    "ca"
  end
  language "cs" do
    sha256 "2dd8bbf54922a4230b2adfe7ea4f38e245cf5b13056722d4bb927324351520ac"
    "cs"
  end
  language "de" do
    sha256 "a8f48f21e2ee52a955f28cf8c9ef991e13c828f4c687528c06a105deac5a63fa"
    "de"
  end
  language "en-CA" do
    sha256 "d98d7acd50ebf39da920fae5502c754247b183a86565bd47580442d4e25df8bb"
    "en-CA"
  end
  language "en-GB" do
    sha256 "cbbd3aa76c199d93ea310c3e07f2441ac99a1f40f720866b6dbfbeafc10d961e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d12f0a312a1bd210cfc2e295352cf8287d44d4bc2da994bc9d4c1fffa171cf1e"
    "en-US"
  end
  language "es" do
    sha256 "aa36867e4b75b13c2c341784c5831b49cb6f164f6947b9a48d0e9348698f7a94"
    "es-ES"
  end
  language "fr" do
    sha256 "8f4ad24456d8233651b1a9ee650c19be71457d8448a86f06e92a57bc668b8510"
    "fr"
  end
  language "it" do
    sha256 "8ddc0e826236574942b1eeb901854f717a1858dee0879a5e859d20e701f5725a"
    "it"
  end
  language "nl" do
    sha256 "011a7823db42cb6a27e8e639f3893807755708f897458dc7ddcb49b40a02151a"
    "nl"
  end
  language "ja" do
    sha256 "34de24dd5f7543b35368480b93a2a7eb6cfbf1572d7e6bffb2f1349ec6b7dd66"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "0972e36e9f732a496a8526520fb5e72e64e2150a5515480b38b0332f8e33cf61"
    "pt-BR"
  end
  language "ko" do
    sha256 "c83f689604e47f2a3ab0964358d53336011cbf9791724e7b0314022e570a765b"
    "ko"
  end
  language "ru" do
    sha256 "5dac95262440147e42c2672c4e726f2bd30d28f0739a309ede231f5ba52b57f2"
    "ru"
  end
  language "uk" do
    sha256 "f6290dc4b0b501b791e21404c5ff5c0c77c6b18df461f1a2ea9935409824b57b"
    "uk"
  end
  language "zh-TW" do
    sha256 "c09b9b0e267d6c701de7542145d1fcbacd5f60fed0db8731e6e499aad0ae5325"
    "zh-TW"
  end
  language "zh" do
    sha256 "426cc171d95f2ba720ffd422b2745bfef72785751bf287765b1083ce5d3713d9"
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
  depends_on macos: ">= :catalina"

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
