cask "firefox@beta" do
  version "141.0b3"

  language "cs" do
    sha256 "5152a023a73ed8da2b9d3ec6f04a3f809759da3b4d3df1986dc7bff370ff5c36"
    "cs"
  end
  language "de" do
    sha256 "10e88e7a6208e8f27bce7d653e193e41093bec2c2f05b98479adcb6dcddaed3e"
    "de"
  end
  language "en-CA" do
    sha256 "e3b85c17cb8df863894b9807bf1e6a75f1460c9ad137ae5d3769207db79b1c01"
    "en-CA"
  end
  language "en-GB" do
    sha256 "437d73871ff81a912bef74199d3cd307aaba4d315ffde96673e2f83ca29e2537"
    "en-GB"
  end
  language "en", default: true do
    sha256 "47dc6a456bc80baa784381e94f4dc4f2f7ddfdf94b0af0bb20d9678f16d28898"
    "en-US"
  end
  language "es-AR" do
    sha256 "93fc5013c0bcf5599aedcfba05b76b11f598c7cb12ac90a90bea5f33e5c25032"
    "es-AR"
  end
  language "es-CL" do
    sha256 "d22a683e8ef1cec00732bb573d90b855059b2af303fdc2d34eaf9b227dafdf29"
    "es-CL"
  end
  language "es-ES" do
    sha256 "7b83fe0ee907080a203bbad80dcd8adc4adc972a8ce818c22d5baee29f3d81af"
    "es-ES"
  end
  language "fi" do
    sha256 "4fbe1791e9b8f5b4e3f93cc720212d6fa206749a7a7ad526f3807161d78dfdf2"
    "fi"
  end
  language "fr" do
    sha256 "33f10473bb10631046a884cc2d4d4ca7ce9fe6e96495e25fcebd168509de6b40"
    "fr"
  end
  language "gl" do
    sha256 "7b1f7daddba1936adb7d2d8c69da5e90a211d530479c512dd57a806af077877f"
    "gl"
  end
  language "in" do
    sha256 "24de17fcff4220b3f8017c7da38bd905963141419173a09b2f1f80e2eac657a1"
    "hi-IN"
  end
  language "it" do
    sha256 "a3ee912b5792a75fdf553043dc1929540d0b28d7c34def2b997898ab16fc8fcf"
    "it"
  end
  language "ja" do
    sha256 "a46e688ae19479a2307bf6bd77d001e9e7aab8807ed46e0fa7d0d286eccda484"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "6c485870ad795bc2292a7d066969734c08b0a2753793d49470e766af31fc0237"
    "nl"
  end
  language "pl" do
    sha256 "837221d2e08a50177d24d7a452a7b74eb2780ab1186ca98f24a42e7e5a2c5020"
    "pl"
  end
  language "pt-BR" do
    sha256 "d813486a64ae477cf1fa684306c2c48babeaaaefab5ddfb4d2913f2bebe47245"
    "pt-BR"
  end
  language "pt" do
    sha256 "59d167b14fcdb56448330ced1cfee0c2ffc15c4592a0578224f6df854d3cee8c"
    "pt-PT"
  end
  language "ru" do
    sha256 "717a0719ed3721a35397f513f9c3a14e00f0d3b035850421967c7f28a0df639b"
    "ru"
  end
  language "uk" do
    sha256 "cf4510b457de302c7eef5f15a0697f1a28d37d5b399d0cd6cacaca237da6f57c"
    "uk"
  end
  language "zh-TW" do
    sha256 "750e256e3e1a77430e15f806e2d8373bba2ffa0f18266adad3897d9f097169d7"
    "zh-TW"
  end
  language "zh" do
    sha256 "4a5daf386b31860f7783678df65e665db459f91b4d3a7fc6795c630b5f66581b"
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
