cask "firefox" do
  version "91.0.1"

  language "cs" do
    sha256 "44f9c1c5e80f8b76f64eb04c834502c98d30f6568d3a896a3ee90952023596a3"
    "cs"
  end
  language "de" do
    sha256 "69f2f4589bedd57fc6dcc658d2dfc91ac9d9e92738b32e7a7cc7509ee3ee12bf"
    "de"
  end
  language "en-CA" do
    sha256 "00bcd6a74e09c3f3fe60891a14a18553157eb71c95fbdf08f5d6540d75ab00fd"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d56cc7a2d1dedd0934ba7adb511f3537b5f0a82364ef6e65ed72e80e8e9e6191"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e743a61b30561d323939bf238f13008bd89fbadb71553ef1e2f0af8ec1b7fa28"
    "en-US"
  end
  language "eo" do
    sha256 "ea3bbf7ba2918e08dc0891d4523f9f612f625693b395b94b56e2d7b5f85ef56d"
    "eo"
  end
  language "es-AR" do
    sha256 "dfaf08aa13e4836f587b7a59c6aeb7984a8b9a9ec51d50aee4546862f7d35811"
    "es-AR"
  end
  language "es-CL" do
    sha256 "f7dfeb6e41bc29f0140f869147b1a31f1bed035b5a93881525880a94146f73ca"
    "es-CL"
  end
  language "es-ES" do
    sha256 "6131a3c16ddef71950751b5c695802d43e6de508b11bc85745948186d85f653f"
    "es-ES"
  end
  language "fi" do
    sha256 "6ee225b1af5264eeeec08a1388ef27daf8944e3535abb4faf063d7e3d7e5c9c1"
    "fi"
  end
  language "fr" do
    sha256 "b9ed0f24ef8f1dc12d46106d7cac0aa633da5a2f6099468a4aba8a02263a29fd"
    "fr"
  end
  language "gl" do
    sha256 "c66cc5754bebe9f889765a71d9b90d27061e5f188f0155c28271d0ff3173c32c"
    "gl"
  end
  language "in" do
    sha256 "60db2d86a7e1a8a260907ffdbdf95e69c824e717835540c31cc18e03e64caecd"
    "hi-IN"
  end
  language "it" do
    sha256 "5e2c73ad47d80dd5f83e1ad611a53002a8a165733d2f0df09f4471c4eb6635f6"
    "it"
  end
  language "ja" do
    sha256 "ec17f1b4371de26da5cd7225f5817b424654abbfd3df45c671b51196d1d102bf"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "92b044c5524bf6f8ac15589f42dd72f9b37d75d7adc21e9e7b3d093501da759c"
    "ko"
  end
  language "nl" do
    sha256 "99858bac5c18f479621dd3148b3cdac810e85e38e83db010e94c8ec31260f13e"
    "nl"
  end
  language "pl" do
    sha256 "872a47df1c5a37a6600bd05eb175cb9dfa32e7d49873109d2ac936ec255dba37"
    "pl"
  end
  language "pt-BR" do
    sha256 "6c4f29e3f8dd27f9ff87c6cd7bcdbcf5348aba65e4b0328e055bb5814ff922ba"
    "pt-BR"
  end
  language "pt" do
    sha256 "93e0c287f060bb7a9ee7b2f566e5aef3e7d60bf520d8575d9fc5ca70508d1097"
    "pt-PT"
  end
  language "ru" do
    sha256 "b394c70f6bd8431c9ec349ef92e177a8e91eb669a2e4aadbd68184ebf8f40573"
    "ru"
  end
  language "sv" do
    sha256 "baaafe2ccf39f3c71e1ca3d3a4e999b2f502568c26c5aed2f3074eaaca88a609"
    "sv-SE"
  end
  language "tr" do
    sha256 "0477df0c332c14f2eb3a6d96e5ab44131a5a7377e6961f30db29c120c7a05256"
    "tr"
  end
  language "uk" do
    sha256 "dde10c155d431a1b0c2f4b7456eb19da031d95c6fc7e25de013f121f40738e5f"
    "uk"
  end
  language "zh-TW" do
    sha256 "8b9e295859a0bce098d523b5dd88b0fd09699ff1e92d03023369a2cddd5f9db3"
    "zh-TW"
  end
  language "zh" do
    sha256 "2b4e630662cd0aff95ab211db23b59867fe9b98d5578bbf81dd5536c444afd9a"
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
