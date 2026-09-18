cask "firefox@beta" do
  version "157.0b3"

  language "cs" do
    sha256 "779eea6bf4f39247bbb89ba7a5c97e3cd8a867c531971a62a82fd12f13ffef4b"
    "cs"
  end
  language "de" do
    sha256 "3b3f131cd3ca7e8dd1711e4254bc3a04cf3960060ba2852bbf7b34852f16a396"
    "de"
  end
  language "en-CA" do
    sha256 "179f17a7f1692aa3b41d088e978749cca3e55a51bce2867dc79a6a537f126361"
    "en-CA"
  end
  language "en-GB" do
    sha256 "084fa20fd6119d8ab9f87a7a507d75ee5310caad7b0c9f86faa86d56eef64d7a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b33b9c08a87bb47cbdeaa57436c15b7e1d3a805c71594c31432d84e2ec701b49"
    "en-US"
  end
  language "es-AR" do
    sha256 "05eee3332709161278868b6f2b1e41b290b75436f9231ed58b539584e4850d17"
    "es-AR"
  end
  language "es-CL" do
    sha256 "9dbd6b28451dbd6821ec04d92db35e81e81736c44d28b2cedd19d805a8179f4f"
    "es-CL"
  end
  language "es-ES" do
    sha256 "1216bd70f46a8c6a5e517ab297e5808ff9aed42f49677c6c9f8cd51bf004da62"
    "es-ES"
  end
  language "fi" do
    sha256 "62a5679e94912acf189eb4899a5ec37febd5a93b8adcbdd176b42ce617e4f55c"
    "fi"
  end
  language "fr" do
    sha256 "28e04c2bb8a7bc9acfca18243a3ce3da328ff1c20015eb7aa3084a3d64449336"
    "fr"
  end
  language "gl" do
    sha256 "4d22ae456c6643c42bd985b6e11c96e4271b21e9ab23881817a0029188d2ebf2"
    "gl"
  end
  language "in" do
    sha256 "4d71c15a21fc63b2b42ab8e2e12e3432415c29647c0322b3d446a2361c4f08da"
    "hi-IN"
  end
  language "it" do
    sha256 "6a4fb5a3d2c0cc392b20e86ce06279ba04f567df3e100c7d6e1dd0e362662a95"
    "it"
  end
  language "ja" do
    sha256 "16b5603ebaea2c0070b7ec9908e30145039f0d621936aaf830196cfcb5154bbe"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ca96c2b05d26e80ea73b4a96bc8f5a0b644f5f257f5386e562a5dd16fbf0bb80"
    "nl"
  end
  language "pl" do
    sha256 "f09fc17a07f5991a2ff541715a85de881a77783de2e783a49d7d302f4217b11b"
    "pl"
  end
  language "pt-BR" do
    sha256 "f50bcfaa60a7a75b5cd13d0a2bd14059d0df5e4d55a248cd8fad4f6a22e0e280"
    "pt-BR"
  end
  language "pt" do
    sha256 "ad6e0f23f0ee491944bc8da58852844386900c576bed3dbcff05e6e9f0d2087d"
    "pt-PT"
  end
  language "ru" do
    sha256 "e4fb83b23a92182d0746cf11de8f0b43f7c37da46130e270bd1a1ef19c8eb807"
    "ru"
  end
  language "uk" do
    sha256 "531ef32ca4e309c437cc5ea54c8a5e2600d3608f9d58808d5b0a3d59a2b5363a"
    "uk"
  end
  language "zh-TW" do
    sha256 "dbce51014d4471153e5de54a4788511e6eba6ac41249c65d54084471df5fe3c5"
    "zh-TW"
  end
  language "zh" do
    sha256 "77ec988ed9d7251fa72f36d6d1a39914c80e0d312255fcc70f7b468cd6e2218f"
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
