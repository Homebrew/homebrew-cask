cask "firefox@beta" do
  version "147.0b4"

  language "cs" do
    sha256 "319aada3f31c44a071b58f7510590189776c12f1f71818c74671ac8f1d88d226"
    "cs"
  end
  language "de" do
    sha256 "b8cdd9fbe90b48714e3ee6dc3cb5da52b928e4e2e91ab2a3295410281b8c557a"
    "de"
  end
  language "en-CA" do
    sha256 "7a91d506ced087262fa722d9f9ee4df3483f8a73d5106a78457211752b07b2f4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "90f24b9d55dd63a79f7b9980ea96f089ed6646cd5b8c1ecfd30126e6f8f06e6d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f4137c9427e387dc73838950d647f76b598121ed1e57897c5635ccbfb4fa9319"
    "en-US"
  end
  language "es-AR" do
    sha256 "7fde8068903773608a6a5698e410420dcc00990c7a01987107479dfe6ed39180"
    "es-AR"
  end
  language "es-CL" do
    sha256 "666ed7bf54e6d8870f96559b8111c7bf65488f78f46be1ffcf7a0cafaaaa4a71"
    "es-CL"
  end
  language "es-ES" do
    sha256 "7c5475a4d2b1919297b35a2f8def6e114fd157c3a9965088272c4068f53d7922"
    "es-ES"
  end
  language "fi" do
    sha256 "5722555bcd6abbaff6c2e92fd0ef7015a12dfc7b620709d00ffd3f7e020303a2"
    "fi"
  end
  language "fr" do
    sha256 "6162e9aeb36cf43cc5839d0e9e97dc971fe30c51ad07394f5a2a444bacd5ad11"
    "fr"
  end
  language "gl" do
    sha256 "10b036f3e5a104fa0ea2b052f04bfeeb88451fd6c2fbd9890061d582c96600c2"
    "gl"
  end
  language "in" do
    sha256 "e81afc720cb9681067fc27236692055e29b79b19929138f87ce1c0a5d38f904e"
    "hi-IN"
  end
  language "it" do
    sha256 "bd82bc421fede77283220d3d9e6e521c68f3326ee9ba0ac1090664a75eb2e758"
    "it"
  end
  language "ja" do
    sha256 "61b07c845bf8448c8e1b77d2b1c45e2e96e9d3eec7e3f3b7c45e4580dbc6255f"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "95724c1d89ca2acc7590203541f19260c354fc283f8ea59a80fea7ca72354c8b"
    "nl"
  end
  language "pl" do
    sha256 "c956ec3d86b8879b103253a54a43681d5f6e6a6f52bd4a8f91270e0a1c4459c2"
    "pl"
  end
  language "pt-BR" do
    sha256 "3dec72d2b53072c8799404470e60f17bdd51e8a581b88bc6ebc5459b3739b0aa"
    "pt-BR"
  end
  language "pt" do
    sha256 "79500f251740f3daef93d2d7c15e657fd39a04d147076d9b937d544537984d7d"
    "pt-PT"
  end
  language "ru" do
    sha256 "753a91af4cb3c79f5e8deda6e5666a4847132916498240c317cdb41df602e9e3"
    "ru"
  end
  language "uk" do
    sha256 "0358d14019f7225d9f40b96a00efa6cf9c1931ced39913f2efd2bc0d34b2b575"
    "uk"
  end
  language "zh-TW" do
    sha256 "7a70fc70867293397ccecf12a1a8ed3a4843bba73b63d94ce954829ab7761f70"
    "zh-TW"
  end
  language "zh" do
    sha256 "bd3e9baa1c9fd98a78a93b1e88d14574fd9f0e62086d7740c9a38155aec5ba9f"
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
