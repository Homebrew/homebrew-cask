cask "firefox@beta" do
  version "154.0b10"

  language "cs" do
    sha256 "497231cefb93fda7efc2a6cc414bc709f6f444b72c263e7a1632759ba75b244c"
    "cs"
  end
  language "de" do
    sha256 "54c9a7f0c011d9a2b8dcbf48c3e7618d6bf9faf8b79f42111b2fd814aa1afcff"
    "de"
  end
  language "en-CA" do
    sha256 "bcdde72339995b2840e4e91d1984fac6f275e4ace44f8383f508dfded896494c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "da7b247a6591bd23c5b9691064454d0028a24999874424a776ff4cd2b49c2516"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b0fa54d57d13be61482de1c4e65acaeca021d4d68e5211d24c8c9aa9950acc88"
    "en-US"
  end
  language "es-AR" do
    sha256 "5befccb68ab9e1a9ebecfb75a6c99349e08a488cdaf9a07f610389ea61571f81"
    "es-AR"
  end
  language "es-CL" do
    sha256 "1c5e86d177aeda5b7f2d79fa9e650afc2aed8b1bcc85b011f56247d69a797fc3"
    "es-CL"
  end
  language "es-ES" do
    sha256 "09e2ecb0f96c7291972291b02b0e1b1d00bb6a692034e3a142d585a8d8594521"
    "es-ES"
  end
  language "fi" do
    sha256 "1718b9cebe1a7a29ac32266548c1eb9915ed1b0a1af49340e7c486970cd4d870"
    "fi"
  end
  language "fr" do
    sha256 "b143b807119236b6a82d44c07bab33f22198ce947217b601caf427ed6b4393b3"
    "fr"
  end
  language "gl" do
    sha256 "781c2099d1f3e961edb3ba4a0bd77f615c5d66cf2d6da44d2b816f6a70029d0b"
    "gl"
  end
  language "in" do
    sha256 "654eec39aa9da38cec6b971d18bfcf4468b219f0662ee5611b7fb3a47a0f8570"
    "hi-IN"
  end
  language "it" do
    sha256 "d4c0c6ce6a4a928b65b6a032cebcc7e669d4d98c93433ea83920535f09149c0d"
    "it"
  end
  language "ja" do
    sha256 "9051cad76421d89c6b234cc6c525443d643afee0bf2a0672fbab590e7ca8d89d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "655bc9c8404790e569ad11fa416c3e522ca4733f5e272241a075b1f8a19cb3a8"
    "nl"
  end
  language "pl" do
    sha256 "fd6135409906c3bac9d3d996331f62fd5d4a431fda420f2740be05b821859409"
    "pl"
  end
  language "pt-BR" do
    sha256 "cc7db016e38ea65b5ddaa862f07f5c7583c481188d1a8dff8cbcc699289910e8"
    "pt-BR"
  end
  language "pt" do
    sha256 "2390e7a782c3d70e5a9ee019aa30a9ef5b31722be711f04db97fbed7e32735f7"
    "pt-PT"
  end
  language "ru" do
    sha256 "e2253e49c7e32780573e08a301b8202c2230de0b40c0199cb3c8b0720996acfb"
    "ru"
  end
  language "uk" do
    sha256 "3398916e9e474038ee604fdff67a357a4300b24029227ad32c20ec128e7c4a0e"
    "uk"
  end
  language "zh-TW" do
    sha256 "91576da91bff261298a81e7625e8363fd104f483fa7d9f98685161cb24fb7e08"
    "zh-TW"
  end
  language "zh" do
    sha256 "6a3f96a6ecc8d58176c070062aaa34360aaddd3cd4a4c882fe24c1f33f9489fa"
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
