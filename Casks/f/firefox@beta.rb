cask "firefox@beta" do
  version "152.0b6"

  language "cs" do
    sha256 "fddc8839bb73486dc5e8d994a112776ea9369f41691784e2cd073d2b147085d4"
    "cs"
  end
  language "de" do
    sha256 "96dba382875dd9fe46f65c4eb87cbbe37bcb92229c8280ca799ae737434f17f8"
    "de"
  end
  language "en-CA" do
    sha256 "7d493e3b30600e675ad292848d6d9cb9074b3ef7b9b227d47bf118c10baa139f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6b45676f1730f45f45f0eacdc32e00240bd13535d07d9efa81812219f5752f23"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6e0f2175ee573005ccd31a7ba5adeaa9c40d5905e53f5d1ff3b6825e692380a0"
    "en-US"
  end
  language "es-AR" do
    sha256 "ed59bdfe27511b05ad2dcfda4e33e1f4c7a1a50aaef42c076cb970a782cedca8"
    "es-AR"
  end
  language "es-CL" do
    sha256 "2bdd367b3613072c07a6db8104a19261163a233c7921781b99d5f2355152fc48"
    "es-CL"
  end
  language "es-ES" do
    sha256 "6bbe83be46c9b76afec64258f5906f001bdd304870fa933a7af0b65d70552fcc"
    "es-ES"
  end
  language "fi" do
    sha256 "4a757a8a270a5d9fd6f53b943be21b847c18bddead1b0a8a6a29e47402f3ccf0"
    "fi"
  end
  language "fr" do
    sha256 "27e4f838dba9a1654c03bee5a155af561f52a8558aa803f8b81cbf49b5c5f619"
    "fr"
  end
  language "gl" do
    sha256 "8fe0da09c3d2c62b1fae38a787a6c803b0b62301881a82455e90442c1b4cc988"
    "gl"
  end
  language "in" do
    sha256 "0ecce6dab6d5ac75511fcea4d3a540d3c0bc267f063e4db06e211a4ee47ce9e2"
    "hi-IN"
  end
  language "it" do
    sha256 "d1ca55470165602b4807655bd20a7cbb9c23a6c36d3e8e970077fda7a68f5369"
    "it"
  end
  language "ja" do
    sha256 "91d2dff8a508778094e378d29f48b3bc84c3c4634233a2ec74bd0ab545125296"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "6821c3e324d779f8b7117a90ae2535a66ff9cb88d93d046a132e6c8e959d4c91"
    "nl"
  end
  language "pl" do
    sha256 "43df6378e6d01336022a02ecc02daf711bc46f0b6cbd7095335177658ab71d7c"
    "pl"
  end
  language "pt-BR" do
    sha256 "a499b27ec5b32d0804f086b95aa647786dde9d7ec0a92eb13cea56dfb5d2a80e"
    "pt-BR"
  end
  language "pt" do
    sha256 "8c5b5ef3428292fa083560c7f943dea61ed2e4a159c3daa939fe61b48cf941b3"
    "pt-PT"
  end
  language "ru" do
    sha256 "f2ab704417f646a82059c243c299352cf8960cb5c960130caccfa08fa9d6aa4d"
    "ru"
  end
  language "uk" do
    sha256 "1f56732f8c77170f5d4424f822d2b4a28fb280cbc6374fd77d87d5652b4bf729"
    "uk"
  end
  language "zh-TW" do
    sha256 "4c16bd3ce241763fc79f96f45cf1a6368a58864d0589aa6a7dec08bd975a4eaa"
    "zh-TW"
  end
  language "zh" do
    sha256 "238035eee8566afdc61f67b4c00b008468cd359d0f0d047d3d641173c55c5d0f"
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
