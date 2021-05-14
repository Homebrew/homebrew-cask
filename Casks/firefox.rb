cask "firefox" do
  version "88.0.1"

  language "cs" do
    sha256 "b82b380913ed04ee4bf15e06a3bcd3865e2255f32ce16ad9041c69cef2cad6a4"
    "cs"
  end
  language "de" do
    sha256 "3deb250367f5e15307687fbf16b8036152d689c81f068c3d775ccb56f4078019"
    "de"
  end
  language "en-CA" do
    sha256 "0f26870a82fe672b93deac791c4988ea026a9d875dd763c20b7897bf04828c0f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6dcba758029c0d304589a32f1ed7da95ed13cbd3f00adc09e079a71ec76f48f5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9feddc71ac61a527848495bb94360238a0e9aac9d2b91604be48c7f3ac34377d"
    "en-US"
  end
  language "eo" do
    sha256 "49190577e97c4ebf96418bebfb20757f35762425f107d22b1bca014456a7bbf0"
    "eo"
  end
  language "es-AR" do
    sha256 "0cfcd34efd4af420d825d574fe9bf1a3bb24a5cd4016ab57171bc93804860113"
    "es-AR"
  end
  language "es-CL" do
    sha256 "e948edab51bbb1ae9d9a699fbdcf4979f67ce298852836d1f3171711b4ff6aa9"
    "es-CL"
  end
  language "es-ES" do
    sha256 "8d295c40dfd23fbf76d80a656b16e9c9191e22ea88c1e3539a4cf01200eb69ab"
    "es-ES"
  end
  language "fi" do
    sha256 "5f0aee069486969adcfdaad940783a8eecd949b555eb7dd25fa62dbbec2d77cb"
    "fi"
  end
  language "fr" do
    sha256 "7f9ee4074ad50811809526f254fc59125d69aed3745c10c36377e9203b6879d1"
    "fr"
  end
  language "gl" do
    sha256 "25189b8b8a024d8b1a39e42e2130eee0ca8f23599582cc2596e04de1e5b4bc9b"
    "gl"
  end
  language "in" do
    sha256 "3bf524202eeb7c42e2bb1e689afc307c8c5a1cb7b0db4dd43d04d7e32912328b"
    "hi-IN"
  end
  language "it" do
    sha256 "e1b35ca2e9e9c130e052f8140268048ca71ee6c6c1d07583da641cb7114717cb"
    "it"
  end
  language "ja" do
    sha256 "d8f0c319309d81792b74129ee91d0386685a129ef4330bba3fd7c9816e1c5ab7"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e3ae44f2f66937f85cbec2dfbe3b3a390909ce67f39b76533141d75825f926aa"
    "ko"
  end
  language "nl" do
    sha256 "6590ca05254f780c58dc872df7401faad8946a2ae164eac560ddd973c3fec57e"
    "nl"
  end
  language "pl" do
    sha256 "89e62a1374b4c4bdd50ec6d855211bb52afd1092a62c13d6a4690e187953315b"
    "pl"
  end
  language "pt-BR" do
    sha256 "c372d575d7baea1b4b788c159490d35b208d622963656a37ce6046ad9bdf1d27"
    "pt-BR"
  end
  language "pt" do
    sha256 "a47b886cd1bbf5b6c7e1fe376fe29e96d0a87214d49b1a3bcda6e851e583193c"
    "pt-PT"
  end
  language "ru" do
    sha256 "dbf1e36f4a656dc02cda5a0e03abcb450ed7c31b58f3bcbf0c6d8074c9f0995c"
    "ru"
  end
  language "sv" do
    sha256 "97c8167285f8114ffc1344ee9be91001a1533211747f219518ac222d91d4fd70"
    "sv-SE"
  end
  language "tr" do
    sha256 "4c08c6de8e9fef70f555af44386b80a23f2151d2e48836e51768c3179a7598a0"
    "tr"
  end
  language "uk" do
    sha256 "200d52ba75ed400c14b675799298dd21d99918bb8c7d6ba9ffbe2287b12cf02d"
    "uk"
  end
  language "zh-TW" do
    sha256 "fde26cf58e63f8b6641a4106b825eefd183f777d410c63399bcb61976937ab8a"
    "zh-TW"
  end
  language "zh" do
    sha256 "ee46f55ac8a6fd8edc0315c7c51a4594485f5ec36f64c58554e15caac8de0bcd"
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
