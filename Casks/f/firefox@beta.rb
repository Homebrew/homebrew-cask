cask "firefox@beta" do
  version "134.0b9"

  language "cs" do
    sha256 "07321b2073787c4346dbcb1ba3573b03d47a76f2845b8bdb63d930549f6541f6"
    "cs"
  end
  language "de" do
    sha256 "25f003faeebad0eff414edfbd71c1eca8d593b373d34d9c8eea88eac812ecad0"
    "de"
  end
  language "en-CA" do
    sha256 "74b057d4dc2faa7904458b8e1b0233c75bbb645153c58fd268d855fb2002520c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7a220a2aaf13d7eeeb22a1dee67590fa0112d5f11b05bb6b983f37c7a5e35a4d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "84146ccf7340adf279ee9caf06ee026c15fc79af786d3e000bf3c0fbfccaf311"
    "en-US"
  end
  language "es-AR" do
    sha256 "3b581fe2a1feb425c775dd094fe1ff8bc97de42370c6a470eeac9d16177eac93"
    "es-AR"
  end
  language "es-CL" do
    sha256 "87dc4b069aebfd98e0acfb9df798bd6a6ed4eb9da3b5415686b0eba2cb7e3603"
    "es-CL"
  end
  language "es-ES" do
    sha256 "5e9fa32c75aeb8df758344598292e399f8365794e8885bf99f601fd97736c10c"
    "es-ES"
  end
  language "fi" do
    sha256 "222357aa212d6d5d6ff1fe298aa44d23204b486bfbe9274ff64313b21a4f7663"
    "fi"
  end
  language "fr" do
    sha256 "327a8f44a30524fca10fd65c9c008619a414d7752886570866e1ed1f391b8fe0"
    "fr"
  end
  language "gl" do
    sha256 "2caa7c76ae8078dfed7cd556ea3e59e0b59910643b1f930b84fbec7e1237bff3"
    "gl"
  end
  language "in" do
    sha256 "999e42fc3677a4de652f278b4ac104d1a2a976ed0346ae6c205b3e9932588ee3"
    "hi-IN"
  end
  language "it" do
    sha256 "ac7d71dea928016e448fd5676db6a44134827f60a780ba4f0b1492bed590aeda"
    "it"
  end
  language "ja" do
    sha256 "80931d9e48519bc6bd81c1652844c998d7a5704343bf35c15983741d8cee8f12"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "1c7c4e15bdd902e5aa56fa9b4c3ef6b953544b4dba1ab93524c3d18a4c422a7f"
    "nl"
  end
  language "pl" do
    sha256 "2aa12a604de9d52ae0923525b22be8f53b98fa3f0a3cd7b6b30fbcb8a2c099d2"
    "pl"
  end
  language "pt-BR" do
    sha256 "02f5ede4b7ea6feb403604c31bad09736278798b28a9ec08c19f0b98d22b2811"
    "pt-BR"
  end
  language "pt" do
    sha256 "d61f6424403b34e35aeff8f0e8ed086feaa3e60ad546c06c1bf259f38560fcf8"
    "pt-PT"
  end
  language "ru" do
    sha256 "546c431694530164bc14d7c7f71b086ed51d9c236100244c3243fd005a3dba13"
    "ru"
  end
  language "uk" do
    sha256 "140dece582162649b45cba4a0c426128aae9a4fe3b0f5147e2dea792cb5f5072"
    "uk"
  end
  language "zh-TW" do
    sha256 "f9a87668e5d6de070878b4b659d9b900bd35c6c43e80bea31116c9af25c4f900"
    "zh-TW"
  end
  language "zh" do
    sha256 "6e8546df978e4d147846082d9cc35363716f72be1561f7331042cfd2ea9bc75c"
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
