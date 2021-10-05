cask "firefox" do
  version "93.0"

  language "cs" do
    sha256 "8a3da54764541b567a65c53f5766807797f900b46429da3a303b0a41ea4a0361"
    "cs"
  end
  language "de" do
    sha256 "56acaa227f7af09c858a791c8030758ac98fcd03fe6794451c4c4c24a9aa3c86"
    "de"
  end
  language "en-CA" do
    sha256 "f1890aa5325290a7be2dbcda28c6a219611bbcf19fbb914bc9ed81973bc137f3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "31df9384a4c01b5fba9f3b7e2355b8ea1cd122bd71b36e4a0341c9d237701342"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b4c78628c2bf68ee431e15d998383fb6168dbfa916f848f27aba73db67410bc6"
    "en-US"
  end
  language "eo" do
    sha256 "3839ad8a8bc3f6f5e055e215b427cce95ea82474cfd1ec74b16fac2f40d47cbf"
    "eo"
  end
  language "es-AR" do
    sha256 "174dfea1d06476b249571fe8f14178321d1c5e308c26126eff31eacdb193c393"
    "es-AR"
  end
  language "es-CL" do
    sha256 "eaafed0e54e6897441343ef1547729026f881af3fa3c99a2618a0e0e2867407c"
    "es-CL"
  end
  language "es-ES" do
    sha256 "d6a679e252206f31d67de4961d6bdf4bf16b072ca5c9e869bf0d2d910d62829a"
    "es-ES"
  end
  language "fi" do
    sha256 "8504380ceab4a67b804a57f23b7771d0ab5137a0e49f67c399dac8c4f74ccb72"
    "fi"
  end
  language "fr" do
    sha256 "afc2e6aa9e6f8586f10797d9406efd0a67f4ab6e195d728369f6d293d5abd87f"
    "fr"
  end
  language "gl" do
    sha256 "5bd9b232787af700ab7ef13f2c1c1420887dc53fd894a001aee324c08c54f8d7"
    "gl"
  end
  language "in" do
    sha256 "d3cc510198271405286f352fe7d8cfdd252414c6dabd460a3b5a529943821960"
    "hi-IN"
  end
  language "it" do
    sha256 "bb8b9c18d053cb500437e5e32e58433b147344223d038e00ce5bae666277572c"
    "it"
  end
  language "ja" do
    sha256 "b5111dd1bc27fc27e6f336bc1b555aef779285ffa4f2d0109416c30edfb8aca4"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "5f5f739d7b2c49abe5c7c6466826996a8b9c603653d70d5c84725f467b2b2f45"
    "ko"
  end
  language "nl" do
    sha256 "de24cd0c7d43513bf727711cf51830b118a51de98eec1b843c8c5c7280b35e0b"
    "nl"
  end
  language "pl" do
    sha256 "cdb896a8d8d3d6cc227d35469c4d1520682868eb24951cf37eddfbdcdb4481f1"
    "pl"
  end
  language "pt-BR" do
    sha256 "731e644fda10ab5bdcf00d3f2191e1b73a88417769d54bbded775222d6f9e068"
    "pt-BR"
  end
  language "pt" do
    sha256 "da590dc32898d92142e12dcdae0435b769126eec1173c08b362b8a46e591d206"
    "pt-PT"
  end
  language "ru" do
    sha256 "566a97adae6f4873de57cfa94f757fe64f36833cd1557b0ffe0ac06839025d76"
    "ru"
  end
  language "sv" do
    sha256 "07116def57bf06cba709c8e548a1f29eedab16d1aa9424a999db0b1568f61c82"
    "sv-SE"
  end
  language "tr" do
    sha256 "1b343912eb59fe4f75ca784a3e6bb0a09a3ec02096816622048b7d4293c5a17e"
    "tr"
  end
  language "uk" do
    sha256 "8b37d5eb8c0aea2db9801eb9c98ea84a8c8650d8316b2ca5026f5cb1d641a44c"
    "uk"
  end
  language "zh-TW" do
    sha256 "45ac78577273911304b8b6632497e41f7ba8f975a15777c963fb96fbf25543f5"
    "zh-TW"
  end
  language "zh" do
    sha256 "5ad2216d33b49126c49efe150202006f7d4135f585849dba5350e09e8842bd9e"
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
