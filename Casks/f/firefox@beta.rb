cask "firefox@beta" do
  version "158.0b1"

  language "cs" do
    sha256 "2fbacb38320eb4b240d2bfbe420a5072a1659be88d7e51753be22cef3b2040a3"
    "cs"
  end
  language "de" do
    sha256 "9b45cd3a0be2bf41efd8238ff03138262075690cc0baa53432bd9bd46f732711"
    "de"
  end
  language "en-CA" do
    sha256 "7adb6211e378cfcc24144c1e18ff79d027ee69de11e24d1bc79c8c9a2bad90f9"
    "en-CA"
  end
  language "en-GB" do
    sha256 "784eac160c80d262cfda2dfa4de49fb0e2c930b3411f7a879bddc17423b0d7a4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "08cd669647cf65905cd5911e211fc0d5424b0389a20e7f640ec7a07b620a64e2"
    "en-US"
  end
  language "es-AR" do
    sha256 "342baddd62d3861535b4f2aee602347ad6be61c53b3e53302f48ac68fe207c54"
    "es-AR"
  end
  language "es-CL" do
    sha256 "7b6ac89a2ee7f026c5d3fa9f6803296557574dab6acff31a787c19519e41e9fb"
    "es-CL"
  end
  language "es-ES" do
    sha256 "f4adcf9e790c15b860f119635686999249989fc74520c650aa76a4fd056faca5"
    "es-ES"
  end
  language "fi" do
    sha256 "f9a8d648f4a217d28667bf0ef1385d74418382660ec4a4d1d036c64f0941881c"
    "fi"
  end
  language "fr" do
    sha256 "54a81fd61eba1cc77e6e822a0dae2070c7aa6b57dc14c79f15ca1d3f7627167e"
    "fr"
  end
  language "gl" do
    sha256 "b8bfb1c808eae3787f9fd8c81ae077d816cf7c796507919f9cbbb41c02a9a1e2"
    "gl"
  end
  language "in" do
    sha256 "50cd279fa4cd990272d71f5e40fa519c7222ccd8453dc6aa11d16ae71917a463"
    "hi-IN"
  end
  language "it" do
    sha256 "a86ce1dcf00af19f34966a62c5a673af1227272987834a663af530a2899fea7f"
    "it"
  end
  language "ja" do
    sha256 "e0de2e6bdbc8f9b69560a6a10d709c3f80dc8d21a136f10880c9e432742adb7b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "d0c05c7f032ef2f6877aeca86689c7d412ac472a9582887266e22dbc2b4f5c2d"
    "nl"
  end
  language "pl" do
    sha256 "7e7a20e01ba54c1a8ec90aa38889d88930a9064cc2413a3cf3dd518248591775"
    "pl"
  end
  language "pt-BR" do
    sha256 "8212b0ff7500b3832d7fe8725588cf0f6144e23188c6182ab8976baaa1b263ed"
    "pt-BR"
  end
  language "pt" do
    sha256 "862bc1bc4efc68ad0fcfff263b080e16c6a6fade358397a898f9f58521fc7811"
    "pt-PT"
  end
  language "ru" do
    sha256 "cb2e9ca5d0f46fde0ec21af0544b885a30aebc0bc574ee83d04996e2003a87ff"
    "ru"
  end
  language "uk" do
    sha256 "ebcb9f2b483e3a64c34da2961653e45c09d7eba6d6e5cfacc3f9989ff0753f67"
    "uk"
  end
  language "zh-TW" do
    sha256 "2f2ec3d47387092f0c288c19b46a35265d0963c1342f61aad9844158baee2eca"
    "zh-TW"
  end
  language "zh" do
    sha256 "3b580623af5aac6c420c63cb50a3b7d9e615179ac93a6b613926041758f7cffb"
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
