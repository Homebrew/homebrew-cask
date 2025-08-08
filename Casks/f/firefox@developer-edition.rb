cask "firefox@developer-edition" do
  version "142.0b9"

  language "ca" do
    sha256 "e3d733f218babf71366e258fa49f32d80514de557c510f675495190425bc6abe"
    "ca"
  end
  language "cs" do
    sha256 "33093cd5a5d94d48705093dddc0ddedc161ee8f1ca828f3a36ddc8e9bafa493a"
    "cs"
  end
  language "de" do
    sha256 "2da9b9f9bd44d0be88754d1feb041d2a0098df6bdbe6b60962b0d7b03d50927c"
    "de"
  end
  language "en-CA" do
    sha256 "0c6010bdca203259db7208448a99928708d448b16fe6973672a9ab486e965425"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d18fa2d1d163e35e667b639da9c3d7ae1a420357c76ac01fb6fe39b2e9d5dd5e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5000f7dc12103636edff00e5cdf1df337671e5ebae7aeb43bd97967d6e054ca9"
    "en-US"
  end
  language "es" do
    sha256 "5c12ebe0b2dc62446840839b1c95e7f06a0d66b45558f4e02e26963e1e9fb276"
    "es-ES"
  end
  language "fr" do
    sha256 "67c9b024f639dea4a79cd40700a5ff73c1db999141cac3c1fbaa96cafec1d1fc"
    "fr"
  end
  language "it" do
    sha256 "ed67fe15f94655603af451fc9b8fb46c2d11ccfa5596229d453197f4db5f4111"
    "it"
  end
  language "ja" do
    sha256 "32c943ffefe9af4046b92d54cdc2aad6eb67b784397d4a5b3a8976982a2129ea"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9b8be76b0335d334f8b198ad5522f2f1603e0343908bd5e9e2cce39ff942075b"
    "ko"
  end
  language "nl" do
    sha256 "bb89974c5331d6fbc094b2213625ff2ac77507dcb9a50c7f936de25ce8650e17"
    "nl"
  end
  language "pt-BR" do
    sha256 "70d21fd732ceacf7b42c8e5ba6869cf94b008704b38fa122e474d1e97754e4b8"
    "pt-BR"
  end
  language "ru" do
    sha256 "cb02b97b77b119584f8cc618d6dede99e102346f5005ca124418add1f89699d3"
    "ru"
  end
  language "uk" do
    sha256 "bdae9d768bbb30bc04278314c51f88cb1bcb8d11bf58ff2732b762bbc150cdfa"
    "uk"
  end
  language "zh-TW" do
    sha256 "488e2d7a6164c774d93b694aa2a1156acc914b654538694e77d7f59cb4ec6317"
    "zh-TW"
  end
  language "zh" do
    sha256 "475b2d86d7b334364afa5d3c64027053d724b6b681a06983f0112e9e3deeb39c"
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
