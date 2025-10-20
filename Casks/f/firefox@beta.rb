cask "firefox@beta" do
  version "145.0b4"

  language "cs" do
    sha256 "86d619b7a00d9d2c0008314378483efee9304139583d90b3f087c08c5b151e8e"
    "cs"
  end
  language "de" do
    sha256 "9fdd8d17271ac9d667258d682b8ee49be94cbac6a6703457825123a4f5db035d"
    "de"
  end
  language "en-CA" do
    sha256 "ce980cd92b466aa12fef5f5d787be359c8ec6a2de3b17c2e62c9f24f493bcb1d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8570173ecfd75dff5560be3af9798b4e1301d92bc992954eda7579969b993269"
    "en-GB"
  end
  language "en", default: true do
    sha256 "eaf231be34826348015705d315b8531d526a304bbcb23e3c61302c32b3bd84e8"
    "en-US"
  end
  language "es-AR" do
    sha256 "2d8308b51df174f339c33f32caf4b98143ed74ac1bdfcd363de2b9c264e0ae7a"
    "es-AR"
  end
  language "es-CL" do
    sha256 "7512446e0192bca39185f5203a17082e06c7540f01dfeeda0ce15e9ac05085a0"
    "es-CL"
  end
  language "es-ES" do
    sha256 "475756d5eb5ee789c7fd45420faf3ddeec6286aaecad69c3066e4d6fb98da277"
    "es-ES"
  end
  language "fi" do
    sha256 "a1f4829724d0c261e36d9963b00ad4fca3bff7a9d9ba88d2c8645b8243a41d98"
    "fi"
  end
  language "fr" do
    sha256 "8e27156e01ad597830fd220f5c59870a01e315970506fcaf7abc8a91acf93a68"
    "fr"
  end
  language "gl" do
    sha256 "7fe32ed8b1a2d0fc0ef2aced3c876268eb1546fcb034ebff7379410afb2a4f68"
    "gl"
  end
  language "in" do
    sha256 "19a601e6e4c07ddbf572502cd3d0137e0419c55b2815b604bb1674cc4083c868"
    "hi-IN"
  end
  language "it" do
    sha256 "fe7cc0fb5776de628f0d63c0d6e5697dd1e5cee62450cc19fc7b2df4e96106b7"
    "it"
  end
  language "ja" do
    sha256 "da111e473d2b790804cf783a23108424c27ed08d7759dc992e0af58531d4fdfc"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "0ea252c028cfcbe9e46b67f1ce7d02aeff77f8e92ea8c1f66366a1146ee7f3a1"
    "nl"
  end
  language "pl" do
    sha256 "a82d0b30265e951701499a1520b469e0ab8d6c6fa3e57160797f2bfcd2118f89"
    "pl"
  end
  language "pt-BR" do
    sha256 "4d27567645daa96f5f5429c5e47d14acb63155e5ad351c4ff43464e41d44fb95"
    "pt-BR"
  end
  language "pt" do
    sha256 "a08303769f2dfecd348bda6e316e1338ef77c1ba0c829eae683a914df2befd6c"
    "pt-PT"
  end
  language "ru" do
    sha256 "6aeb6f69f076eb90223c886a8defa4a897ae74cfea0518bb048fda52050819c2"
    "ru"
  end
  language "uk" do
    sha256 "a4cafa2cb09f743269e1825ce3475d335eed7c0c3db6278ca221a58813a20ee2"
    "uk"
  end
  language "zh-TW" do
    sha256 "5bd76c022228a8488c238d79c7a3742d786d95e14e6d6f3a60bb257f96b43a99"
    "zh-TW"
  end
  language "zh" do
    sha256 "48b0608a0c823d09a8079df3d643e95d059616968180b94cac30417fdbfc0fda"
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
