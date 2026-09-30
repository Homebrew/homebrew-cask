cask "firefox@beta" do
  version "158.0b2"

  language "cs" do
    sha256 "379d903a5a00935fc45ff230cd5ffa2e05fece64a1593bfd694142a7cac57302"
    "cs"
  end
  language "de" do
    sha256 "af761b50cac47ead7562bb3d2a54659c0c5084d1b7052fb8ce0a27ddc681cc1d"
    "de"
  end
  language "en-CA" do
    sha256 "0f41ad720a90b9673ac0e452375bd2bd4507d4beaaa7d75b371e6c9986c659a8"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0ce737f85e481162c1af671f505ffcbcfe5ffc24fff0698cfe4ea3a5073586db"
    "en-GB"
  end
  language "en", default: true do
    sha256 "72a3ef65e72f38750ff51cfae369b40a8e8cc576044e313713fdb3a57de4ba09"
    "en-US"
  end
  language "es-AR" do
    sha256 "0bbc0b7b07b6ef4241e559bf580c33d5c49bf90eea164b59bcc39139121cfd98"
    "es-AR"
  end
  language "es-CL" do
    sha256 "e47260b44cd8c5d4a3a07cf98d5c25fc78b0eefa525a5b8a3fb22634c910c6e0"
    "es-CL"
  end
  language "es-ES" do
    sha256 "1a0422d26b8f9c71660b7c5e2e119a6e38412c4bdaa2ce81a22798bb2a6cf17a"
    "es-ES"
  end
  language "fi" do
    sha256 "2bb408729de0f0f9f6b7f9c7567826498b336b2d634c3231445e478957d98fd7"
    "fi"
  end
  language "fr" do
    sha256 "0b2bc60a1d200b6675bf632893a80f22e7edf425bb31bcaef95395f5f9b63d6d"
    "fr"
  end
  language "gl" do
    sha256 "fa2dc2d19d137b5c83e9ca70b22e9368da76ad1203144c59a505227c6330a4b6"
    "gl"
  end
  language "in" do
    sha256 "192efafeacbb75b9c5fce97bc9bbea133914ca243850580ca08a4aa78c2498ad"
    "hi-IN"
  end
  language "it" do
    sha256 "3c7d64052fe8a6e938bb49895fda4adc1c79b11e283416801e8331a2a93f89b7"
    "it"
  end
  language "ja" do
    sha256 "9c00b64920a8a55da957c02782f4dcdd397cdf7156822c4b1f210b7847a31c17"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "1451aea4c2f3788aaf1251c779c800b7bdc53eaf158507e56140e6d8b6833e75"
    "nl"
  end
  language "pl" do
    sha256 "be4a5ed9ec189b733b8d5ab7fed73c11940694f1de5b7f541041f287ef1551db"
    "pl"
  end
  language "pt-BR" do
    sha256 "134c962d81b4e6b6982ef730dc115a918fdcb2f67fc12a077b3f1b48a2cc7aa6"
    "pt-BR"
  end
  language "pt" do
    sha256 "6c67eacb7075a6f64fb69318cd221a4845313b8882beb0b8272f578dd3fde8da"
    "pt-PT"
  end
  language "ru" do
    sha256 "99b467daafbf185913ad3a4216783a1ca781318fc7b56317d742bfd7fc8e9c52"
    "ru"
  end
  language "uk" do
    sha256 "153cd96fe63a02c4b411907ad82bc9f7db54f9cae7d9bf35fce485aecfb809ee"
    "uk"
  end
  language "zh-TW" do
    sha256 "eeb81bc675d4df8946d51e8c139862716ac3cafd0370dbe852de4a4da15836e0"
    "zh-TW"
  end
  language "zh" do
    sha256 "1126cfe3c77463a0b41688495369cce907f97cda95170edffdac06fd625537cd"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
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
