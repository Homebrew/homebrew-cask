cask "firefox@beta" do
  version "144.0b4"

  language "cs" do
    sha256 "4eb043460cc43bcd72682bf47dca28c588cc6fa0190dc829ae6e4ebd9a3242ea"
    "cs"
  end
  language "de" do
    sha256 "70e6df56c726604e45d6c3e19599ec30eb18f0de8baa4f6be2a94f206c97f487"
    "de"
  end
  language "en-CA" do
    sha256 "b6d680d6d1fc4b0b5e4c1f39b1ce639b4bd03a794515afb5e78c050468c6a2fb"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a945c3a6bfc4e5e40c18f79d5f93c4a89dc15f03d647239f2b0fe3d543661a90"
    "en-GB"
  end
  language "en", default: true do
    sha256 "71b949952ab8bbac37432d3b074d05cf1ddb227c03c00696b3a000ea29780cdd"
    "en-US"
  end
  language "es-AR" do
    sha256 "66630c46e81b1c891135fcfcc82d8c94b43962686366084884cbb03283bf57da"
    "es-AR"
  end
  language "es-CL" do
    sha256 "61d9fc9bd1059447e5ccbce9ce83fb841167106ab5bc266841b477b319f95a34"
    "es-CL"
  end
  language "es-ES" do
    sha256 "a0f83c12f18f43eb847d9c2b06c4348fa3bacfe5986afa9e42634167da9eecf5"
    "es-ES"
  end
  language "fi" do
    sha256 "3565454c644b60f45d05ab18df01c27be2beca6fe33ab382d10458c372092913"
    "fi"
  end
  language "fr" do
    sha256 "76f77d26dbddaa3e80123b81adc664d9eac074b543c9a5567489bb937773380a"
    "fr"
  end
  language "gl" do
    sha256 "75e9c7c971c9a7aa9aa4dbc6ba5ea943614cda754347e08403bba83ec9ff474c"
    "gl"
  end
  language "in" do
    sha256 "cbb385425e10ed71b6296d1f7c2bb8a41117d4e5d9c568cd31badb971d16532e"
    "hi-IN"
  end
  language "it" do
    sha256 "482ddda0224632fa026f1ecc2ac5acdc6e48efedc8356b6d267b3a41e0592793"
    "it"
  end
  language "ja" do
    sha256 "fe83224e562e6ed0df33de51912fffabbeabda26a44b70965903f2148d586f9f"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "46b6e2b38c0ff5e17ad0c94a108b4c4e525e35550c392f0315af0404a8faa5f2"
    "nl"
  end
  language "pl" do
    sha256 "cad5ff112e99a6f64464b47aa2f2fa6acd4743de83b095f209a77d8527589951"
    "pl"
  end
  language "pt-BR" do
    sha256 "bbcdc236ca818a95f832e0ae27b8c337bbdfd9c93235a046bbfbae550e1ece1d"
    "pt-BR"
  end
  language "pt" do
    sha256 "215cece2c7064c769c0dc8ff39876e6820390259620d616820637a93f3f66cfd"
    "pt-PT"
  end
  language "ru" do
    sha256 "414c1662ec3aae92e4da160903773dcf03c97ae6ac93f76b3113a582f1b96c79"
    "ru"
  end
  language "uk" do
    sha256 "2b857f738970d2d4c4bd9a76f0778c38f9abbda78283c356fce544ebea973e02"
    "uk"
  end
  language "zh-TW" do
    sha256 "196faa70ff49e883b4139080557404b003ae5aa675797ddd67aed86c9a2959d0"
    "zh-TW"
  end
  language "zh" do
    sha256 "57cc3869dceb994aad100416d2b9ed69f15eebd86accedb842ad579827df470b"
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
