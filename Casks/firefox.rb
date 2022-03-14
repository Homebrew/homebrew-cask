cask "firefox" do
  version "98.0.1"

  language "cs" do
    sha256 "71e18866fe93afe7b762c23c340510edc517b874d06ff319e773f89da4fd8baf"
    "cs"
  end
  language "de" do
    sha256 "8203f881e9237868ad86c2f47db666b728d5f1ee700ddf3ac50589ad90720a64"
    "de"
  end
  language "en-CA" do
    sha256 "a5d29d15704bd0701232d0b627bb8f70ae97583895d7d7c72ab81bb096b67d84"
    "en-CA"
  end
  language "en-GB" do
    sha256 "fc8006bfa94a5a0f17e8bdf9435b3c1bb15071fe6c810609fe28a23d097a87c5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8c7d3e6064f74520ea691f39e841d8757e15ce13833437777b0a508a2a34b5cb"
    "en-US"
  end
  language "eo" do
    sha256 "e450df3f88d84e366ff312ac81f31e75a8e4882a0e157c19d0017b0dcc15fdc8"
    "eo"
  end
  language "es-AR" do
    sha256 "7e8e22c41135779ee7c26a2691851502b824df025327483729c387177bbbf6c6"
    "es-AR"
  end
  language "es-CL" do
    sha256 "4d29a2c064c57978283ff3e9828793fc22b965c1369371a5bf13e03d360532c0"
    "es-CL"
  end
  language "es-ES" do
    sha256 "9d6231b341d1ba278b1ba79b3a2467325ba2b41a63f09dadee1956fc5a734535"
    "es-ES"
  end
  language "fi" do
    sha256 "86a8cf017e24c05a3aa7861ba1484258e77710ad49969c3691aea2dc547ebe82"
    "fi"
  end
  language "fr" do
    sha256 "44d92786b96c12894e9fee53a94e8599234a156250eed7fd98c9f14aded9c266"
    "fr"
  end
  language "gl" do
    sha256 "e92ba7efb578ca189ff58e3a0049f38cbc4cc1f9abf0f7678028de5dc8941b89"
    "gl"
  end
  language "in" do
    sha256 "d406ad69363ad29e2d8ce255d28eb147b28ba850f7ae1468a5156db40ceb33ff"
    "hi-IN"
  end
  language "it" do
    sha256 "876ccfdd6147ff2caa61e109c7f45ed6d8bac29eb114c8b0979a62f6bbbc8f57"
    "it"
  end
  language "ja" do
    sha256 "8dfa12496083860d1727eda9fe4276dfbb76f1a348f9d27fe254fe6100562131"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d27c8e0f0fb28025f1669b6d64775c1dd289924f93593c2cab696b4628817fbd"
    "ko"
  end
  language "nl" do
    sha256 "2bd4cef8fab3a0b7963ea22e16236a778e519668891ddbd315a66f67d01c9466"
    "nl"
  end
  language "pl" do
    sha256 "01848108a376b83e995a8ef31a564177b58b68402cc2cd0c5d69fdcfe908d46b"
    "pl"
  end
  language "pt-BR" do
    sha256 "a9e77143f7f6181f4fdb5ef8b96b46aaa746d8fc2c52a32437aea56944f77545"
    "pt-BR"
  end
  language "pt" do
    sha256 "d6f113cc9afc77a604baf71ed2eedcea38dda67f13ed4a49d2e2138346df686c"
    "pt-PT"
  end
  language "ru" do
    sha256 "c37060f54dc30c4c061786b5c9acd927ede96eda760dd922c6db35afe1d65c54"
    "ru"
  end
  language "sv" do
    sha256 "26fff1f503356af4c1816547f644f65803313642a0f936e814b244ef08f3a997"
    "sv-SE"
  end
  language "tr" do
    sha256 "b2e3a75ee2e5ba5390c64c162228c737dd9d85f1f7f516b07d9b825b5c4d3f0e"
    "tr"
  end
  language "uk" do
    sha256 "b09a6d25c363603fdeec5f49984676b8335bc4bec946c600fee1e237c2bbf064"
    "uk"
  end
  language "zh-TW" do
    sha256 "5c14524d1c9abfe858ab1f44e38bdc9e6572356a962b1a40701b4db92e0dc740"
    "zh-TW"
  end
  language "zh" do
    sha256 "f48e98997aa28873b746448d664925cca94cdf84dff1afb93fbe871854e0b0b0"
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
