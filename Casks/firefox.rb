cask "firefox" do
  version "96.0.3"

  language "cs" do
    sha256 "85626ff393fbef11344ada4f959e6666835a3be1ee69ccbe09735f1500d879bd"
    "cs"
  end
  language "de" do
    sha256 "1a7d5363c2ab4f1a3dbaf8fd1d7b79b0e638772c72b66be41fac2816ea68f309"
    "de"
  end
  language "en-CA" do
    sha256 "ee0de6cc053761c1a949c5647a63ed1c406411eac4a101965f64d9e587f4e958"
    "en-CA"
  end
  language "en-GB" do
    sha256 "dcf35315ae4e1d1592da6cf6efcd08677f849c37f432ef86015adcf49390bd39"
    "en-GB"
  end
  language "en", default: true do
    sha256 "843c673ce69273dfa4c63b8b9839adf43914714f1fe0e5f7d8b436bb0fea28ef"
    "en-US"
  end
  language "eo" do
    sha256 "e5d2fc8b396face0a478fa52f1feae57041eb315e0cba2c62d452d7630f831a1"
    "eo"
  end
  language "es-AR" do
    sha256 "8c4b6bc3077527a538a3c17f3592fe544e6324dfcd25557fcd5185f6f5c1b881"
    "es-AR"
  end
  language "es-CL" do
    sha256 "37d37cb2d72637ae839331046c306c5a8422f3af3c299b5e522cf85466481967"
    "es-CL"
  end
  language "es-ES" do
    sha256 "aea5c7e4961b77ad8672e7593481f7c1016348ab18d2bbb6ef4a8cda92be1883"
    "es-ES"
  end
  language "fi" do
    sha256 "b7fae0486cbd17bada1253516925f36cc9170b0edee6162c5bff114b873b9210"
    "fi"
  end
  language "fr" do
    sha256 "7e8589fe90bc51a58427d4abf576cef1aaadc9046ac1aa8fdcb37dee94fda3f2"
    "fr"
  end
  language "gl" do
    sha256 "87845f0909485e1807de818f051fd48221b41169c079e1264f51f435f1b88901"
    "gl"
  end
  language "in" do
    sha256 "cd7a28811f44bf95b581cfeb85ff7285cf7b4d89becdce9987fd28df80eed4ad"
    "hi-IN"
  end
  language "it" do
    sha256 "c615c683ef6faca2d1b6f77966bdacace0d1006e933ebf4857af92619a1ff5cf"
    "it"
  end
  language "ja" do
    sha256 "211b9d2092d67a13e493b8cab6519c69bc6e2a47cb1e3694f947768dddeb7d89"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "3a0ee1982bf0ec752253a01e05152f6081932fcc557c46d9f18a41ac71611392"
    "ko"
  end
  language "nl" do
    sha256 "127f1cec3685cf33e67ee987c207fb6be56e8fdb3789a05c27aa66ab4035bcd5"
    "nl"
  end
  language "pl" do
    sha256 "502496151cf9d73e82462e6e7ade2a231de59a5b96967292b3f84daadd42bc05"
    "pl"
  end
  language "pt-BR" do
    sha256 "57d429d37888fb20660082f0752b8c6a8ff844c876479ef6ad720a3346370946"
    "pt-BR"
  end
  language "pt" do
    sha256 "251447eaeb2eb662d4fa83db5ed4006e3461cf25da582638873dff0623f83b6c"
    "pt-PT"
  end
  language "ru" do
    sha256 "0784faf2c74db5fb6071322e8a8a0356f406a9b2301f1295cdf16a604f1571a1"
    "ru"
  end
  language "sv" do
    sha256 "9141aae35a855ce038938985b284b358c1e7b4d7bf534b1d8d6515b8dff1f9a5"
    "sv-SE"
  end
  language "tr" do
    sha256 "eb3f97759844247e0cdb744e87006a7d76bc66bf6a63798a39aa0fbf53f4c111"
    "tr"
  end
  language "uk" do
    sha256 "54eb4787a9117b0a076cef636383f43fad2ab9fa6b99f20d73d49d42439b12e9"
    "uk"
  end
  language "zh-TW" do
    sha256 "70d894bc6fa94429f9f64fb4fb4f0fcfd9d7c01a1b7bcaef2d4e57b54506b135"
    "zh-TW"
  end
  language "zh" do
    sha256 "71c0b8fbe0d940bca3bfc12e24f1fac67bf33a6e04224552085355e5bae2b30d"
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
