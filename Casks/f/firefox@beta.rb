cask "firefox@beta" do
  version "153.0b3"

  language "cs" do
    sha256 "f092017afadd2e98a1c5909e29407965522e91b6fdd663e6e314b7fc70a1d773"
    "cs"
  end
  language "de" do
    sha256 "1163f0d1450b822b7a3c02e128089b03a8deacbb5fc0ec19156bfa2b4bb9aa30"
    "de"
  end
  language "en-CA" do
    sha256 "64e7fae1d83fea3a2816c9c6668fa71f5d87c9ffbd16bc00130d5cb07f47d228"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4eff302fecab49fcaa920224f9a7b7337f012f203b135b97a227ec9292a1629d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5f3a0cba8639b8160724700785ff9a4a30fcdff7005c06337e893c8dcf8caf67"
    "en-US"
  end
  language "es-AR" do
    sha256 "4931c7cf26b94d8f3bc39f9eef1ab0ea1111a92b131eb4310dad7988a0bc7af6"
    "es-AR"
  end
  language "es-CL" do
    sha256 "e3f472c9bfeaffe1ddd46706c3e23fdd96c81b23a9932d77d2dc2dc076f83026"
    "es-CL"
  end
  language "es-ES" do
    sha256 "4ef7ba556ec7f2f74549f9bd18cadd504a2fbb8071589b3b5e501691289c0809"
    "es-ES"
  end
  language "fi" do
    sha256 "d0d1ee5414162b76de0b291dfe66ecf4a13b2aa4504573fb9dce513be5135764"
    "fi"
  end
  language "fr" do
    sha256 "51cce8a2d73703fa51e17cc2f3af877c79f18e74f1dc385b766e9fdde2b48991"
    "fr"
  end
  language "gl" do
    sha256 "ec77f9e28ca73da474661cf891f12268d7406f86d03fdcc8911bdb4c5122f505"
    "gl"
  end
  language "in" do
    sha256 "30b0ae8b67b65e1ad4f28ee26ad296de48830ec114b087a39b545b998d073a21"
    "hi-IN"
  end
  language "it" do
    sha256 "c924362772338e371927f9c1a32e5be8c6a0a48535c5a46b2bb84eb9d3ba32cb"
    "it"
  end
  language "ja" do
    sha256 "4524c16f19e7ea01dea621dfc42f3a8e1fd658b35282365fa9eb7e24a2c3e201"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "cef0cc4ee217e549a1f2dc3bda2519fefdf23567e79b53f0f96fbaa1a4da057e"
    "nl"
  end
  language "pl" do
    sha256 "89b7cc334c7a253f9f318e807bd511e75b656d25e4915353802ef83465d5bed9"
    "pl"
  end
  language "pt-BR" do
    sha256 "8d8f7bc49597993f2b46707d246d0a2232ad50a6365580236e4cedbc04f1e964"
    "pt-BR"
  end
  language "pt" do
    sha256 "36a8823d6e896ce222e79b7422c0195651882c589f7369e1fe3519bd11185893"
    "pt-PT"
  end
  language "ru" do
    sha256 "63239971d87517fa6bdd8a331e220837f40683e8ba20ab61c613ecac9e2faa2c"
    "ru"
  end
  language "uk" do
    sha256 "10d538ef5522d2aed8de729ecf2566be30506b3e798849bf392176dcf51ceafe"
    "uk"
  end
  language "zh-TW" do
    sha256 "bbd2aa20bc8a6ce1ab612af21ea23642ccdaf078f283313c12684d01a76b4b8b"
    "zh-TW"
  end
  language "zh" do
    sha256 "97c3ad21a2156ff1f211fa983f801b43e421f00f5ecd9f23570094354b852a8a"
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
