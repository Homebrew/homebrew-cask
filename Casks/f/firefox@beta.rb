cask "firefox@beta" do
  version "142.0b4"

  language "cs" do
    sha256 "438883fde08fa1c26c67083c18e162e7cc283e49dc3e40945e86a64598034a78"
    "cs"
  end
  language "de" do
    sha256 "63c90c88854cd6afd53b5484a6f3f2b733140b785d85fcf56964a4b2b3bacfc3"
    "de"
  end
  language "en-CA" do
    sha256 "ce9d1905494f7fc4448995f7e41c3daf9291c6e952562549f509b1891272b2e0"
    "en-CA"
  end
  language "en-GB" do
    sha256 "596da6c4ee80a4c49021580aea1a87b6b21920c122fd7351938cabc086d65a6c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "967c9c3fdaf48b0432eff4934004bdc25efa6fb225cd9a44fe2c7d7d7943dd67"
    "en-US"
  end
  language "es-AR" do
    sha256 "05d1bb61442d8d93eba6f72d77bca5645195738e9209c6b1fac6d0d550948490"
    "es-AR"
  end
  language "es-CL" do
    sha256 "61adb610bf9ce924b2e501601fb343403a009b0aa4d04e166fca02d802386d77"
    "es-CL"
  end
  language "es-ES" do
    sha256 "20bd9ebf33219fd3b3f2b6bfbdb504356e72550c06ff1cd23e3d293d29f94897"
    "es-ES"
  end
  language "fi" do
    sha256 "75ee53ce4e3c6b883fe15a3f5d446d72a69f6c47827138ad6df5b403ad5b6a34"
    "fi"
  end
  language "fr" do
    sha256 "caf9392bdd0583bb7fa70a3d8475986cf7c041a8c6ff68d10f9bb051f47d2985"
    "fr"
  end
  language "gl" do
    sha256 "0276e0a7cc4a8bc0bf7a349cd9131eebd0f4ad2206e41f5bb002673c5cc91d59"
    "gl"
  end
  language "in" do
    sha256 "824eef282a27b6ff49458ebf2cb1e56709f1809ada3ace8e03f6a0c98622dabc"
    "hi-IN"
  end
  language "it" do
    sha256 "7fe5ad46c59c666d3e445c5a7b518157a4a3c0643e967c61dccfc88ce58162ef"
    "it"
  end
  language "ja" do
    sha256 "bc33700a6d517471260b5ca9a5c944b0cf0df976e3ec03a78f0418a2c1069dae"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "b84151ca41b7b822280b85ed222ef53c8e3751c68d88c95bdfe2fa6a8ef64054"
    "nl"
  end
  language "pl" do
    sha256 "bc664c3deba6867b5fe420a5a01a2ca2d3430d2d608d94517f24af42c7be4178"
    "pl"
  end
  language "pt-BR" do
    sha256 "a06771ad004fbe80e7c8eddcefba26e00b1127216cb6de2aec834359e745715a"
    "pt-BR"
  end
  language "pt" do
    sha256 "d0f4113405e3c375c9df90886f943f4aa5cdc23862380b85e9e27d854de8f500"
    "pt-PT"
  end
  language "ru" do
    sha256 "4168def97adf3e59c1b0bda102612d13fdba30c237fb3a4b62c6e20a4c9215e9"
    "ru"
  end
  language "uk" do
    sha256 "75f2efa8338e750a719ad0ab0ed8c9e7db886d936a1aef0da805887691039763"
    "uk"
  end
  language "zh-TW" do
    sha256 "2f23ce977c35e7d604c2b6118f0c65c3118d80e87abf390388c94bec31d61fb2"
    "zh-TW"
  end
  language "zh" do
    sha256 "b3da886d4c192fe13b11a5312ef13f71644740ed94e48c70579f1825f4148393"
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
