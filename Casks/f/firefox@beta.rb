cask "firefox@beta" do
  version "144.0b9"

  language "cs" do
    sha256 "fa92e53743e3fface7c605c56b9cedaa31ec5e5937112f2dcf6b9d3bea829be2"
    "cs"
  end
  language "de" do
    sha256 "fc78a8667b4559bc3d774a176468a3752db7e1d7bae1d769f6cf11661deb7b3b"
    "de"
  end
  language "en-CA" do
    sha256 "f8fec2346eaa20a237ec6909bf263c4f2da27b1158b7db569cac7fdc1c681358"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ef329679f1d4020bc5e7f899b50634fb8320840652a19e616abaa0d5c6657cc2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "187cbf68493ad11041c47759fd2da68f79174a2317c171513324aff461c30664"
    "en-US"
  end
  language "es-AR" do
    sha256 "c79fa4939251d7fc4c798dd7a4475c80948abffeb8a418c7718387ee41acb441"
    "es-AR"
  end
  language "es-CL" do
    sha256 "938edc3460714d1b87ca9c063545e3fc62458d97a013c7f363691b96b153a520"
    "es-CL"
  end
  language "es-ES" do
    sha256 "89bdf7ca221f0fb05d0853a0cc62f0167522e4d38ee1bc7dab128dfbd180d57b"
    "es-ES"
  end
  language "fi" do
    sha256 "617063103cc013adbe1c51963c3ca6bd1f8d5c149366ecf89bb84b1d76cb3750"
    "fi"
  end
  language "fr" do
    sha256 "796381338c1943ecae9ade4b52f272a5e0b8bc59d5c43afecdc6c9dd8b0809ec"
    "fr"
  end
  language "gl" do
    sha256 "c256e1070088f888fc91231a4547180b1fc6d455ee7df44d1f642d410c0c8559"
    "gl"
  end
  language "in" do
    sha256 "640adf3c5e728e9883181529bf3c73c845ea266dc807aca2c82512d393301896"
    "hi-IN"
  end
  language "it" do
    sha256 "ca4858e61d61628ae1be2b4fd5e0464e47da755c6a3e1d0b2aa46efba479cdb3"
    "it"
  end
  language "ja" do
    sha256 "5d743269762a96606e179cf3cb0d3ebd5ed77af8c70ce533a13ab31808595c61"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "d36d6869b43610fb008d4a850059b07768bbd4d51d126478fe439c4ac4e54891"
    "nl"
  end
  language "pl" do
    sha256 "4beea7de596d1bb7eababee76d569058e66f1188c6ca01513e1300668807ba7e"
    "pl"
  end
  language "pt-BR" do
    sha256 "40756a7682dca86b773862f287fc1b5111156b599dfd14f169d56b490fd7997a"
    "pt-BR"
  end
  language "pt" do
    sha256 "76957a946db6f514f7e1927af037ad88bb4ab1ad8192f15dc41becb983585d64"
    "pt-PT"
  end
  language "ru" do
    sha256 "4bea6de0d26e790703ce6884f75d5e86de78ebc65d7ab725a407d27a2770ef00"
    "ru"
  end
  language "uk" do
    sha256 "e4ac3c24c99442f1d9b8bc8e8bfbe6e241c6d5e84c250af06ca18a5deb628ab6"
    "uk"
  end
  language "zh-TW" do
    sha256 "82224c6001f65e92d20e7d5f83ab4863eaeadd16e644efb45a7e39fb7d5a161d"
    "zh-TW"
  end
  language "zh" do
    sha256 "8f1bd5b29b6e604cccfa14fd329ba8a93ca96ef4c9961011ba42272272b531e5"
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
