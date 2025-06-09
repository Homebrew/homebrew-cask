cask "firefox@beta" do
  version "140.0b7"

  language "cs" do
    sha256 "c59b0bd938eb76f05bc9351731b9564ebb774154cd1c42f2c6fba72ef43a665f"
    "cs"
  end
  language "de" do
    sha256 "1256e8775af8e3ea04934a38caaef68e92084e9c4e457da8e76a19c32708f4c1"
    "de"
  end
  language "en-CA" do
    sha256 "13235a24ebc51c22959df9e02697954059c38bee91cd8622f959a53c286e855d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "831989aa16b150052eff01ce52652c3372e22bd5570c16a9c9ddc0994ef08d05"
    "en-GB"
  end
  language "en", default: true do
    sha256 "24a756a979ef4c23e223002e8cb748ad69236f023f0ba0168d98add4f5d0cb8e"
    "en-US"
  end
  language "es-AR" do
    sha256 "1bc6f6e8710d11273deb12ac7cf97d657fd58331984bf397d56b96c4f86f089e"
    "es-AR"
  end
  language "es-CL" do
    sha256 "9a1eb0904a4c9b49ed739fb99d1c1465971e8d3dee2edfddda787e962b6ae551"
    "es-CL"
  end
  language "es-ES" do
    sha256 "db3b66411b699fdb7adaaa0d28d6753db58eec27d3464f7c51ab275c4adfb077"
    "es-ES"
  end
  language "fi" do
    sha256 "44ac26bb0518308a036858e6f1db17cd4bf783f4427e173792c77f1f9cbee73e"
    "fi"
  end
  language "fr" do
    sha256 "c0aed388576e73433db2d57146e9ab779bb85bde1e436f377fad04e6e22d80b1"
    "fr"
  end
  language "gl" do
    sha256 "33bed4cda43886ea5c5f0759f3189786e6f3be5a4d9b27c92771ad3ad6ea821c"
    "gl"
  end
  language "in" do
    sha256 "f6935f59a7ae985f40a928aecebc66d0eca48e33ae5738522c53bad16b79b7e8"
    "hi-IN"
  end
  language "it" do
    sha256 "50c193ecfa72ae549d5d5022f9f5aad64f46f1b318b3704a25d47cd753ca3b12"
    "it"
  end
  language "ja" do
    sha256 "acb15329152844ba4765f8ba66ee232602efafa10ae4538b694712edf4242daa"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "60fc5bca1c7b8eae201afacef31249bf027b281c49a81dcb4748a97fff988294"
    "nl"
  end
  language "pl" do
    sha256 "34311e26a74e5060dc947ee084c0a085ce1d47431b35fe55b29da097c79996c4"
    "pl"
  end
  language "pt-BR" do
    sha256 "7c8687c5715469efeb0d74065f3815e3d42746ced3ece1be50c2b504311f2818"
    "pt-BR"
  end
  language "pt" do
    sha256 "16b3384fe7103aab23e1e6535e4e76cb2eb03e50746b6536a4e733d5dbdccf2c"
    "pt-PT"
  end
  language "ru" do
    sha256 "499db494ff6f278936a3d56a5488a4ae4ddd4b6823e49faa91ab3b541df19b8d"
    "ru"
  end
  language "uk" do
    sha256 "98e879238e83ec9feb80ada15ddf39c9838bbee2aa41a699b315763e2fed32dd"
    "uk"
  end
  language "zh-TW" do
    sha256 "592fdbadd763cba73fcee98ecabbba849d88968596d90bf83f943f07dbfc6115"
    "zh-TW"
  end
  language "zh" do
    sha256 "a4c054496c5a63f31514405f6785e4f2a5489775439983de688d282d44791d63"
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
