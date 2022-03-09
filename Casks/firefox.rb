cask "firefox" do
  version "98.0"

  language "cs" do
    sha256 "0d93c66f12989e027b98a29e99ed9a5d005ecc339327275f33383d33c8cdb177"
    "cs"
  end
  language "de" do
    sha256 "ed4ddecb8dade89881abe5a668ff4f3d91ba3d28da73e301bf374b1a7263b873"
    "de"
  end
  language "en-CA" do
    sha256 "75e726036564b436046c50b450a8b128e48daa19741e581b737c00bbdc8c8d20"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f2ed01ceb8b61ffec4176b15621b2c6bb3a80fe7d10f96c16cd82e4f775845cc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d04f108fc269be7b2277af7e3faf7e082ae9f00160ef9383c59aa5beeb1b93e6"
    "en-US"
  end
  language "eo" do
    sha256 "920d6deea152f4f2b1d5a736efa28f5e6c77a24aef03ddb663c10090c366b904"
    "eo"
  end
  language "es-AR" do
    sha256 "0f27812767be1ca2af5c6c2669ff8fcb763ed3163a3b9992b5ab38a79b098ded"
    "es-AR"
  end
  language "es-CL" do
    sha256 "b5f12d1081829f3be98a6021f7b2eba15f2bdd4962b5d6e9fe3a99982c4784df"
    "es-CL"
  end
  language "es-ES" do
    sha256 "49e840163e4ca7d3b398bd62916c3d813d53bf5cabd3a4a421878d3adc21290d"
    "es-ES"
  end
  language "fi" do
    sha256 "b262d4423958e137bbf9698cf433c5991b9ade84e2a9a90e4e17c41e1b7d5c0b"
    "fi"
  end
  language "fr" do
    sha256 "6edaf9a92b34a628e607cabd07b5a852e955ef0a32399077ce6430b304815607"
    "fr"
  end
  language "gl" do
    sha256 "2640addf9fc89c6b6cbc279706ebbf31e7ff1570a3f272f0605216af3678f490"
    "gl"
  end
  language "in" do
    sha256 "47c5b00297994cd7ba3ded577564395e96ef73fc17e6aa32de276bd23d9edc9d"
    "hi-IN"
  end
  language "it" do
    sha256 "911821f23faba0278136f3c48617bb9f8ca20c6b0b251c3e156cf2367196300a"
    "it"
  end
  language "ja" do
    sha256 "ea1e1dc844a8c8e1cd1157510d840fbb3598a6d6d1aecc0c63e72e06dd0f5f0f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "30dbb1e88ef3a2e57545d6ec5e2c54f4689fbbe7072bfddd8df08edf23f04461"
    "ko"
  end
  language "nl" do
    sha256 "d20728bd066824a82f5fd1e2f82a4670f01e82358f53523dceb243c99d24ddad"
    "nl"
  end
  language "pl" do
    sha256 "11ae225fecb7da6a795b68d99111844f1ea7a9e07b7b498d47f474121eea32f8"
    "pl"
  end
  language "pt-BR" do
    sha256 "52bb2d38ceffc4ae7158f93c818002b8cc363ba9b6a7562e936876f29aa73bdf"
    "pt-BR"
  end
  language "pt" do
    sha256 "c4df8d51d03da688ab7313d123369175fc39a3a6bfd1c969edac29d45c08e4e3"
    "pt-PT"
  end
  language "ru" do
    sha256 "287989f327a8648924ff827092596eb304256c4742272efa704b4d5fc7e32dbd"
    "ru"
  end
  language "sv" do
    sha256 "2c0c30c4331b938e68bcd6b6b75c8ac7d83420282ef89f1a14609ea8409372bf"
    "sv-SE"
  end
  language "tr" do
    sha256 "6e5b92d1eae06bc28ff4fe90a8ffedc692ebba8174507df16b03f72825c715f8"
    "tr"
  end
  language "uk" do
    sha256 "5eb3831a06c4af0f70178cc86a6276f85ca3b517d70f0097765bb1fb87af3897"
    "uk"
  end
  language "zh-TW" do
    sha256 "b58211f59e471e8dddcee09945eb2dddf49d4cf59abb9f8c70dbee01fb6ddd89"
    "zh-TW"
  end
  language "zh" do
    sha256 "84eb71cea70281af5125cd1b4ef2f62c95216bf05396e39272f570c7d3f53512"
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

  uninstall quit:   "org.mozilla.firefox",
            delete: "/Library/Logs/DiagnosticReports/firefox_*"

  zap trash: [
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
        "~/Library/Caches/Mozilla/updates/Applications",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla",
      ]
end
