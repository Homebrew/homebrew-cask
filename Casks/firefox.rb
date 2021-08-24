cask "firefox" do
  version "91.0.2"

  language "cs" do
    sha256 "376b1502dc7eaf4c95f540ded65243341e8c71e3e300865d1b4e9236e1ee72b9"
    "cs"
  end
  language "de" do
    sha256 "55383184f9a610bcbc48e7b2b03f46ab6533fc706d79919f160c6dc756d141f6"
    "de"
  end
  language "en-CA" do
    sha256 "e6881ea75de5e598c10e3c5652dc3e848d078fce4b68426e6600e42ae9aca09c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e8d112ce9bd26d9eadf1ecb84256cb9646440a55d4ef4594c5d28a168b254067"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4147fff1b176a659d6d4d928efe6ec98af313533508809264d78cc83c93cab30"
    "en-US"
  end
  language "eo" do
    sha256 "3fc4ac94604dfc8120428113490ee26c786f5c970a4149b8c4f3715001edb8fc"
    "eo"
  end
  language "es-AR" do
    sha256 "0ee30a920400acfe377881f0cb580e7d2bb582cd1d78be73c4f8b865934e738e"
    "es-AR"
  end
  language "es-CL" do
    sha256 "94454e80b8e60220cc895a40fa7e987a0199c02fde61da6d74056317ff3d1de3"
    "es-CL"
  end
  language "es-ES" do
    sha256 "c219ee9b42ce78a22407874032ed71273933d7e01cd1698039b97c66624cd126"
    "es-ES"
  end
  language "fi" do
    sha256 "63a0a4a8aae2482adbecdecbd66308d6355fdc2af5bd903eb58ed9f937eb6b4e"
    "fi"
  end
  language "fr" do
    sha256 "672b6652b25f1dee441cfa08b797ebbcc7ec22b0b62996903531c3ccf011f6fb"
    "fr"
  end
  language "gl" do
    sha256 "46301b2d237bef88ceb45c6d1a1ebe3f8ad0f93259e0c74ada3e5bf203b08c60"
    "gl"
  end
  language "in" do
    sha256 "7c1ba5e743a7e4e2ef6af187e86b56233e03b3074f98851a8d1a0c17ce699dc9"
    "hi-IN"
  end
  language "it" do
    sha256 "9754f5299aa395a4637cbdb4853cdd879e8607f70b362bedbcd98bd60128b673"
    "it"
  end
  language "ja" do
    sha256 "aa7a0098894e93373bee052afeb9604d6d307d7c967c5c5b3c502c458f08cdc6"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "538f3ba01f2c3b0bf92b1f7a8ddaa9d52a6d948c355275bff47e5d61b90d694d"
    "ko"
  end
  language "nl" do
    sha256 "55c49c62ac4c490060ee26f9f02c9aad1e7c219ee782c55bff089ccd00c1783f"
    "nl"
  end
  language "pl" do
    sha256 "c6abf7cbcb6c5c18f32340371c83f6255a0e5a1d985f217c26f33315d679f08d"
    "pl"
  end
  language "pt-BR" do
    sha256 "44cb2620f86339846117c4763bb1b81af2633242f8614ca10bdd0a32e407135b"
    "pt-BR"
  end
  language "pt" do
    sha256 "b8ecc455a6a719ebae428ccb81adafc1056991a006882d8ee15eb1639f719cd1"
    "pt-PT"
  end
  language "ru" do
    sha256 "720d260542e871c60e49d2f57403d11434cb3e84d046b6919b348c8c869c2d45"
    "ru"
  end
  language "sv" do
    sha256 "579865ed046a6ace9cf7314a0f583cef82d6198e39abf050fcb625fa3fffc552"
    "sv-SE"
  end
  language "tr" do
    sha256 "44e6f05d654516b3940434b9b0f745acd9b265d97c20948c55fee1ebcf144c97"
    "tr"
  end
  language "uk" do
    sha256 "0dc7c27f6b4eb5403553c4d2ab8a2dec0d9141896336fdab33f046dc51b62895"
    "uk"
  end
  language "zh-TW" do
    sha256 "71ad849412ea17fad6328bb845be7a433c647249a6933d9586640d196944018c"
    "zh-TW"
  end
  language "zh" do
    sha256 "f9f0fa1e1a4ac47599da6f8d74bc147d78a49d1d4661b9ed90dba763097b28b2"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
  name "Mozilla Firefox"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/"

  livecheck do
    url "https://download.mozilla.org/?product=firefox-latest-ssl&os=osx"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: [
    "homebrew/cask-versions/firefox-beta",
    "homebrew/cask-versions/firefox-esr",
  ]
  depends_on macos: ">= :sierra"

  app "Firefox.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/firefox_*",
    "~/Library/Application Support/Firefox",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
    "~/Library/Application Support/CrashReporter/firefox_*",
    "~/Library/Caches/Firefox",
    "~/Library/Caches/Mozilla/updates/Applications/Firefox",
    "~/Library/Caches/org.mozilla.firefox",
    "~/Library/Caches/org.mozilla.crashreporter",
    "~/Library/Preferences/org.mozilla.firefox.plist",
    "~/Library/Preferences/org.mozilla.crashreporter.plist",
    "~/Library/Saved Application State/org.mozilla.firefox.savedState",
    "~/Library/WebKit/org.mozilla.firefox",
  ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla/updates/Applications",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla",
      ]
end
