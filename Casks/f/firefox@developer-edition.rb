cask "firefox@developer-edition" do
  version "137.0b3"

  language "ca" do
    sha256 "26a0ea3ecfe28e3fdc36eebe4f4ebc300e77ed395cd3d2e95ded000eab3be036"
    "ca"
  end
  language "cs" do
    sha256 "8b81cedfede1efae71450a63e12438494ddaa4b01161ae431092df295d1edce3"
    "cs"
  end
  language "de" do
    sha256 "0eef3d2f4b126a9a87e02fc1c6582f230a4989605760809c55e5082ce9a6064c"
    "de"
  end
  language "en-CA" do
    sha256 "a4aad37646308f5de0a40a69143d7387009b7f69e53707ca8cefd45bbede1021"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c1f6f0a3195a193c68f7900d4af580cb6bb60cf138af491d2c94cc1e9fef21ad"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6c3dbbd3a1d629371b09dc1c97539ff2af6b27d798d1b82c5ceac5d96bfc6a19"
    "en-US"
  end
  language "es" do
    sha256 "f0235eb91e6a6968eb4403767fd36585d5f188f5b885a9054e420f251c627f32"
    "es-ES"
  end
  language "fr" do
    sha256 "2c1f92a1f7663022dd52c097eede5083666445382ef8c477346d7a0c12b5565b"
    "fr"
  end
  language "it" do
    sha256 "b971431847d2b4b4b78c31e945aab4c2f40e8cdfea6f840f64d4082fe7a1b4ec"
    "it"
  end
  language "nl" do
    sha256 "74fd4768763cd03c43c56a4391fca4c02772bfe8df158bbdad70e7b3d6ea0412"
    "nl"
  end
  language "ja" do
    sha256 "7301e2c5c240b7f7c0cf598bce96195bc9d6cf4194d3cc5373c362687685ce15"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "f103c01c029474d58d8cfd311d8f99d57a01a9e8b078e2183c9b9b87d43db7d0"
    "pt-BR"
  end
  language "ko" do
    sha256 "cad8ae117b51c1b3f1ed23fc1e112cdf8bd9a82d204e16a3ab57b3d791817266"
    "ko"
  end
  language "ru" do
    sha256 "9bea8c49489c0d74dbbab1ca0d86f7e717c5825fa632a1240f5f7b9710b02b56"
    "ru"
  end
  language "uk" do
    sha256 "b0bb31bb7ba39c381929dd7a9f9ed4d345450d9727f80ced37f4b79f8c3d6550"
    "uk"
  end
  language "zh-TW" do
    sha256 "d1150dfda797735744d4fc3a920b6fc186f02372225b5d2802b293418b86d939"
    "zh-TW"
  end
  language "zh" do
    sha256 "9ca5e73781412d22e0f96b5b6b757f7ec0f4c6da21e37a392dd1b4d03a01b99a"
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
