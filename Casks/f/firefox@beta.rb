cask "firefox@beta" do
  version "140.0b6"

  language "cs" do
    sha256 "a86648acdcbed9d7421c72424d42052157ea1f825c14603c0266508238e189e6"
    "cs"
  end
  language "de" do
    sha256 "70ee084818040191e975e1a8a8ad80acb6a62f4e46f22df1e5683b22a844c4c9"
    "de"
  end
  language "en-CA" do
    sha256 "0756edd349c74d680ee93bdb5e2ac5d290f203a3293c03b160b9b359d2f58464"
    "en-CA"
  end
  language "en-GB" do
    sha256 "460eec43ccc80b8a260ac3d4a5623ad694c504e1c01d912a48c13ef9f539c7b2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "cd0326af92ca17e5121c916edfe10e913ec39d8ccd16c079207effa7d4aaab75"
    "en-US"
  end
  language "es-AR" do
    sha256 "7cceac00533262e4736748a4ce273aca2676e99e4c52ecf667e421994e9f8b25"
    "es-AR"
  end
  language "es-CL" do
    sha256 "a06a0de4c99dd388ea23b37c845a2861a5fe5e0f0e9d303ee86eb01aef4e392a"
    "es-CL"
  end
  language "es-ES" do
    sha256 "05761e789f9c61f4bc8749bbc584bc64fcb07d0c2c8b18a27b8b4459b5a80621"
    "es-ES"
  end
  language "fi" do
    sha256 "3892f17ad12fa9347a2650c152aa19e5b6b5ec79f21bcd28a641261925bc8976"
    "fi"
  end
  language "fr" do
    sha256 "3462880c9f1f48ab6976d507727b7e3d7d0e86c0eddef198e426a7ce3f9e4659"
    "fr"
  end
  language "gl" do
    sha256 "4294ffc7380aec2e1c2e65475fcdff5159b8ee53fd4e806d60112ccfdd1d0df2"
    "gl"
  end
  language "in" do
    sha256 "210b0d9c78cec2cb72eaa070bfe814cfeadddadef4fdf11840396e94c4c4174a"
    "hi-IN"
  end
  language "it" do
    sha256 "dc7b193ad74003a206ea2bc681837c175de45322be21d395b75062fb227cef2b"
    "it"
  end
  language "ja" do
    sha256 "aa4c38ccbe19b139465acfb54984ff5076ee596b562b51f2cbe522fff14c4527"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "4bfcd05169003a8bfd3276860b8c6162dfe91c515b4e014bdb14783aa110390f"
    "nl"
  end
  language "pl" do
    sha256 "43ab0fdd7d995d4c60d962c3db5f1907a4f8ae8f5bbf9401a96b424d458cee48"
    "pl"
  end
  language "pt-BR" do
    sha256 "b469cbd87a88d09fae83f8b2ba395ebc468935b6beb7db8b83bcb1f47396ff4e"
    "pt-BR"
  end
  language "pt" do
    sha256 "31e3ad58f6790f04383bd0e32c530cea7559d8234a1faa234a40405181ada782"
    "pt-PT"
  end
  language "ru" do
    sha256 "017954fc938efc470dffb50141944b041958a50c79fd24f6172a180db46e2078"
    "ru"
  end
  language "uk" do
    sha256 "3fbaf24aaeec14b7a5448a6b1c040652dde18f20c77eaf84a464649132dc52db"
    "uk"
  end
  language "zh-TW" do
    sha256 "bba2984115271c7a9c21d80b98b373a5b44c032e7b966b45602fec6904df7e0e"
    "zh-TW"
  end
  language "zh" do
    sha256 "1c682d40183b7256d5e0759399cb486639ce56cce460811f962e754ee9196ac2"
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
