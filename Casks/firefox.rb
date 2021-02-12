cask "firefox" do
  version "85.0.2"

  language "cs" do
    sha256 "1016dc6adfa130246f124ae7bbd8aba996624a6017d7ccecc9dbee815e791142"
    "cs"
  end
  language "de" do
    sha256 "b9f5f5d650bc9af08e5ce6b85ec0e056a7d439300d189db3520954cb93aaf4a9"
    "de"
  end
  language "en-CA" do
    sha256 "b4e92dd9bd57eee961de55445eba5d79dbe6947ac85d0e7cd6226fc0775a2d54"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d95f2d98336d1055c852a829a8506a65efd0d80d1863837b40f2108b20de17c7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c6a7f39bc0a3c9df99c6c31aa13cb9d6d89d606c8961cb1de5e4b279c2b30273"
    "en-US"
  end
  language "eo" do
    sha256 "bd6dd18a094a76bec2e205ea9ba3ed8dcff4d0b1e92c436b447ec10969d560cc"
    "eo"
  end
  language "es-AR" do
    sha256 "073c75a83ecdeecf4a09aeb0bac737d2d624cd6510eb6437ed3c7d0f01d44810"
    "es-AR"
  end
  language "es-CL" do
    sha256 "40edadb86459e2f79a18e275f74ee2ae070ac04c627d7e6f82c825d787c4a71c"
    "es-CL"
  end
  language "es-ES" do
    sha256 "43125955828b79064cbda0f7081261740b5105b915265c7f47e1c0ecb4b551ae"
    "es-ES"
  end
  language "fi" do
    sha256 "5f1d626174a108f111c1c4c812631b18df67ee1ce40e8325815fda8452d9ed63"
    "fi"
  end
  language "fr" do
    sha256 "5766082cdce9721870e61b64fa8ee1ed9c5b9de8b4dbc5557e5bca7d01be5548"
    "fr"
  end
  language "gl" do
    sha256 "1b0651f450cbc2560cba1ede9eeabce3a3aab540c93425e549c693b81f2d4139"
    "gl"
  end
  language "in" do
    sha256 "aa4f280a73d5e1bfe5e9ae8e71aae5eff8d2686abf1aa8c221741cbf80a470bd"
    "hi-IN"
  end
  language "it" do
    sha256 "e96c96dde98fdeb451afb11edcfea88c54f083b8fdf661ed132991353b59dcb5"
    "it"
  end
  language "ja" do
    sha256 "b976bedad0d91b72bb44a912b37d408a95ced018c0fd0a3e06d4646c5f2a827d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "6feab61a2d5f44a32175f01f9663fd48a3fe53f2cb1ee615d2bcae9461cddb17"
    "ko"
  end
  language "nl" do
    sha256 "d9bb8fc04c5f7cc4d4c34603d8556c567b96f1205beb9ea1db1ab096045451d2"
    "nl"
  end
  language "pl" do
    sha256 "71c057823c5816a4329187cc08217dceb06e3c362bdec5d7985b2ca4bb041cce"
    "pl"
  end
  language "pt-BR" do
    sha256 "7df999ef4a9510efb8d90d70e596ae52659c5ecd2c4f37f6c629ef3edec2d095"
    "pt-BR"
  end
  language "pt" do
    sha256 "4ca491ba7cb4400a96aaade2b2aa837fe2dba22259bebf3a7c2c5ee98c9273c5"
    "pt-PT"
  end
  language "ru" do
    sha256 "76298d0d5b2f12484837a93a26432b8e08cfc0132e810c66d28455f58278c878"
    "ru"
  end
  language "sv" do
    sha256 "20065eac960973a7970394fec08b07d52811c51b469ddbf45b330541e61d5d63"
    "sv-SE"
  end
  language "tr" do
    sha256 "564711c57c10b6a84523e9919cb505f714d15207d9b2bffdbc3c398e5319dfa2"
    "tr"
  end
  language "uk" do
    sha256 "03988720a4675f3aaa9e942bd6e0f417460d1083e1af22244c3ef8d321f33eb7"
    "uk"
  end
  language "zh-TW" do
    sha256 "7b00120980c156f9c998231a1843627108645030b377a6dc024d022d43733741"
    "zh-TW"
  end
  language "zh" do
    sha256 "fbe2334d58d8ef66b53cf7e098c0227310caa13daaa191445772ff7865e637a0"
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
