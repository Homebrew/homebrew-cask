cask "firefox" do
  version "97.0.1"

  language "cs" do
    sha256 "7978a6a7ba009dbe4ebcf0f5b77e5218cdee2df43bd5399194d33ec481f80fdc"
    "cs"
  end
  language "de" do
    sha256 "982085cd3e0c68a8bf748001531edb8b2d253b39f61b20bff26ea64338e7437f"
    "de"
  end
  language "en-CA" do
    sha256 "4face5c19b4f9cc12410d595300624f3494973e80524bc6dbc97b6c1d208d6f5"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e3999ab441b95cb75f3394841abf72fba310740e1f38025520b4213179482c2a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "172f90d0a2165d7abee8e5d5fdf578dd3f94d88b552c6d6f7c285480fa8f7afa"
    "en-US"
  end
  language "eo" do
    sha256 "36ab51399970eb8b29d4f6c22f0d08991ca9996b73763ef7404292c17171be53"
    "eo"
  end
  language "es-AR" do
    sha256 "6956a3df34825dac8f30f0979294f8ed66fdc847cb2fe67319e467a3fe53ec31"
    "es-AR"
  end
  language "es-CL" do
    sha256 "99697d7c0e92ef20fc71d869b8ddd694cb097c0de13117d04cd9846f9fc245f9"
    "es-CL"
  end
  language "es-ES" do
    sha256 "c4aa47da3c744a165a440141035857fd343b1f7e167c45066b72ce4e42dd5df8"
    "es-ES"
  end
  language "fi" do
    sha256 "e1d73072ac8f8ac3f43a98a67f938bd253721cd6b00afca8b4518111eeb8046a"
    "fi"
  end
  language "fr" do
    sha256 "93d297e2e45436f5e1ee1c20598e2758689ec70c1faad32d6347ad54ea9261d2"
    "fr"
  end
  language "gl" do
    sha256 "0eff9f1aae2ec22760dd764a22c3591fae3af3da6c13b6092a3acd03676fe311"
    "gl"
  end
  language "in" do
    sha256 "64ceab5afcae62100da40f3200db38d2a1b9ef65b1bbff3bedf45927939c21c8"
    "hi-IN"
  end
  language "it" do
    sha256 "bbaf0ef154f0e3e354a485acde9e031212e770f52dfd8542a6891f39085e7180"
    "it"
  end
  language "ja" do
    sha256 "7f4ab477206ed6cd599ef5199bf9c80623b1987995f8b1e0afb7011da8ad91ad"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4b5d5e649d00e9b874bd867fc4e07d13ec3fd2604ace608546f581761d915097"
    "ko"
  end
  language "nl" do
    sha256 "ec498be18fc838b988e0b57a47d8550a8812d3cb11d5f45e20c8fe89cb58d766"
    "nl"
  end
  language "pl" do
    sha256 "516c2a185a5251114fdaf7008d91a523947cf5536332e53621a99d7c1d1e9acf"
    "pl"
  end
  language "pt-BR" do
    sha256 "82221d4297bafb3b2de7baad09d8f56f84f2487fe4f0af8304c05f5faac90150"
    "pt-BR"
  end
  language "pt" do
    sha256 "c70d4ab0e5e67aed42fb673ed3b6c03db8edd9dc34173bb7535132d82cc722a6"
    "pt-PT"
  end
  language "ru" do
    sha256 "0eb8aa7ab23ad130eb1074fb03f89bc46aeaac4b374d945835f5e34de90696bd"
    "ru"
  end
  language "sv" do
    sha256 "e544918ca496d5275dce70563f38658ea1c0c4d83c525ce90d76dd353fc96f27"
    "sv-SE"
  end
  language "tr" do
    sha256 "83f7bb68c2d2b1dce715dbae6237cd8fe36287d5c5f0d2f79a5de6b920d9af76"
    "tr"
  end
  language "uk" do
    sha256 "31e0baa59df810452efdbff618a3e299e9110c964adabeb335a45b04c129d745"
    "uk"
  end
  language "zh-TW" do
    sha256 "bf22292ea8bccc2b0e6b3c8d12d0a261d92de26d02aec6d0fe7298bb82fe8891"
    "zh-TW"
  end
  language "zh" do
    sha256 "e74e9a8e0134a684618905a7de71e3d5f4a45e177ddab438ae0206c5bd52ed3e"
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
