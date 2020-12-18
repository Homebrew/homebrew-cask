cask "firefox" do
  version "84.0"

  language "cs" do
    sha256 "9fe199fdb21191cbca9ecbfd11c0771e9fdaab0add164a2b899d1bfa933bd2c8"
    "cs"
  end
  language "de" do
    sha256 "297d87391b2fe18067e6bcb1ceeb94fb1e556108673447f361bad75f06b81e84"
    "de"
  end
  language "en-CA" do
    sha256 "1785253cc8425d439a91b2a056a79b70de5ab6477247ea3b0c80d8b2a9a67b7e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b8fd2d16cf4fe201af6164077543c6428a91ff2641b95c0aaf7e45efe163a703"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4c7bca050eb228f4f6f93a9895af0a87473e03c67401d1d2f1ba907faf87fefd"
    "en-US"
  end
  language "eo" do
    sha256 "a93e0ca6fe7f3d1344edbbaba2b9a7639a340825bd7f29bc9f9dd35cb4a32a58"
    "eo"
  end
  language "es-AR" do
    sha256 "6a906d6fedfb5f85ac5c82e96edfc1c99d6e166996d68b90a0c7cb6cdbc94a24"
    "es-AR"
  end
  language "es-CL" do
    sha256 "da57cb6b7135e4327bbc57570668419de7472c87e9f944dde0c7038a4b473b0d"
    "es-CL"
  end
  language "es-ES" do
    sha256 "59d40b7e3c0be9ec0bd0f74efd78a3f74ffa3180b252e7b8de134e5693aaf59e"
    "es-ES"
  end
  language "fi" do
    sha256 "b51b50bb2988b1894b832dd594ab57d2767ab5107c0d5f8adee4b53651e6f89d"
    "fi"
  end
  language "fr" do
    sha256 "d7dcf8cab1c6359619f9fe7bc72e5d97eb5d95ed9d9f9ac85c4f38089c76fd6c"
    "fr"
  end
  language "gl" do
    sha256 "7561ed0e6f1f2c940fa0fa5efb7c09e5384051ef15a8584377d6c52db890da09"
    "gl"
  end
  language "in" do
    sha256 "f707775322a882ee7b2cc57d92bba562c6f952fc207b341ae903ef20970d59c2"
    "hi-IN"
  end
  language "it" do
    sha256 "f39fdf0369a8c34efb180179c56a27f7a14e89c51641b8fdaba2f73ad6716314"
    "it"
  end
  language "ja" do
    sha256 "c148bb5c6a70e12dd2e49679510005f73417e14152f5c6746359a89c05b251d0"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "99d82a9fa4fd4f1684612ee8e628b4f3968e4de627c45e63cf834cc47eda2bbe"
    "ko"
  end
  language "nl" do
    sha256 "0fd9f0d16de70819e23fb4454cf37712eb55018d1f5e9d84de8101f8c68f8f6c"
    "nl"
  end
  language "pl" do
    sha256 "9d38faf772e0806971f0612343fb14bee161274edf77cbec538b7915a4ee30ca"
    "pl"
  end
  language "pt-BR" do
    sha256 "4a65933749b89d2e52a9ff98867a82e5801c1d27bf2e223612b34b002ae9beef"
    "pt-BR"
  end
  language "pt" do
    sha256 "fd9b8adec337a07ce4a518b15432622a0b64d2ed2396d9390ca9fce651d2d9ef"
    "pt-PT"
  end
  language "ru" do
    sha256 "ac212b2d1a2eab0ca913eb45b97d8b582dabfa691bfce9436c0b44b90702ffe9"
    "ru"
  end
  language "sv" do
    sha256 "9acb1fa4d1b628545f91067534c51c65eb0e23a9be8f2cab3c06faa7bc680798"
    "sv-SE"
  end
  language "tr" do
    sha256 "5910d49f56dd1f836a2fe775c85402624c988c1413f0c890764cc75cf507a582"
    "tr"
  end
  language "uk" do
    sha256 "91bcdc4402ac7b064f8d415ceacba0823c1eca17217d5a1fa013921aeb885891"
    "uk"
  end
  language "zh-TW" do
    sha256 "8c9177f31e9da274ed46d18358d68515815f0c5e42a4edb91901b27c67568d33"
    "zh-TW"
  end
  language "zh" do
    sha256 "c41b2868c96a3d97e09e28911d459e24804bf5c44ec29193b4b7b8c784732a33"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.mozilla.org/%3Fproduct=firefox-latest-ssl%26os=osx"
  name "Mozilla Firefox"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/"

  auto_updates true
  conflicts_with cask: [
    "firefox-beta",
    "firefox-esr",
  ]
  depends_on macos: ">= :sierra"

  app "Firefox.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/firefox_*",
    "~/Library/Application Support/Firefox",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
    "~/Library/Application Support/CrashReporter/firefox_*",
    "~/Library/Caches/Firefox",
    "~/Library/Caches/Mozilla/updates/Applications/Firefox",
    "~/Library/Caches/org.mozilla.firefox",
    "~/Library/Caches/org.mozilla.crashreporter",
    "~/Library/Preferences/org.mozilla.firefox.plist",
    "~/Library/Preferences/org.mozilla.crashreporter.plist",
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
