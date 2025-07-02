cask "firefox@beta" do
  version "141.0b5"

  language "cs" do
    sha256 "ecebf48776483689ba9cf909037c7a0f6f97fde86fa71dbe87a954afd8313aa4"
    "cs"
  end
  language "de" do
    sha256 "cfe79757b6daac231251141ca7ebd6ff7c6b7f26ae9f7d25215e3dda1cfbdb73"
    "de"
  end
  language "en-CA" do
    sha256 "174a885059aecf6c6ce41211697ac0eb45db931ea3a0ebdb34a28b4b00797543"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f0f03d314874a45d85b049c5a71ab96ac4574ad9f06a2818190b202e1cd9839c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5d591dc441bcf821cdeca94523c4b521173ca02ae9b7c14e291cea49bfd637d0"
    "en-US"
  end
  language "es-AR" do
    sha256 "55b9cafa7462b4d973f002d5ec8720930029b1ea6156613b64332a6f4706accc"
    "es-AR"
  end
  language "es-CL" do
    sha256 "9289d48c6f9474dfad8d7aa746e7ca3b18bba8d6d62fef6d688ed9200bbc3214"
    "es-CL"
  end
  language "es-ES" do
    sha256 "2c652ceb7421c2b5d5d541951015e9c1ac479d359549454790e9cbd8d5f6c7a1"
    "es-ES"
  end
  language "fi" do
    sha256 "4d225db6e61610d9d3fe0242a90a24ec9a71e47d770e737dc3bd173dc39ca447"
    "fi"
  end
  language "fr" do
    sha256 "d02475fbf2108fbccba7c3927f424c095d14aef0b7b67a277e63545f521b172f"
    "fr"
  end
  language "gl" do
    sha256 "be628446194d4379a4c86ce8aa9945c37af2fd9e224290dfc12e8806612bc3e0"
    "gl"
  end
  language "in" do
    sha256 "4d56de9121b059d32a9460e5488668b4e92e8c9444a46ae65ec26fe8d89b0069"
    "hi-IN"
  end
  language "it" do
    sha256 "d983835eb977dc825ad1a7cc5fa19d2843b965f0f12f1b0590695811d60a1c1e"
    "it"
  end
  language "ja" do
    sha256 "b66cfde32e05947e05724ad8a7b4f8e010848e76a2c765a72f89f3f54bcdb8ee"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e6d8f72af5396586a44b7d83fc7090371a7c3df8eee725923f06b5b5a6e0d5e6"
    "nl"
  end
  language "pl" do
    sha256 "365679ed93d7601a5c94f660449fe4a3431a3f5ea1d898f1b43a0633f99d9e2e"
    "pl"
  end
  language "pt-BR" do
    sha256 "5a3d97c3146c77b58b263820225f12c98b036612cc6d8168b025993430bc52b3"
    "pt-BR"
  end
  language "pt" do
    sha256 "ecd97d4ccafc01a763b4109539a2f35b6acb02208f9953d0adb6b3e7c57bab4c"
    "pt-PT"
  end
  language "ru" do
    sha256 "ddb7257194a32cd175c6343d55f6382933531c5e3dd5a51a6a4c051e2e93f1cc"
    "ru"
  end
  language "uk" do
    sha256 "96ecbc6135779a5fe1fdf4d6126309f5f416777509b509a9ae100da3a5b18cce"
    "uk"
  end
  language "zh-TW" do
    sha256 "4a629bc8c930961d7c2bfec7781638428859431cdf3e7d3d15956bac6b69a1ce"
    "zh-TW"
  end
  language "zh" do
    sha256 "6b146974846fb3b3591f29571cdb26c2c61f51d28dfa4bab02b51f32213c098f"
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
