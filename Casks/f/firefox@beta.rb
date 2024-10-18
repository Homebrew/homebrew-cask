cask "firefox@beta" do
  version "132.0b9"

  language "cs" do
    sha256 "f6308fe2e15d09adee2320f9f9f430731fc9b08ce84bbcfd91a5cbc8f95bec54"
    "cs"
  end
  language "de" do
    sha256 "55aeb8f67c477b9dc51a56fbd0d7788cbd7ce7e7fb7f767f757e4c5b9ae52cea"
    "de"
  end
  language "en-CA" do
    sha256 "8961cd4b3bb484fb3d0f847154249715b5fc97d3ea0373b78a3ba30e7c858fa1"
    "en-CA"
  end
  language "en-GB" do
    sha256 "090ed954ba52f464bb41d9a49059a4d7b25a8430c7d4aae6139342706955a919"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ea881ca8534abe144005d49415e82b3c4c36db9d81d1ab0461e941e75d8593a6"
    "en-US"
  end
  language "es-AR" do
    sha256 "1db0d76c9a7122a9cd9961194854ed7907f43d2d02d74707578cc00bb1d28894"
    "es-AR"
  end
  language "es-CL" do
    sha256 "010f52f108848f351a876a7b3357921b4cddf1b346ff7aef130d32543fa479a8"
    "es-CL"
  end
  language "es-ES" do
    sha256 "d9a5e681c98bd40f140686678cd9ca28b78e84568542c615b6f41d011179c9a0"
    "es-ES"
  end
  language "fi" do
    sha256 "e2b5ddbbdf5577196e014ade66c89b2b0c1359e06c5a1eff7a85a44afe64ade4"
    "fi"
  end
  language "fr" do
    sha256 "3d86975e8ff95885376fbd0750128eaae992e50e29822168385ea82edb2aa380"
    "fr"
  end
  language "gl" do
    sha256 "0957cee1f6afb4554582266eea24528467fbb7aa7af41a05378a0c998cac47da"
    "gl"
  end
  language "in" do
    sha256 "4ea8db5f6ca7125b52377f34d74473bc387523efbe4af0f9acea747457b295fb"
    "hi-IN"
  end
  language "it" do
    sha256 "f7897b351046ca2e6755d1224c0c052d93163028df33225b470f47504f153936"
    "it"
  end
  language "ja" do
    sha256 "bb3f9b3f086441c9e174f6b477409fde1e27e0840c6af36c1058fbf76983eba1"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "844f9813b8ef9f939106755b434f3d99ae5c87d7bdcb96c45d206b8a4464981e"
    "nl"
  end
  language "pl" do
    sha256 "10db8e3b9ef029b46caab96237ee79ffe9890c0d2d273250ac24e58c8f625602"
    "pl"
  end
  language "pt-BR" do
    sha256 "ee6193d90ff97d0a306514a8b806c3cd88dc91d24225acab2bd8732a44d811d7"
    "pt-BR"
  end
  language "pt" do
    sha256 "4622b71d635e9bbdd180ea24b2f1a11d96b88fac5d752c2aa0b5922d1a7c8cbf"
    "pt-PT"
  end
  language "ru" do
    sha256 "a2c66ecfb319de776da6339f2a2b585dbfdd3bb53ccebca6f3d2f217276896da"
    "ru"
  end
  language "uk" do
    sha256 "3443379bec2d509a5ac1c623be866da111a09dcdce69281dd3950a43057d4f0f"
    "uk"
  end
  language "zh-TW" do
    sha256 "27c9a3fffba490a7ca694fa08bea45aa269ab0a4f9743427b685cca5de686fe3"
    "zh-TW"
  end
  language "zh" do
    sha256 "9543a955e5a5f77b6dfcf94a3ff0db04af7c9b4e9140cabf753c298adb7d0ecd"
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
