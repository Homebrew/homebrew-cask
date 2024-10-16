cask "firefox@beta" do
  version "132.0b8"

  language "cs" do
    sha256 "d8214c68d3d6cb0bcbca82732c37503662ba2c7503c03fe2fa6e7f9dbae9c79b"
    "cs"
  end
  language "de" do
    sha256 "790a73b58814ed8bfc970238cc00a010db38c86863bc73fe73c1efdcea47e49a"
    "de"
  end
  language "en-CA" do
    sha256 "40c940692f6272a0a8f05f796821efd2e6b4ab143ec835415084a85bcd819a85"
    "en-CA"
  end
  language "en-GB" do
    sha256 "85f2d02d33a97c8801d8e62e41f4c0127cf25b6f20303238a2c45201e870ac0a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e3a9ad14e1ae5d4887a6d2650c7c16031dd11d92faea23d4fc373c502e100891"
    "en-US"
  end
  language "es-AR" do
    sha256 "77df6bfb3b39158c701525aeec7fa6166a41347aa96e126a4b59308ffeaa2318"
    "es-AR"
  end
  language "es-CL" do
    sha256 "f46557bebb86a3a9ba8b8f6cf580141aa32d7cc788f7e421ee295a4eae87c5d6"
    "es-CL"
  end
  language "es-ES" do
    sha256 "72950548309763af89a80d502d691bb762bd7236b18faed914bbbfe74d0c9bff"
    "es-ES"
  end
  language "fi" do
    sha256 "ad55635f1172d349f04de5fec4b9df8d5239a164d12351ae9cdb10a2839a939c"
    "fi"
  end
  language "fr" do
    sha256 "9d2c1e5ad2655006c88c1cb519548e51910ee652fd4f77b92f34d1df8bbe7a48"
    "fr"
  end
  language "gl" do
    sha256 "d1e870e76627d305f7e80f299c677b952b068c03e3f9ccde62a7335712df9164"
    "gl"
  end
  language "in" do
    sha256 "ce314fe89ad472407f149424c1de6f8b743e66d4768c9ad9f410b3666cf99714"
    "hi-IN"
  end
  language "it" do
    sha256 "71e656866de64cac474867913bba831bea4e4e61addf13d365b2eb5ea69bbf49"
    "it"
  end
  language "ja" do
    sha256 "8c1755ce903785ec7d1834faf6e23f497dd3b7ea3e1472336d4680f53e1b2df6"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "60db1c8f7c4156c74b7498bcb40011dfb970396c9be37235de6fd6978e6493ff"
    "nl"
  end
  language "pl" do
    sha256 "e09cd9e9d71153a773997c5dafc6ff1a577c7edb9febcbea017dea61248af892"
    "pl"
  end
  language "pt-BR" do
    sha256 "ef35795c820faeb0d8c383e1ce749f79a74672503492ed323f42b75d610c5cf9"
    "pt-BR"
  end
  language "pt" do
    sha256 "07acdf9cdecc0c8461cc1c0c18cd130a38be26e400db5609616811f2b3dbc8c8"
    "pt-PT"
  end
  language "ru" do
    sha256 "d66050a1b788253fbae0c0098188622e616b7cb6431ba7ab3cba1409f50256ff"
    "ru"
  end
  language "uk" do
    sha256 "e12d5fd422a01c1367cd4efbf5c93ad14bdf758786aeca8786613d9ac6b4036b"
    "uk"
  end
  language "zh-TW" do
    sha256 "109ddfe216f7f1b5fa7aca3241192695686c578385d23d19b527578c6881d99f"
    "zh-TW"
  end
  language "zh" do
    sha256 "3ee37cb0bfb3ad2cc3d87d71dc1d6202ba28a0df3dabbc073c9c116bfeb2222e"
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
