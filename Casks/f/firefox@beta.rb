cask "firefox@beta" do
  version "136.0b4"

  language "cs" do
    sha256 "88c9ef37d55890cc229a6127aca94b2ee46559d34f493eb90c0cae6b77bf9bfd"
    "cs"
  end
  language "de" do
    sha256 "913272d19630bcce4c3d0a9d0a0a42b45b4f0c6e1c6f62f721ede4f130fab701"
    "de"
  end
  language "en-CA" do
    sha256 "79408bb8da479c7c0933ff38c4fc92193925ad45de3ac177e0ba5426594df3e6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6bfa5ecdeb47ae1f7601cb57621e518ebcd36116226a8d9da045d9cd5c8d0dd3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6fbbaacb34a76adc0968c66c26c159a552aa913382688af3ace08241da9bfd7f"
    "en-US"
  end
  language "es-AR" do
    sha256 "3df2a36fbf82ecc261ee4c98aa145fafef8fcbb913512e48393a2645999426b0"
    "es-AR"
  end
  language "es-CL" do
    sha256 "ecac79b0b948c8f8910c580be71876c7a581592b325579c9947c16758b405bbc"
    "es-CL"
  end
  language "es-ES" do
    sha256 "db300ebd4d7b03b435a9327d986b618fba981d94a9049d8795c5513c28a8eb27"
    "es-ES"
  end
  language "fi" do
    sha256 "ba134d30d2d707fd4ca966872323860de22cbab26e3e63bbd3ab91032f3a32a0"
    "fi"
  end
  language "fr" do
    sha256 "cbe18d3da34796da870fee2744e6343f41d353d30cab5fc25cacf2c80dc82e14"
    "fr"
  end
  language "gl" do
    sha256 "d318a58039e3f3ac6da6f5120a9e340c5e2d4479bcc22813d00a9b2b8772c65a"
    "gl"
  end
  language "in" do
    sha256 "8515fc9a26032af2ad04fb21175490494d29eb23fe1fe24ffe4d707af500b642"
    "hi-IN"
  end
  language "it" do
    sha256 "a6b151ad882d3f1bd955f08680c97fb44d6620332d035cca179e6ab46f86cd5d"
    "it"
  end
  language "ja" do
    sha256 "179718f0cbdf89f13a5a9df1598721442a1721447b67159496406167cfb7dfd1"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ac5904977beccf616250b52299ebd726b8258f97e6daee41eb17e99c963ade8b"
    "nl"
  end
  language "pl" do
    sha256 "91a6ee5b44c34ef4f235977af4899f466664776aff501cd75f792aabbc81abc9"
    "pl"
  end
  language "pt-BR" do
    sha256 "ad3f75e6ec81617e9d091e88a3644ccfb1245a73ddd2685f00721f08b282a90a"
    "pt-BR"
  end
  language "pt" do
    sha256 "3f380a6da3b2481e3126879060f5f56f69a0a85cfd88cd0857a6d3bf97976d9b"
    "pt-PT"
  end
  language "ru" do
    sha256 "823db2be0cee0116e032a5ab862e2c491a35e7f3aa8bf4b66a10d3d5b22849da"
    "ru"
  end
  language "uk" do
    sha256 "77670c3480cdc51b3a7214a961a8bd7fd58920a53e425be7d72c43fb86b26e44"
    "uk"
  end
  language "zh-TW" do
    sha256 "54a86ac60ecf23e44e6ffa0ef62779c3771dddb6418297fdd0f8d6de8470e541"
    "zh-TW"
  end
  language "zh" do
    sha256 "6e83461c0d8803010181910bc1ab20c6f7d86e0d6f0c6b34eb794bf512bf32ab"
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
