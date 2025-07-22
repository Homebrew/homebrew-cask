cask "firefox@beta" do
  version "142.0b1"

  language "cs" do
    sha256 "d66261a0decf61218d8b24b38c6224de25be1556fce1caf347e1aecfffe9bb0c"
    "cs"
  end
  language "de" do
    sha256 "aa23085aa1fb9631cfd8cbf6e7369c4e3132588b929f04a2afa5a7a5b5d1203e"
    "de"
  end
  language "en-CA" do
    sha256 "b9ad9e2be34748ee6bb27f40f29c978c6764366ba72878cf8cb0e31e3d1ff05b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e9ce5a28edd51fc0e08575fc39f62bff54ff3bd6d0da306f04fb1f46f7428fed"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2fa879d39db0482abad93200e426121288a513086cda290d5d8bcdbc2522b96e"
    "en-US"
  end
  language "es-AR" do
    sha256 "74233fbfe11776adef59c7e9b01d4db8ba30eee6c175bec822f30a0ceca80316"
    "es-AR"
  end
  language "es-CL" do
    sha256 "913f3c3918c28e5e1608531ff644c7de82a2e6a69330d07a4e6bb109ad459aba"
    "es-CL"
  end
  language "es-ES" do
    sha256 "c4a1f97292547a8514d1336c15a65998cb2ec52fefd8929fbac671b2a001c0d8"
    "es-ES"
  end
  language "fi" do
    sha256 "0ee611b1392216797d682f97fc698f25a915643598b91c9efe3d0d85c64ef9ab"
    "fi"
  end
  language "fr" do
    sha256 "6dec2cc14801ec20a9e3b9a67e4333a1d3406658e160f887397fdb0307f2dd1c"
    "fr"
  end
  language "gl" do
    sha256 "a2cb79ab94800868159de0d61ee7b6e2aa847f03e2895645a7b84e879a2021b8"
    "gl"
  end
  language "in" do
    sha256 "84636b80dde5ceb09cef12ad4fc83b290eb383b80374c1938b0b7a3bf9db382c"
    "hi-IN"
  end
  language "it" do
    sha256 "eb13cf92183988e73ee1957e60c126338d96407b102f6debba27e68395d9050f"
    "it"
  end
  language "ja" do
    sha256 "1e32214178b6f37efbed255108c0bcbc4437abede0725d060b3620f56baae29e"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "aa5259479cdee9983bdd0380a6780b9aee44dcb1a1859680ed85b83325dbc970"
    "nl"
  end
  language "pl" do
    sha256 "16d300f2e5772035d87333683e68d4f2e41b9ebc1f90d5d052da0f4b5f5054b2"
    "pl"
  end
  language "pt-BR" do
    sha256 "6da984fde6dd728877ecf0a35d48b22d8607d3b6132fb3a28f615b5a93ae3259"
    "pt-BR"
  end
  language "pt" do
    sha256 "c0c10aebe96e98a9792ca4d64ed9a5b0167e3f74c87cc2cea73fd096793504b5"
    "pt-PT"
  end
  language "ru" do
    sha256 "a247f88b62e3572a4a69660f08f3635379b55985c0d4e1b4f90edf4d467f2ebc"
    "ru"
  end
  language "uk" do
    sha256 "bae5fcfb1c624f33c080164a73cb34a61cf8d979888961a42fcca99425a3ee33"
    "uk"
  end
  language "zh-TW" do
    sha256 "dab4361a55c7dcf5acf13af7f90dceee25e42d5f3d35ac49db9f9cb514841e7b"
    "zh-TW"
  end
  language "zh" do
    sha256 "301bd9e4e3f5986c049053207f04fe6972e26b0e1c4198a99d830ec072abb0cb"
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
