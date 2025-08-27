cask "firefox@developer-edition" do
  version "143.0b5"

  language "ca" do
    sha256 "f82f79044bea606a587c3fb030d4b51dd8b317e2b9d0349c341592f5e7656fbb"
    "ca"
  end
  language "cs" do
    sha256 "c211da7719907a238c105682402c5201ac8b86b91dfe0073b80b028d5a8e4722"
    "cs"
  end
  language "de" do
    sha256 "2c1194b4ed35923579a13c63ea84a13d9d83352fabe4fe820e7c8a16c886dee8"
    "de"
  end
  language "en-CA" do
    sha256 "8a0bb5ebd1c77b51cbe09715ce14309ff6d878693085a04b6cec03db38e9bd3d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b189f33269efa8c582b2997d0c13f275dfed362dde2ace0cc828f95037dec92b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a91b49e01ef72a1c71bb8c65ddbcf879011b87fd9bfef50986049939389a3193"
    "en-US"
  end
  language "es" do
    sha256 "7016258841e86a68fb427aaa11e05df5e2b7a953e6d7fefe43a3dc241b492bdc"
    "es-ES"
  end
  language "fr" do
    sha256 "dc82f8f43e8356269c38d32b3afa0b93282665ac99880ca9835a11f3c8209288"
    "fr"
  end
  language "it" do
    sha256 "b15435500e928402f8cb689315af290237c8904830c20e63c11d5ba490c94963"
    "it"
  end
  language "ja" do
    sha256 "dfa7ae16590de862eb6ae5336b6aefe6c078d2a77883f106186652e793eb90ad"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4e3c4fc75916c3333e41759a294062b9313afb23eba09d6d6348d5350d11fa8e"
    "ko"
  end
  language "nl" do
    sha256 "350e853d4d708dfb8510bb3d524de27f655f7a301f28920881c3902f631142df"
    "nl"
  end
  language "pt-BR" do
    sha256 "94a6690bb8650be8c69da3e3cb7c87407b6e6e2081b361ace068c44ed5c64dd7"
    "pt-BR"
  end
  language "ru" do
    sha256 "1d956e654c3aebb0ddfda504c47552603527ed085c0abc0948e77a6e5fb9d8a6"
    "ru"
  end
  language "uk" do
    sha256 "309445b6c17a6af3077abd5adc4579c5ea7eb462b76a163195ec5ff903d64a32"
    "uk"
  end
  language "zh-TW" do
    sha256 "460daba8b8aae755731eeb6a1e97828ad2838bfbaad47f0f1f8de105cf89ee33"
    "zh-TW"
  end
  language "zh" do
    sha256 "ecd7954777b8592440b7e69cf313dfd2723bea83d7dcf7df18a645e45ed5cfed"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/devedition/releases/"
  name "Mozilla Firefox Developer Edition"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/developer/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["FIREFOX_DEVEDITION"]
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Firefox Developer Edition.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.firefox",
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
