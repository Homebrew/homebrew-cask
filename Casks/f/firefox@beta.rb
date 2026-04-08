cask "firefox@beta" do
  version "150.0b7"

  language "cs" do
    sha256 "d782602bd6a6e7e98d08422d16d0d7dd7640784675da7a7a473e26c96067e881"
    "cs"
  end
  language "de" do
    sha256 "ebfe706f1ef997b3fa5e6c1bfea7a50c7790003903e1b6db4930d4c82b55357c"
    "de"
  end
  language "en-CA" do
    sha256 "1994d3075807c1b5c2a6d0491ac08d80468b7e1642629f931716631dbb4c5fe6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "941ba029a2ed60236fa05e6776e3ed16f6bf5e5c45aacea491eea93d38917d79"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6de582201f80ce915019d808eee92ee2c66398c886713d171ff32f6dce23ace1"
    "en-US"
  end
  language "es-AR" do
    sha256 "a5cc33506e51186b2a2c5b5d6dd9d16fe58de97a812fa964cbb5bf7e2317409f"
    "es-AR"
  end
  language "es-CL" do
    sha256 "312b311e89e6e5cc2944331fe3a0e78d37942e8345c2c0b0eda3248269a2399f"
    "es-CL"
  end
  language "es-ES" do
    sha256 "555bce91b4904db916462a34310e1e30c3ddde7f20491805563545c91c0911a6"
    "es-ES"
  end
  language "fi" do
    sha256 "15f3226bc43c62c9aa8fdb2a2e76084b24bf599c44b26ed1822c05b2a689dfcf"
    "fi"
  end
  language "fr" do
    sha256 "d528ccef55c3713cfcbca9694c776fdf2d0b0c0ef7f01885f176c6d0f03ba2c0"
    "fr"
  end
  language "gl" do
    sha256 "4e5edcc527b3cb1253d0f30f7f073131db4a49322bbc8dd6956cd500dc485a1c"
    "gl"
  end
  language "in" do
    sha256 "82fc6fbe3c66b11a83d153aff11a53093705829d52830fe02d359a8afc5db553"
    "hi-IN"
  end
  language "it" do
    sha256 "c29e64c39ec6aa005bcceb93141bff9d28aa8df7944c10c140058ce197ef966a"
    "it"
  end
  language "ja" do
    sha256 "6f6508aa432ef350b75d46b6bd4bba2365d7fc0bf73ee8f7fa88cfbcf5a72d8e"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "fb3e18f0269b1a2f7b77de97fefbda193701ae639b4b4feb0760962d74dab95f"
    "nl"
  end
  language "pl" do
    sha256 "e190b258d7782fef617bd5b6bb5a439fda137d01ef8516c970d657855a115108"
    "pl"
  end
  language "pt-BR" do
    sha256 "357c84c045decad57102fdf7a734d9e766d995e82fbd268cadae649f533d120f"
    "pt-BR"
  end
  language "pt" do
    sha256 "a66063dcb709927088bbbb349c88d948cc932860ab776ac6a6a93c23ccdbb44c"
    "pt-PT"
  end
  language "ru" do
    sha256 "c032f76800b335a2cad65f8e4d8cd225a44e1386f6a19b1e885ed162935e4f6d"
    "ru"
  end
  language "uk" do
    sha256 "3a7c973e9000260fbf281045a56ed41f03cad9c1c0ca05b70f8e2db89aaac9e3"
    "uk"
  end
  language "zh-TW" do
    sha256 "a9fadf37bb22b8a9e3e8ecc39f7afd2f91ca7989f602a923681200a8c5409891"
    "zh-TW"
  end
  language "zh" do
    sha256 "93ae386b8fb673741e31afd0b822b7ecaa6a605a6e36c4fa976799b81cc264d9"
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
