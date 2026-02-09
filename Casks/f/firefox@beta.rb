cask "firefox@beta" do
  version "148.0b13"

  language "cs" do
    sha256 "8b04510307b7010eadd60232ab92c82d4953884379df50412a64349b5ec4b354"
    "cs"
  end
  language "de" do
    sha256 "5bd9186f7b7e8fd186479aa357d2bd6c166503516a1646cc1a8c857fcfc76f86"
    "de"
  end
  language "en-CA" do
    sha256 "8205dac9f2adeb8383398b6e6be136cd90a19891691ff746a9586fc986c82003"
    "en-CA"
  end
  language "en-GB" do
    sha256 "fd602e95d928dedc773af3d07547738d5a1aeec5e0effe113a4ae233e34795e8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b724cf976a0e9b8493ddc9e32f6fd9178435b1c7d959f88afe87438b6b3a7c4d"
    "en-US"
  end
  language "es-AR" do
    sha256 "e7b000283ec7c8ab9c33d8234d1ef543f6d5ee7d86cb3ac7daf2589c3ba6c0f3"
    "es-AR"
  end
  language "es-CL" do
    sha256 "d01695177269cb174b4c4cfc0bb0136700d52065b2540d7757a6560c18717938"
    "es-CL"
  end
  language "es-ES" do
    sha256 "36d033723d6795a00ed3cb596c916f7e96bd9e2011cd00f311036b6bdbd030ea"
    "es-ES"
  end
  language "fi" do
    sha256 "e3fb9fc143aa0055a79c391368bab17aab004e49a7d45da258d1d2f83bd20aeb"
    "fi"
  end
  language "fr" do
    sha256 "515e61275c43f024df6f0b101b1f835b2799839ed8420db6f75cd66f90dbd86a"
    "fr"
  end
  language "gl" do
    sha256 "b1d1ffb68f14a95da79294cb17eb218d83e2f29d60842f7ced75d1fe4ccbe6d3"
    "gl"
  end
  language "in" do
    sha256 "742e78aa6d012ed13be7dac67811d59002b8d4132d27d864fe342d3b1e6d4af2"
    "hi-IN"
  end
  language "it" do
    sha256 "2cf30073d545da241ba5c8f3eaacd3a5ab067c72d33ff5a8f43dc42151a27f12"
    "it"
  end
  language "ja" do
    sha256 "3c5fffc582984def63877ce82fca04846310512a4a3e4677473d111aa1dcc5d6"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "4ac0b486cc3cfe00811dc0f5a61d1eecf7ceb3dccebb06354028230ee5e709bd"
    "nl"
  end
  language "pl" do
    sha256 "4bb1b21032dd32823391895dc01bc33027b2e186c77f70f468447f239e1cd31b"
    "pl"
  end
  language "pt-BR" do
    sha256 "517360c99276ba392a395509241529af703a849479b08dcd912ccd1800291b44"
    "pt-BR"
  end
  language "pt" do
    sha256 "27ff5086c20b289024036edfe74fb1f6c5a8cdb243446225aba32a41abe87470"
    "pt-PT"
  end
  language "ru" do
    sha256 "8af63e7a7e2c16e2c184c51a986751a3aec7cf507574b82a71ce2cd6fbbb0836"
    "ru"
  end
  language "uk" do
    sha256 "b0d76d797c7d2d83770b20144eeef3cb7f52b10eca1200efcd96ec0b5ad662b3"
    "uk"
  end
  language "zh-TW" do
    sha256 "e3ea8eb01ab6714f901a43ca40728fe59dfdcf8cfbf055272b24d846a44d4707"
    "zh-TW"
  end
  language "zh" do
    sha256 "889e8ef974f4fd2630c28f23f368f97f1f1ab66a71c6b8283852329771325ad6"
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
