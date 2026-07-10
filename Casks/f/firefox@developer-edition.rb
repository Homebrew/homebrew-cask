cask "firefox@developer-edition" do
  version "153.0b11"

  language "ca" do
    sha256 "40e586e61d31ff1c7724f4db1181975be67dec5c4ec6eef058c4197058f63aad"
    "ca"
  end
  language "cs" do
    sha256 "92a31d4bbd642350dc007089002a141871cd25872f85ab2115951c7bbb323bbd"
    "cs"
  end
  language "de" do
    sha256 "090052d9b7f9c46e8a1526d0b288328254d7f593835a2773ecbc141bd94a3cdd"
    "de"
  end
  language "en-CA" do
    sha256 "8034a14fe898cb2b1648b4856007ada8c23e87b64898d80e5374dd3983cc192f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5a07566ff12cfde1e117b7b0c428d41b46440f2290d3e3e2f69a7251ad0e9878"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f50daf5c1a025f1739d1fa3415439c105d2c7433eab644d1a18e5115ecf5fb52"
    "en-US"
  end
  language "es" do
    sha256 "1fe417ebd27b606c480b4da76959f4d8d39a77c4d1d93f262ddd18803e194664"
    "es-ES"
  end
  language "fr" do
    sha256 "caad2196425ff999c2cb8001bb3aa5a10f7aef591a47e6648f31cb6009be62ad"
    "fr"
  end
  language "it" do
    sha256 "fa41bc89ca595264f3c742e7b1857841a4832ad14dff528e4c5720da6a6c39bd"
    "it"
  end
  language "ja" do
    sha256 "3d99c2923da62eac721a56721793b2ddda1cacd7a8c2084bbe4d0291275610c4"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "6d2441e9de99153b4d1261e955d96c4c966fa5c6f510201f4ec5a120735243cc"
    "ko"
  end
  language "nl" do
    sha256 "e4a62622011c6a1e61704b090062f2aa7347a4e17e9ed50fc26145aa30ee718f"
    "nl"
  end
  language "pt-BR" do
    sha256 "b7551466313003f0b13aaae1df310b7cbd6f25d37760ad1ddf4ae3b7e501dceb"
    "pt-BR"
  end
  language "ru" do
    sha256 "adf8e35a61bb04c7fdb9a9a1247d4938d3f44a916f83efc69685aec0cd08c484"
    "ru"
  end
  language "uk" do
    sha256 "c003346f6ee895c84fc1a66799998c36b4d5b4e729b558631ba9dd267fed7978"
    "uk"
  end
  language "zh-TW" do
    sha256 "a1cb6a435a4c9731cb0993f5b4cd9a10842fd7e79fe65630082b2efade6482f0"
    "zh-TW"
  end
  language "zh" do
    sha256 "8998d37e8e7e6042dd9a390f595a8caa53ebadefed72a50e046c381848e0a032"
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
