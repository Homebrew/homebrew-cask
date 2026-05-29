cask "firefox@beta" do
  version "152.0b5"

  language "cs" do
    sha256 "12317e9744213204422af780e928e1cb2dea71b4c876aeb0dc6f9baf67517de1"
    "cs"
  end
  language "de" do
    sha256 "0012501e357ec5d26dc28c338eba26017f18c95f9ca1fe951094ef8884f76409"
    "de"
  end
  language "en-CA" do
    sha256 "d64d5d65216b79a73ac30f29be169fc4f77ec11eb9331528589385cc29a80c4f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "96b2dd45bc64dc322959cd8021239af7ccf79611c2be069e1ccc56418b66c662"
    "en-GB"
  end
  language "en", default: true do
    sha256 "595f550d5e7c6230ec783777a6b4de287a73ea87b8fad739ad9c301f2d899ca0"
    "en-US"
  end
  language "es-AR" do
    sha256 "c9a58f59bd4babc93fa040061e14ecb799922b54b3d86787adb5c433e16d898e"
    "es-AR"
  end
  language "es-CL" do
    sha256 "e03ffa798a536085f0caa8e40f9f4cf7faafb67e5c27e0cae7fb224c2d56b6c1"
    "es-CL"
  end
  language "es-ES" do
    sha256 "35ab4f198a28bd99b09db85b3e3c67fc63a60bbd3a4ab1641e9a87c9df965fe3"
    "es-ES"
  end
  language "fi" do
    sha256 "3678dc21bb9f8970eec391de143b7d894a976d48386b41a84617e5f5eb411646"
    "fi"
  end
  language "fr" do
    sha256 "c69d75d2d2a64573e40b21cde14eb10bf2b0f872053b72375f327b3ec340439f"
    "fr"
  end
  language "gl" do
    sha256 "cc2f18edf5b43d949e80ab2bbdd013a0ad0a0e1bf7b1eb5fdde24f2444559aea"
    "gl"
  end
  language "in" do
    sha256 "433dbb62169bfc61136622c3761b6b84593f5b2a458e041b35f005a2af559996"
    "hi-IN"
  end
  language "it" do
    sha256 "07e9218d8b9cddf58a8b355a9a01f78ae25970d96bfb26ef9798b764d3e81a04"
    "it"
  end
  language "ja" do
    sha256 "217d32fc3c87be4d9da85149285604665c670a4e4b6c345e0696682eabcc1c7c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "bbad168ebabf294be463795164f08c298ccbcebcde89e49df8017ed2062769d2"
    "nl"
  end
  language "pl" do
    sha256 "4067919882b90e986a99ce7bb2d3f08ab01113802e2eca1b302887d817fb3f27"
    "pl"
  end
  language "pt-BR" do
    sha256 "de5a98141d3c75b13ee6d327de36b5fe4ea484f4590035c7f6625e33ed37c4d9"
    "pt-BR"
  end
  language "pt" do
    sha256 "896409813fafb1d2d4a3d7744f8112822cb1085eb0da7c19675fc82b329e531e"
    "pt-PT"
  end
  language "ru" do
    sha256 "f930fe1bd1a3da6e575284a6b9150060a6b76954144690ebe66a471011bb4fb4"
    "ru"
  end
  language "uk" do
    sha256 "c455fa236ce2c9244990ca8f1b8b4d34df48f6309ad6a18295395398525bc11e"
    "uk"
  end
  language "zh-TW" do
    sha256 "7893623de419542a7a536e598587f50debe2b85d1d29f1da1194441e6be61826"
    "zh-TW"
  end
  language "zh" do
    sha256 "7ac1c4b8b090f18c2832d50ef84b08e33ccc0370d134bdb7c4629404240ea72f"
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
