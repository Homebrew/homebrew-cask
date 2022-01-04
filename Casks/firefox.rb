cask "firefox" do
  version "95.0.2"

  language "cs" do
    sha256 "3581f1658a505ea2876f179bc31f820c16ebb5bf3c4c6bfe900f0b07f4f97216"
    "cs"
  end
  language "de" do
    sha256 "41d0d5e26af6cb128a0bee920837a880c91bf40a01bed949b897a6e99b6cf72e"
    "de"
  end
  language "en-CA" do
    sha256 "ab64cf822734b3f38fe1b3e2e1ec7a8850d136b1e46f49bd7960a11bcff7468a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "040fe7d737a8eae784f70ccb372f96df3c1d577ee0c3bde8757330da961255d7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e823901d77c1db20afcd5270d159256a340974d808f98a3f2e8560dc04c58c57"
    "en-US"
  end
  language "eo" do
    sha256 "03f73e2581036f8664e4ab0d11fe4c04e394045c36a283fb81f7cbec6736fa46"
    "eo"
  end
  language "es-AR" do
    sha256 "799a256806376a9375bf6254ea18f9bc418df07a383c04e047a7ab942551e7bc"
    "es-AR"
  end
  language "es-CL" do
    sha256 "6d0cba0339ea5a38a50485bd5e1b8be2b00a394846981d4ffdce7008b86ddf71"
    "es-CL"
  end
  language "es-ES" do
    sha256 "db1da4dc124b8535387315c81d5933cd788239ce834e32569ec0fcbafbc3f3b1"
    "es-ES"
  end
  language "fi" do
    sha256 "c17f8b77d18a6f12ea9f7b95dddfec5d4a8a897222975cd480a254d0db53de10"
    "fi"
  end
  language "fr" do
    sha256 "0c876f1d67066f833facda46a4aa5378471879fc1d89cb08384f5f3e38298ac7"
    "fr"
  end
  language "gl" do
    sha256 "b7d8d5a807d3667233e72d633773966509dba718bcd1105226d18992326480d3"
    "gl"
  end
  language "in" do
    sha256 "8c4948d3a7ff5cc3457cf2bad37b66925e47fb0425af7a0e5471597421b13704"
    "hi-IN"
  end
  language "it" do
    sha256 "30db78893bc18cb06faaba75f27202fbb06343a07d7a0d8531a9625b061418b1"
    "it"
  end
  language "ja" do
    sha256 "71ca766367aa04c0ef7ce5201399ac1013ffc4194c05ff59f91904a6e1bdd263"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d99d08d24bf53bc1c1ea19276ee5c905be7767233d67632cf1ff5413b334f414"
    "ko"
  end
  language "nl" do
    sha256 "982c2e7804af6aca05f47f6d19119f0f6c39f0add684a5cae36447b3cf13978a"
    "nl"
  end
  language "pl" do
    sha256 "fa2c3447b9b6381dc0c0fa053e0d7637c23918f59230f4866bd6e5a2428df2ea"
    "pl"
  end
  language "pt-BR" do
    sha256 "eb1637734b3f79f890ca8d4079a865307381cf205703404b4524c08a4b3f149a"
    "pt-BR"
  end
  language "pt" do
    sha256 "7c4570575e0b6ba2141663aab3baa08f170c7c36b75a440bddd04f92d70e6ec9"
    "pt-PT"
  end
  language "ru" do
    sha256 "8d7aa4a111b2bdeee69cfdbe62855c21b60da230e034a987330c72c8ea1d7929"
    "ru"
  end
  language "sv" do
    sha256 "2377f630cdc6ca7a98a6cb7211c593981a718e1a09c3035970eab510530917b7"
    "sv-SE"
  end
  language "tr" do
    sha256 "aff40fbb9ffef41c5d858d6d7a86daeff949c7313fb609e26c9edede372a55b7"
    "tr"
  end
  language "uk" do
    sha256 "d071d9bb234403e2deb9a5931339bc3e2505315b10a0b53421a27c543cbce85f"
    "uk"
  end
  language "zh-TW" do
    sha256 "1ab49a28763178132b4f49fa5cd8426a631df599f6ba33e916a0ed250376ae33"
    "zh-TW"
  end
  language "zh" do
    sha256 "5b5c44464894743586f21573033fdbb0b44d3dc8801f51ec05e61e934fa4d949"
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
