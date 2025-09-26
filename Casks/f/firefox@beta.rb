cask "firefox@beta" do
  version "144.0b6"

  language "cs" do
    sha256 "6cf1dce1e1d4207df1088396fada1730eed08be0cfbcfe6f3f7431c9be88c77c"
    "cs"
  end
  language "de" do
    sha256 "34580decfe31ab79a919de126f527167c693c5e99178a36f7a6872db4f230c5d"
    "de"
  end
  language "en-CA" do
    sha256 "5b7778b278e2c9ba80b0848d98c6c684cf85d0f3a4d89d23fe5e582b402eff2d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f9e7b90111a409acbfa047ed211a95391bdc119520240273a255624de93e76d6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "720a53b57cfeb97806e2bdcdb4a17188ab073f08f3cad5aa5975a5cf3dd9d095"
    "en-US"
  end
  language "es-AR" do
    sha256 "a0f5a2bd27fb8a6b409fdfc48207523acd1932448247fee08c40f6551d6d8965"
    "es-AR"
  end
  language "es-CL" do
    sha256 "1c524863485c229b34e5e8c3063b9046dccc65ccd7908ceddbd3bd66be92d1d3"
    "es-CL"
  end
  language "es-ES" do
    sha256 "ae6bdfb00d931544e1770ec5b02abdf39a1c35407b09f911cf50622e71d15d94"
    "es-ES"
  end
  language "fi" do
    sha256 "aacef558cb42d45bd156b989210c22829c44df2996da3f342336b36d5f491847"
    "fi"
  end
  language "fr" do
    sha256 "51aad55cf3a139160f05b77ea39cccadd73bb095e0c06c29f415507cf597e4d4"
    "fr"
  end
  language "gl" do
    sha256 "aee9c4c9cc35229830415d643278a0d68d01dda16783f71a94b62e77b974d2c6"
    "gl"
  end
  language "in" do
    sha256 "dd52ca065d9a8b430c34a83bfd1a11a7fec20e7a3612d05191da51d305bf72eb"
    "hi-IN"
  end
  language "it" do
    sha256 "dd12a50b0d53df7879632cc040ab6228b9060b5c97922f375fffa35d84f91f02"
    "it"
  end
  language "ja" do
    sha256 "880c5b31e7ce1e5a5098f59d96a5fce96aab58bd6eb9188ec078b9629a7aecf1"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f9ad5fc46aa64dde7f9d41e35ed0f9cf840d773c568801b9a833067bcf0cd6cd"
    "nl"
  end
  language "pl" do
    sha256 "83836109fe83f9683c1ac2e6e3327dd4f18f776fd9218b6c0fc75c9a10bc1bd9"
    "pl"
  end
  language "pt-BR" do
    sha256 "74b172aab06d6ed63f2ad0a41d3c532be161e94d7f8dc970ace2eb63aa877023"
    "pt-BR"
  end
  language "pt" do
    sha256 "d19e5dd7cd03b1bd3b8f31842ef43b62a35e0d478bfcc990159a304b2152e303"
    "pt-PT"
  end
  language "ru" do
    sha256 "fa817cd66ab283fcdcdd77aec3b844ed8a87a4c4bbc4224d3c3c205400afc15a"
    "ru"
  end
  language "uk" do
    sha256 "78ba58d39d20fab8029732bd364977e3a2705a6af66547b80bf177a618e61997"
    "uk"
  end
  language "zh-TW" do
    sha256 "168d80359f840fe6ca91f283733aba554b3748ca68a48fb913f6bc0e3f88a910"
    "zh-TW"
  end
  language "zh" do
    sha256 "24711d315cc168a5cfd7922c5a7641f140a4556fab7c7729e52e54a91be4db93"
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
