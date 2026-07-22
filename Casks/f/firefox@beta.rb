cask "firefox@beta" do
  version "154.0b1"

  language "cs" do
    sha256 "7f4c1aa1d72482d2b7768e9baed8f840127f369e8dbc58dc28e9d7474a578e08"
    "cs"
  end
  language "de" do
    sha256 "c9f9114731f07b04a98f7e1cb827e5ec3e4bc277dbd968f6136e74fdeefbefab"
    "de"
  end
  language "en-CA" do
    sha256 "f8eb5beaf188715104cbc9d2fa62b62c40fbc9d7d06187451549f643b6bd4e1d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "321658ee8d731dce5efd29b6bf6cc83bf4dea0977066b5322b4a9e209c9158a1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7cc81b3937c04b85216163f4ce7d8d24e28fa4cdcdd526fe2be642d197b4b246"
    "en-US"
  end
  language "es-AR" do
    sha256 "1a46a80efa53ed922468d76f500a6c319c066059ffc56b015db2d127411961bb"
    "es-AR"
  end
  language "es-CL" do
    sha256 "0f850f7512d8dcf2aecdd8a30ce5b30c79729e17f55675f18697d2ebd0b6e15f"
    "es-CL"
  end
  language "es-ES" do
    sha256 "3243e332c30f1417a086af226467c3fedb8b9eae3f70781b228dd8d5b59cbf4e"
    "es-ES"
  end
  language "fi" do
    sha256 "11cbc1d098b408c328fc52556783c0a0ab90df3614025283da1543cdbdb29b20"
    "fi"
  end
  language "fr" do
    sha256 "4690768cd6b11b8c55d295495a84464b46117062da6dfdb6a56e35a5ec65a89b"
    "fr"
  end
  language "gl" do
    sha256 "2bae834265c129e9d5f9c499b3495957b79ae73a8303b9038b20d72eb8855177"
    "gl"
  end
  language "in" do
    sha256 "5a9c04891a6ec8e9b62fa69d02678b29feb298b05278cc65f8d209411d5f6fbd"
    "hi-IN"
  end
  language "it" do
    sha256 "9a52dbee9c73346615769c4c8e06561aa6c8976edf751c1b24340bdd5ae58f38"
    "it"
  end
  language "ja" do
    sha256 "df05afad48f0dadb8a16124887d681ec6c2598881b915ef68383549af98044f4"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "70fdd1844268f64933cfa2eb0586bd674a085cacf8b93aadf387a5351662e46f"
    "nl"
  end
  language "pl" do
    sha256 "ad461f1b6c2412b5da0ba28ca27b6c33bf535318617f3f2c9f8798e9c332865e"
    "pl"
  end
  language "pt-BR" do
    sha256 "fc596a822e33247db34ed3e021b9e03eb93ff1bebb4ad0aa5a270638b75dadd2"
    "pt-BR"
  end
  language "pt" do
    sha256 "7bd192855437440245fc7b24f4856ed481a0b7ed637cf2386883e166b789822d"
    "pt-PT"
  end
  language "ru" do
    sha256 "4639a2243f664d24aba7e0337b111150b43c8f31071d1002d8a99bba6256d15d"
    "ru"
  end
  language "uk" do
    sha256 "55022a2c9162488888496bf7b04e657ddc2bc44ee841d1bc8c37315bc9b85121"
    "uk"
  end
  language "zh-TW" do
    sha256 "b74d8bfcfc7e99bda0c4c80922f94e06d9114aa38efb44c834e0d87431b46377"
    "zh-TW"
  end
  language "zh" do
    sha256 "bfdcb416630be469ffbcea8793b2ff13ac29b90bc3fc5e263165c4e69eabd8d0"
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
