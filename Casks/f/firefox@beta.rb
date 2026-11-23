cask "firefox@beta" do
  version "162.0b1"

  language "cs" do
    sha256 "7808388dac8d10f694de5b0b0de071e31ff7f874ba0aa91fa01a7c9b0ab98d3d"
    "cs"
  end
  language "de" do
    sha256 "f1071e4f24801ce0df1025aa81afa441ea6f4d04d6d7ee38604bbed3c1955076"
    "de"
  end
  language "en-CA" do
    sha256 "e875f71674e79ba13aef54d559d114abc3901245b1fca3d47d4e5d9349bf2ccb"
    "en-CA"
  end
  language "en-GB" do
    sha256 "9b3045558c5f60aa51a34aa73f3d7a5b11e7ed21a1973cfb210161fcd421b06c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6a2ecff9857aa3ff559602527f3a2c659ad8625ba207f276e93f3e758a5f80c5"
    "en-US"
  end
  language "es-AR" do
    sha256 "6338352bf1f2910f50df06d4a7cad5c082511dfb7298abcf789059ee73544855"
    "es-AR"
  end
  language "es-CL" do
    sha256 "2c9201ca12333c8a7a3a6796a835914b38c7e2d758e042988050f2376e6f873c"
    "es-CL"
  end
  language "es-ES" do
    sha256 "4fc6afa57c80d4e1621774d3ac083438dd05fc1d2cb952dfdc9992909cc34b60"
    "es-ES"
  end
  language "fi" do
    sha256 "b9f88d2eebf25a4b443d5b58271502d258e321f57d717e7191237ff7819a3761"
    "fi"
  end
  language "fr" do
    sha256 "6dcd8fece9c9d6086fbf997972fa88e5e1f673b3e4c56cb2b8b63d0c4efa419d"
    "fr"
  end
  language "gl" do
    sha256 "0bea857ddc25b89134398c808a1cb26d69dfb1de3033a320bedf0103e6e27698"
    "gl"
  end
  language "in" do
    sha256 "be48c8911d3c48eea31110a7305387d20d7ae0e23b5b6418fcfa784ef22a4d71"
    "hi-IN"
  end
  language "it" do
    sha256 "f2d908aa23a80b567bf45e430492817eb492e49c92a04f8503a6f59837e1e87a"
    "it"
  end
  language "ja" do
    sha256 "c07e7e9c99482871abdf6fa523e4824fddfd0bbd1b320106f3fe7ffca11166e0"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "c8c00b31d736e0a03643bd7e1144c18c1f5201252a0b3adeb98506f5cf5106c1"
    "nl"
  end
  language "pl" do
    sha256 "2ba2635420878bd1d7b470f4be0f77878a90e4844da6fac6cbb5336339d8c91f"
    "pl"
  end
  language "pt-BR" do
    sha256 "a1b671056c8e17324dd218f27399735dda5922b276fdc1c2671f0fe24babd53f"
    "pt-BR"
  end
  language "pt" do
    sha256 "50cdfb9b9c6ce42fca9d26c245dad4f75fdae0b0e6147ddc1114bd98dd81df8f"
    "pt-PT"
  end
  language "ru" do
    sha256 "f1a87bdad4a7a8213036831125cc10d011ae03a3ed01af370572157eb3d3776b"
    "ru"
  end
  language "uk" do
    sha256 "3d67beef946ee4878477aa24bca09471753da9f89cecce1638e4f0af830f5f92"
    "uk"
  end
  language "zh-TW" do
    sha256 "b3af1a71bca525fdf6e9740ba8fc7033b305a5e5e35f3a3830331309cdb0c2a9"
    "zh-TW"
  end
  language "zh" do
    sha256 "b522ec9028bcc3970409f7fe5617a455efd67365df3f166b7bd1e2bf2d101f78"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
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
