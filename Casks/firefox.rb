cask "firefox" do
  version "86.0.1"

  language "cs" do
    sha256 "a5340267ff8bc9cade62227b848638168d6abbf02a60c11bf37d567a4e9fca7f"
    "cs"
  end
  language "de" do
    sha256 "659daa8454f663ffe6ba6532b282706a8ee3bb418a6641ab3bafb776f0e68bd1"
    "de"
  end
  language "en-CA" do
    sha256 "55c4b0d6bc05ba6e38a5724ab597b30da292b72dd48034f27e8f71a6d7a72e40"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f6910a179d778c111efb71d50c64a000bb03f029ca944e2975f946fc25f979bd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a3ef9a7fc731fa957fd407fcac00b86621dfdb448fb76869886f5e1ec22fa5b1"
    "en-US"
  end
  language "eo" do
    sha256 "53dcdebb4c4f91ee0a0e3b36a5689f3a43ee16fe5c02a3aa0a00e0ded0b3bc76"
    "eo"
  end
  language "es-AR" do
    sha256 "89f11eb6e0196a133436f28a55ebc565b7c9e9a2a6e3346f0a683a8c93f8b2c8"
    "es-AR"
  end
  language "es-CL" do
    sha256 "610213fe27f4512426ad2585d924bdb0319b4ef6024b90c3d98d6cb194ffd771"
    "es-CL"
  end
  language "es-ES" do
    sha256 "ae66007b6b458c79d0b15da9304df097a21766e6bb3d91536549d6da2cb7ee58"
    "es-ES"
  end
  language "fi" do
    sha256 "62d61c1294699345435cbb77a4fa378b1ec269e251c0dc5c043768bf69fdc9b1"
    "fi"
  end
  language "fr" do
    sha256 "435245ac49ba32428b0aea35a21c74fb3e36274ca247df1f7277534c5de77039"
    "fr"
  end
  language "gl" do
    sha256 "a68a73c8290a0745e6f1ff9b1d3e3570a75a72e945eadb7248fa46d48f40f9cf"
    "gl"
  end
  language "in" do
    sha256 "658c55e36a35f57b113da97e869993b0ee755987d28fc03989ba023ec7363335"
    "hi-IN"
  end
  language "it" do
    sha256 "a6466972fd6a56d6e4b9fbbb2b6f9e83d1002df51cbdfdf23abf1fbe952cf37a"
    "it"
  end
  language "ja" do
    sha256 "4196d09d2aab64c09fa835ddf012abe61884979140345c789ad53a642a84f845"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "26ae7e1e43a6f5adc83f1f276de2697bb80f2e71576fd97d814fc99750819c5e"
    "ko"
  end
  language "nl" do
    sha256 "7e0d1544140714041b74e0fed75c521e97c21493185286855cbfc67d28b6c054"
    "nl"
  end
  language "pl" do
    sha256 "5d1bf7306a4701fe6f891a8c8c6ad056048cd3f6a83ff7abf40691dc221f5c27"
    "pl"
  end
  language "pt-BR" do
    sha256 "3007328a941245e48eab4732cebfcc21230414fdeb2924e8d3e13d78a0adc70e"
    "pt-BR"
  end
  language "pt" do
    sha256 "320d5a030cb249addc4db2f8fa4d46fabc75f25e3a3c7546cb1f78c3dfa942c6"
    "pt-PT"
  end
  language "ru" do
    sha256 "26566e5efc5655e63acadbdcc1fc1e97762c76a00980d3dd1f610a1e37b9fd2a"
    "ru"
  end
  language "sv" do
    sha256 "b9ed201287e5247f39309d6fc5e2e25b8bdc4ef8ac3a1f01f7ba3e6df301b4cf"
    "sv-SE"
  end
  language "tr" do
    sha256 "4660537430d9020fcb875033202fc098426eaf0059effc5989200c36973f787f"
    "tr"
  end
  language "uk" do
    sha256 "694461cb846d34340e3bc51e6d504bafc03560d3f1b16029b4119660b17733a6"
    "uk"
  end
  language "zh-TW" do
    sha256 "04d05f10153e0707834e3f858a71eb51b20bae52780627436429c4f17629f5d9"
    "zh-TW"
  end
  language "zh" do
    sha256 "581bf65ba09af0122a141b2394584c7f7a5335f48ff3dfcf368b93555c289d1c"
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
