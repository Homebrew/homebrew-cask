cask "firefox@beta" do
  version "139.0b10"

  language "cs" do
    sha256 "50ef0b6ffc0561635f4c24c845c1a7a263a00c6e1158ceb697d831680e1ec50f"
    "cs"
  end
  language "de" do
    sha256 "f3a82728da505113b71c824fe6ae056f9621deee70c948bec94e9695b40d39d6"
    "de"
  end
  language "en-CA" do
    sha256 "88d948f6b7b79d436457c184bf9dc66c611ee1c86b02ba7ce55d241302c9c5c6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "122b5988304cdd122e00546134a89107ea4198e68436b7f41cde052f3334063e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "48bc5bf417013e457a6f3437271cbeee6bd67a0a8381bbd7deb198dc9caa3057"
    "en-US"
  end
  language "es-AR" do
    sha256 "a7206ae056ae53ef7a137c7688a8a832997416c332a5b1d109870bec39ccf2ee"
    "es-AR"
  end
  language "es-CL" do
    sha256 "a4c38ddef5dd4dcebfa1de59e22a1b2325a9efcdf44e4867d889f8f26c8d9cfd"
    "es-CL"
  end
  language "es-ES" do
    sha256 "969558b652a3a2376e720d035c52e0c66b0c0f44d1c183f8b5c420bc47301e5c"
    "es-ES"
  end
  language "fi" do
    sha256 "c69d7cfdd28462f3d325a5dc57c2abc487d787f414613a30880c68c838055a83"
    "fi"
  end
  language "fr" do
    sha256 "5ff5b7d4b200a9a52256abfa0bdc083e58e4f9ca33545e44561d8eb51a53ba65"
    "fr"
  end
  language "gl" do
    sha256 "a76b158c61d37b8c19ece626d42246f2265bdaea1c03ef6806308b8331bbde11"
    "gl"
  end
  language "in" do
    sha256 "8dbcbe161bad9577c70c7d43fa0dd1ec19336edd6f73f48c8753c5fe8223271a"
    "hi-IN"
  end
  language "it" do
    sha256 "e30aef22eb270e83b417a74cab8dc4a132cfe6343d52475f2d3a94f493ccba53"
    "it"
  end
  language "ja" do
    sha256 "1760a07fdbbb9bc0d25707786c15560c1f30316322e287796f442030ed76403c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e0bb6c19e478e73f0dbaa5120d6a28da2d75fbfb37035b14d7ad62bc4ce81e25"
    "nl"
  end
  language "pl" do
    sha256 "b67cbf53a482c9090a05b7093461ef69d31ee1f400ca86c6cb308ba976ebd6b0"
    "pl"
  end
  language "pt-BR" do
    sha256 "219bdd966f992c787cc5a9700b3234bc2fb8449c89bd356033408abc1845e7e6"
    "pt-BR"
  end
  language "pt" do
    sha256 "7c371be8ac6fe00fc0f4d11b7240aa155c5b78639fa603e8ebebd633fc60c794"
    "pt-PT"
  end
  language "ru" do
    sha256 "fd687a41c9f45afdaff069678cb8d5edf64fc318a3f052dc9df38bc236788aaf"
    "ru"
  end
  language "uk" do
    sha256 "0c6eb84bcceb9a7c4920c6c159b9997908d777428c3d303ebc9a39e30bd1397c"
    "uk"
  end
  language "zh-TW" do
    sha256 "e4bf7301e849bf94dfe3fd98a571195c07d2a038d507caf7339f0bbce85e533a"
    "zh-TW"
  end
  language "zh" do
    sha256 "25d8ff3bebc5bf0d6f3bfced57f6cd9a032df62f752c8a4e03b4e419051ad0e9"
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
