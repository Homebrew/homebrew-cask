cask "firefox@beta" do
  version "153.0b4"

  language "cs" do
    sha256 "e68b3acc4ab1bc8353ad55fd22006a4407eb6d63c9ae84a3b5d69bbdd4a41a5b"
    "cs"
  end
  language "de" do
    sha256 "3c62d9df97fc0ea618859590e5b7b0d425e7db206ed65ee0f1ae264c11998495"
    "de"
  end
  language "en-CA" do
    sha256 "0ec30138282e7b26f70261db0ee1bb9bdffcb88b746e32bf9ba753d8de7a8b3e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "9c5c09de1b7875862dee11fccfc59ab81ec7c975b83b2e1516e9ec6a68f02db1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "34cb28ba9b948060d14d3fe2598086a75acba4b16bcb1285b18426ddcad4fde2"
    "en-US"
  end
  language "es-AR" do
    sha256 "3236b79770e0bd3f3c34dd92864f814de0969638e45ace7e069fdbf563254e6d"
    "es-AR"
  end
  language "es-CL" do
    sha256 "9a6379ac027133e39a10d1917c09f7ac30d525fdc90268bc67033cf3830d3940"
    "es-CL"
  end
  language "es-ES" do
    sha256 "fd662f0fffc2f47b2ee54a06012bfef567f9cc26efefc8cced81eb62298d3768"
    "es-ES"
  end
  language "fi" do
    sha256 "715d4ef505c48a7d03c9e186b5344449ae089c2d1a661ee301e37e416550b0c8"
    "fi"
  end
  language "fr" do
    sha256 "d008d3516881791e58c287d4b15e5dc786f0e42c077bf4d1b66e1fb74687f4aa"
    "fr"
  end
  language "gl" do
    sha256 "e7f1ae0ce39c8beba38d748697f107c9abb10f50fb4572648b1f87170cd76add"
    "gl"
  end
  language "in" do
    sha256 "37db7b6af84f8a2fc12d869e598744c8a5bc08416037209510ee957b84bf9ab0"
    "hi-IN"
  end
  language "it" do
    sha256 "667370e931d23498d8323df0f2b49713c14921d6723c7ab6b0cd8246d9932b19"
    "it"
  end
  language "ja" do
    sha256 "46af512f1230f92f5219ea79dc99f1d7eb39c4f8d798a19e7fc978a9994665fd"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "7066232eaf1746ce755e6deff75a2206bec832fef46862b8dc431c30a5548953"
    "nl"
  end
  language "pl" do
    sha256 "d7c0e491768d8c33e500e156765ddda84d3e6ac90f95907de677446be51028aa"
    "pl"
  end
  language "pt-BR" do
    sha256 "17d8248f9e9b05f8203631237528d8f29b511c59bc8ab1fa81d9a621f38f83d7"
    "pt-BR"
  end
  language "pt" do
    sha256 "da0e382580ceebb4490f3a96fb04b9739e8dc79821a0202b4bc06f06f6823c7c"
    "pt-PT"
  end
  language "ru" do
    sha256 "774bb6788caa83410288b78405b48ed0f3282a3b0bc432825235f96d9f731b5c"
    "ru"
  end
  language "uk" do
    sha256 "1b0a1e6080cf9cc63a70e0531d5bcbc42952d3810d06c343235b1b586311b7bb"
    "uk"
  end
  language "zh-TW" do
    sha256 "adb6414a5ce03011e83cad875d3fab6175b46cbd27e17d5fd1d794e211e8115f"
    "zh-TW"
  end
  language "zh" do
    sha256 "f970a8116b26eb3d3cdcd2f5257af93befdd8099cbf63bf63e9be5b76a54a74e"
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
  depends_on :macos

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
