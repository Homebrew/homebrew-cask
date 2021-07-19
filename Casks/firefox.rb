cask "firefox" do
  version "90.0.1"

  language "cs" do
    sha256 "8ae976ae131d4c4eebb61239ff688a6f32fba02c9a295347d20ad4cb7572f184"
    "cs"
  end
  language "de" do
    sha256 "c7d4e8f20173385e0f537567b6be31fa54307a3c777a7b8fc576c200873cd9cd"
    "de"
  end
  language "en-CA" do
    sha256 "21b18b77f6e6a264677fc034b547dcbe69663a43ac145ba8a3c779822f397c4c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5150efd42cafef17922fb6a73c2a3443705c613b732eb826b457566b13a7ffb2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "76c1b9c42b52c7e5be4c112a98b7d3762a18841367f778a179679ac0de751f05"
    "en-US"
  end
  language "eo" do
    sha256 "ffd31b85846299435d55947d283b17881eddd5a8ec30cc35cb4ddb79a8c7ef73"
    "eo"
  end
  language "es-AR" do
    sha256 "6e387a11c61e95a94149fcbcadf858f2190805727e9bcab9530f0783a1b73147"
    "es-AR"
  end
  language "es-CL" do
    sha256 "8bbc820bc32a45abbe2a01d38bb676febc05ac3b61fc9be8211c42fe8a34d2b8"
    "es-CL"
  end
  language "es-ES" do
    sha256 "c7e47f0f47c40a225a3a026fc2759d044dda9668daf16871d685f85ada5dacef"
    "es-ES"
  end
  language "fi" do
    sha256 "753a68637dd9b54fc871894193d82fad98dc1e423c9f6d40cfce4eb20e105738"
    "fi"
  end
  language "fr" do
    sha256 "9c9665ed77f4a9b227ace3fb4158cb3a6d6ffd15d05bbc6bc3d5539518a75ab6"
    "fr"
  end
  language "gl" do
    sha256 "5956b4b255053647cfca9b85b9e2ba6d727ca8c90720ac5ce42ee0250db0f9c9"
    "gl"
  end
  language "in" do
    sha256 "6156aee3b265bd3807c0bfdae33d53a2c453b1f741b91291212213b09b1c92e1"
    "hi-IN"
  end
  language "it" do
    sha256 "223bad7837148e85198a8a2321a9bfe8952fbd7d352dd0d31e48eddc76294594"
    "it"
  end
  language "ja" do
    sha256 "b0ddedaeedb7b7ee935077ebeff61ad955c88c26cb1e14f3f4e1cd4104f140ef"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "6840b7dee4587dac3ec8cc8e0dd7e6f51c2f644104bf7e7451c0f83916826926"
    "ko"
  end
  language "nl" do
    sha256 "ee1ad73356f501edd84e7b2a5784201076f756475eb2ddcd7ce09d2355e3c49d"
    "nl"
  end
  language "pl" do
    sha256 "01db44eebcc98e428f3a9b23e9baadfb12edd840c0a5c18a3fa11845fb75c46d"
    "pl"
  end
  language "pt-BR" do
    sha256 "dd37c3dc61a2e7318b34210ea63bbfff1970f92b5363aebbe696ac33e8a4e30c"
    "pt-BR"
  end
  language "pt" do
    sha256 "ec76016cc8505e8fab22aefa5fca6387f383d330c60ada744d78c7118a1fe4ff"
    "pt-PT"
  end
  language "ru" do
    sha256 "e478bff3962e72ce6db64dd843a8f44f3cc6b80baac32025aaed002d6652bfe0"
    "ru"
  end
  language "sv" do
    sha256 "dc269a2cbfaff620138ceb555ce6bd6cdcc88fa5f6b48875ce1d3def160cd001"
    "sv-SE"
  end
  language "tr" do
    sha256 "3fd03ba550108f3ab90ca9a7c8087b66703e9db8cea286cf0f260530cd8e986b"
    "tr"
  end
  language "uk" do
    sha256 "7d7244e409bbce4c4da6a74078fb1f487271ac6384c2eb94d50821a1ccacd3d0"
    "uk"
  end
  language "zh-TW" do
    sha256 "7c1fbeae6a77c9e0a3e33df0f8099e563f5492b9ce7e0c0c9024b955c0cb02cf"
    "zh-TW"
  end
  language "zh" do
    sha256 "615f63625cdad988392eb4e9415e68a4226982bd2eb7c303315294de2b5faa04"
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
