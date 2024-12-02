cask "firefox@beta" do
  version "134.0b4"

  language "cs" do
    sha256 "653442975b2ed458bc645aeb1440f1f2af22dc642adac0516d7c44aaba9ec6ee"
    "cs"
  end
  language "de" do
    sha256 "73c88b1011f09f670f85e6b6376632735d4f19be4d81e74d7a188e36a6e6c711"
    "de"
  end
  language "en-CA" do
    sha256 "33cbfd5072ac676ee0ab39563ab01d72633e0dd7dc42624ebf6297cfee81d471"
    "en-CA"
  end
  language "en-GB" do
    sha256 "97507f92a4997e53ca07fd1d6accaa5e594e09f5fad8f5f19831bab67ececdfd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b79cbaad8691b5b573944df59d4730caad903c47595b69ba597e47dfbda91436"
    "en-US"
  end
  language "es-AR" do
    sha256 "ce4f65715c74156c6b1b3c8121cbb0dc17dc701efb6d5bbf39228bca613379ae"
    "es-AR"
  end
  language "es-CL" do
    sha256 "024115419394007aa8bd8789bc25d5538cf5d8abf205c268c1629ed15f5bbc91"
    "es-CL"
  end
  language "es-ES" do
    sha256 "de0ac3f8e360c25161bd24817de3d8333387ebd2c845256e41e8cf340d1b5564"
    "es-ES"
  end
  language "fi" do
    sha256 "9260da2163b20741401c78ce37bcbd438be51e1996141c1803eafbc04a62b647"
    "fi"
  end
  language "fr" do
    sha256 "71751299458ace19f73cfbf5f199dec2610c05620362c353a88494916d8cb266"
    "fr"
  end
  language "gl" do
    sha256 "b86d1ff6bc8b48d49c9e4f9b475050fcd50f2d3af662011e02ea136eafa328a5"
    "gl"
  end
  language "in" do
    sha256 "68c3137d295da217dd19902c0581250426bcda53e07e19b6a2b7b4d3ab13e982"
    "hi-IN"
  end
  language "it" do
    sha256 "509e41b2f9c6debf9ccdedabd3dc07ce464572773a6a0835f14ab48d4bb6e798"
    "it"
  end
  language "ja" do
    sha256 "113866258b0ba61cb2986f0240a6ac0438245a25ccb5b3c5b0cec2c05c8f4853"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "db17124ce7275a95aeff92d4d862b2bac9996a0b8b07838bf22e057c0f8eadfe"
    "nl"
  end
  language "pl" do
    sha256 "476337e149aa1d52a3b319b875ce0de28da83822208e208ecc4cfe681ab8a8a2"
    "pl"
  end
  language "pt-BR" do
    sha256 "6c2b7b096c132620889c962048665532b0a57edf078637c3311e02fb1501adfd"
    "pt-BR"
  end
  language "pt" do
    sha256 "a517d959ca15a3c4175dd501c6f9d8fda5bb51920631e6cc99b43e4642d4c989"
    "pt-PT"
  end
  language "ru" do
    sha256 "e0bbeac896c039804f5186a0078cf041445b32c0560c26a72983012f81482516"
    "ru"
  end
  language "uk" do
    sha256 "2f062dd93966d4159ac2249ec23f5ac9be6144a72fd9d4e97ef614f5c2aecbe6"
    "uk"
  end
  language "zh-TW" do
    sha256 "8d7f82e098248efb8dd724a7ac1c1ec38037a74321b2ef5b22dbbdfeb099d2e9"
    "zh-TW"
  end
  language "zh" do
    sha256 "1981e069b63b1ad1fd8bee43ea0c8f361e45e49db43466dab38043fba380b9ec"
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
  depends_on macos: ">= :catalina"

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
