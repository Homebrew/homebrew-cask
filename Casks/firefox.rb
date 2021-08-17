cask "firefox" do
  version "91.0"

  language "cs" do
    sha256 "7f4598472f43451dd4096aa72051d83505acd56610da28d0ce3d6013a1158999"
    "cs"
  end
  language "de" do
    sha256 "e25b20071147dd552ce3cc12c53436521e0e1fb8d44d05ff8e9ebd3aad342b2a"
    "de"
  end
  language "en-CA" do
    sha256 "4d46590edacc63b9cea8377fa5be65c5d28179b25092a83b6b1d3d18fd84aef0"
    "en-CA"
  end
  language "en-GB" do
    sha256 "108d56dfe9b1dd7716c5c380e5b92828f6cb0fbd317e6eaa5cc2c4033740ba3f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d26c43f490320b3f301578fa653a2235562dfed31ed12b9b1f7c4515da21a6fb"
    "en-US"
  end
  language "eo" do
    sha256 "69d0bde1eec10e947179e574c8f882b568c4a386cb25552dd51887fecc588625"
    "eo"
  end
  language "es-AR" do
    sha256 "06b5e4bf3207d9cdd82afa11fc395460e71a1c99ae87378dcbe4e26ecde25225"
    "es-AR"
  end
  language "es-CL" do
    sha256 "afa371acc6ef162810b69f838e8457c4d128ad2316f4cbe14767b93c222b1845"
    "es-CL"
  end
  language "es-ES" do
    sha256 "df499da7507aeba73b376d7ea2676d1346d202511ad56507000a85b85f95e169"
    "es-ES"
  end
  language "fi" do
    sha256 "83228e64876945cdae0d290b41f1b43fe6145aa145001fce64bd45c3ddc4b829"
    "fi"
  end
  language "fr" do
    sha256 "bdd4cd2a7c616963f703dd825a85d97c0216e93f069e85e2176d2bd55108445e"
    "fr"
  end
  language "gl" do
    sha256 "86cbdd0fa85836ba3f126a21f6edc3bafcade397cd5e422f0f57373b91e97e16"
    "gl"
  end
  language "in" do
    sha256 "230b44135025cb2d15568f254906c90218c294ea86dc5fd148f0176554ede3d9"
    "hi-IN"
  end
  language "it" do
    sha256 "1b7912b297fd035ec98029d58d2a3a1a0e7d159e80ad59573b58b5f9bb88a192"
    "it"
  end
  language "ja" do
    sha256 "dfd5fef940e584676aaa47de7729aafdf0ddc3e530ba1de6f4737b63c5e0732d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "09429787741203916ebb5a70e34a189de8f3dd4d5b241557c3ab57396e798b81"
    "ko"
  end
  language "nl" do
    sha256 "38e46a6613d4fd392926bc7586c71f0c75e4d22bff9420546f63110ddc23491f"
    "nl"
  end
  language "pl" do
    sha256 "89fb80f7540bff9b74485ec9442f6a78b8654f9e242de86810b6ba29866c8aca"
    "pl"
  end
  language "pt-BR" do
    sha256 "3b94102087a077752e8de9fb0e371faf5bbcf0930e9a54755d895f6ad466ff65"
    "pt-BR"
  end
  language "pt" do
    sha256 "70672a8ea6453835f2caaf78a5a35f810f9f235ec19ed7f099e3b319cbac550b"
    "pt-PT"
  end
  language "ru" do
    sha256 "d65a9697489198b658d31f1c35fc5269ef84f875709262c274fa1ec939fd9b52"
    "ru"
  end
  language "sv" do
    sha256 "60901b4b9604fcde72491d49c74b8816b6edf0fbc9d8224a5e4bdffb7256fb50"
    "sv-SE"
  end
  language "tr" do
    sha256 "65749fa5d33b16352f782b15167f0947123ddc40c8b60c84ba4343b39e306c44"
    "tr"
  end
  language "uk" do
    sha256 "8f39594c9a921be218571dbede1b90616590c2915c2ed208f526e35ad38b1626"
    "uk"
  end
  language "zh-TW" do
    sha256 "0a5cdc0f8e119def9ab8f08b0dd2a2ce067a551b36c8c70c263c3278b1ccf5b1"
    "zh-TW"
  end
  language "zh" do
    sha256 "91a50accad8a1c51d15a53543d716cf5f2ccc298d9428bb2fd820aeabaf59250"
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
