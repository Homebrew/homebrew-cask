cask "firefox@beta" do
  version "144.0b5"

  language "cs" do
    sha256 "3956161c1880cad77bd90e653531754c101f98d460bf582c7f3a3dab88ca5b7c"
    "cs"
  end
  language "de" do
    sha256 "dcfc8d6475d127218f16cd0de993df5af4c49a705dd0493c01c2469386e5e08c"
    "de"
  end
  language "en-CA" do
    sha256 "95758999dc79794e2fe52d64f5ca7a631513ae15ec3e999288a4628381a7bd6f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f7595235aa1c47b35e482f98e33186df3ca83198e17eb04d34f4d85fcdd4ffdd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "195a0ae5efde5343520c3658ed1d2818f4ff56f35f0229a777b96f7eaf888bec"
    "en-US"
  end
  language "es-AR" do
    sha256 "6c0c0137e74ca60bbe99546156f25442be8c7b491fa5d8313f2713d6e54c7a2b"
    "es-AR"
  end
  language "es-CL" do
    sha256 "41c4bf186adb26c447bce251cbbd573bd5ebf368c85b7e592d4635e21278670d"
    "es-CL"
  end
  language "es-ES" do
    sha256 "86c54dfccddb451524baeb5f66cc3b23fd35ddff3afc69f7a077263c8d4dc76a"
    "es-ES"
  end
  language "fi" do
    sha256 "1cddd994f0d462ee49a2ae17d2b16cbdc9dd365cd6421fca4695f5b0eac48c8d"
    "fi"
  end
  language "fr" do
    sha256 "1b7605f46ea1d7cea62803bce571a3385c9fd778d6b7071a4be09e298e73a4d4"
    "fr"
  end
  language "gl" do
    sha256 "223937d1a32dba9dcd91bdbf08c1deed33b5bc3a656b948209cd9525a765128a"
    "gl"
  end
  language "in" do
    sha256 "62cb03131097b33cb75f4d8bec540a7997a7868543da93dcfd70c5b9d506541d"
    "hi-IN"
  end
  language "it" do
    sha256 "971ac0ace7d023e512b7f751b1c3c1a1f1f28145986d290a132575eb2993d6d0"
    "it"
  end
  language "ja" do
    sha256 "3f78bb05aff20c93b3d15f85dedb338a0a18667bf49cf4239b95795a6ee55c56"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e8c7958976157be6a0b239987f81e3800c0914753e6093ff581e947edd3e5598"
    "nl"
  end
  language "pl" do
    sha256 "a319bd0c4592883c5a35ba35b2738aa5e4e35a6ac576aedfa3bbc635f65bfe57"
    "pl"
  end
  language "pt-BR" do
    sha256 "3c45ccdd6111b502d2f9febe9a3dd016d99d52b4dce276a2909bb26ffe0b065f"
    "pt-BR"
  end
  language "pt" do
    sha256 "8e1efaa1c454800d628a82824909ddeec326c0bb3207d1acf2d4c79748773a0e"
    "pt-PT"
  end
  language "ru" do
    sha256 "51745cefadd847179915c0a139b59ee4e6b10df255aa14db15de3b5c5b17b871"
    "ru"
  end
  language "uk" do
    sha256 "5e72a1ef6112e2acbd97eed19592277d6b7c245d839296262b6b531429679d32"
    "uk"
  end
  language "zh-TW" do
    sha256 "36b0a59f7c144fa70f92bf76711924b53f05982c69a4678381ece5194d793e6f"
    "zh-TW"
  end
  language "zh" do
    sha256 "61804e85519e7a8206da10d47e9a1cfb90fc29ccc893a836908a5276317560cc"
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
