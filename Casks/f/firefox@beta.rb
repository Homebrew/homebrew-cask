cask "firefox@beta" do
  version "149.0b4"

  language "cs" do
    sha256 "0ab7a0929f4c74939cfa196b3dde6bdd14f21cfbdda82485561356f3c7b19782"
    "cs"
  end
  language "de" do
    sha256 "f7c221f01482bf03e19b498e7b49d5faaf8b24e7359711c0e7b26c6049d2f11c"
    "de"
  end
  language "en-CA" do
    sha256 "b323c214ce5b245f3e7d2dcff1aa8f3b79ca75c8ff3a137e8134dd20e3b785bc"
    "en-CA"
  end
  language "en-GB" do
    sha256 "33acdce19f2bc9cdb01a4bec51b43eb58a252a35344c858bcf8ce759b2ef304e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "69b90c44f1757f0ba0799e82767e38bac8cad4762de76113a14237190f9c4212"
    "en-US"
  end
  language "es-AR" do
    sha256 "2109d2fcede648f872051aa9fff39c371f3882b0858aff67914a9c0c2ba00860"
    "es-AR"
  end
  language "es-CL" do
    sha256 "da2c4e868359e4d46e1c5717f18559285ad7c5e9f2e6dd072d2fb6a4f94200b3"
    "es-CL"
  end
  language "es-ES" do
    sha256 "c4c6b7b54272021e54a445b5200d8588c91681ca35e30bd1c66296b473f2a9fc"
    "es-ES"
  end
  language "fi" do
    sha256 "7621a33becf29266497e4a2cdecef6e8f42d1804719aab4a29cd09ce81f75e79"
    "fi"
  end
  language "fr" do
    sha256 "8f345848f106cd4cff98d7e5272d9196a4a703275fa7f1b2e7303ae11a9054bd"
    "fr"
  end
  language "gl" do
    sha256 "6d1bfe09977d83e8e7a5400ab084c5ebf8f163c418ba0f162e284fcedf0b7edc"
    "gl"
  end
  language "in" do
    sha256 "f3244ac99bf93e0a94d3349a2ec507c4ff4a775ff318bc57225dbf31f1d0fb8e"
    "hi-IN"
  end
  language "it" do
    sha256 "f66bbccf5007aa8cb3db34b54720fd966a1212dd6e508e1e1778107d6eaa9efb"
    "it"
  end
  language "ja" do
    sha256 "23e07c3d09fdce2c6220adda53d7bcb2c4b3e06d4cfe7f406513fea49a47f14f"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "5275aeae2cafcd745f16f886d1ae4fc99b585f835b52c834a30403c483e23831"
    "nl"
  end
  language "pl" do
    sha256 "6cc573820fb9b80d1f7657587f13e89c67e76b5357e86b186dfc67fd4dccb3c5"
    "pl"
  end
  language "pt-BR" do
    sha256 "3d4930c592128848d6ead721d3c1a4a356420e5bc9892a16bc06bc0c07cbc0e4"
    "pt-BR"
  end
  language "pt" do
    sha256 "5783ce0eccf921efee56b23a7c7acbda5419b124b4b3ac5b2b11db6831c10257"
    "pt-PT"
  end
  language "ru" do
    sha256 "8735665e7a62d879fea43f45af2a8f4f6e0fecc9f685185d41ff69a368f4bd44"
    "ru"
  end
  language "uk" do
    sha256 "37fa59cd896dc3881fc02e6c8a293357a0ec68944e01c7fd5284165ef613a55a"
    "uk"
  end
  language "zh-TW" do
    sha256 "b0c4cca9f6b0a11d10b4d74a1f0f08ddc76a2467f7dfd8bb25118b0c6a37952a"
    "zh-TW"
  end
  language "zh" do
    sha256 "5d4cf2ab0316c54be704eb9a382585360855c0447668f4e313a3e041ca1efaa8"
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
