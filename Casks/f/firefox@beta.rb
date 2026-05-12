cask "firefox@beta" do
  version "151.0b9"

  language "cs" do
    sha256 "33e15db773b2cc8404cb601c37304b0fd8112e33559019968ff4a71799f3d2f9"
    "cs"
  end
  language "de" do
    sha256 "41994b52efbed5e9173728265be6519f8005937b7061c6a630595be78d244d10"
    "de"
  end
  language "en-CA" do
    sha256 "e5906ccee0f59919a98ca774dc6fa93727bb806c062df29566990657903e427c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "384e9e7b34ff793c83d990d7749e78c7dc9efb1de1c5f1ff7d2d02d0630cb15e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c408b128749b2ad8001cebacadbf23b5363fd8c6d08beed4709c309a7847f8f3"
    "en-US"
  end
  language "es-AR" do
    sha256 "87ebd2e6b9d62d4be86dd7d5277609d2bfb51048eed73b25d40349369aa65c34"
    "es-AR"
  end
  language "es-CL" do
    sha256 "3877e249461788300fc2298c2a805acb2cf6eaf454a2d768bae526f28c5f1915"
    "es-CL"
  end
  language "es-ES" do
    sha256 "e055e64cd20cf387c401d682416cdae471735831c117c9ffbbabb4a734902d06"
    "es-ES"
  end
  language "fi" do
    sha256 "a72980a7346e638e718ec2d1131b528f8b866ec5b72e521b44ae4fa924f4dfe1"
    "fi"
  end
  language "fr" do
    sha256 "a6440624eae769d91e8a6012e91b4a10d17d2612f666938cb11893cadc2ce552"
    "fr"
  end
  language "gl" do
    sha256 "ecc47733b86d63ea5c5c239830c0ec7d06dd2b49139bcf5b5b63f2deaa24469f"
    "gl"
  end
  language "in" do
    sha256 "ad3fd46a35e85cd82e1df32fd89298bae4c0e8ce645c6146ca08781238a55321"
    "hi-IN"
  end
  language "it" do
    sha256 "85ba6de9a18fb29554b82c2a9ee4274495dfad3a19c64fc21caaf2c8754ceb67"
    "it"
  end
  language "ja" do
    sha256 "66e2c1cb2356cb04072aafa777e20b0f4970d1e32ea51d34967f3ac6da4c7cd7"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "b2e8951e9240458aa1f3fd15e5ca128fca9755c1de029de95590c5f1548bcbdf"
    "nl"
  end
  language "pl" do
    sha256 "8641f4391386ccfb8979d9a86eb9503728907d949185d4a04df8f91b384763a6"
    "pl"
  end
  language "pt-BR" do
    sha256 "42ce8348593475fe351b6d9ce0623bb55ee901d61a3d9fb0d24e9bec46de70ef"
    "pt-BR"
  end
  language "pt" do
    sha256 "76336e4fb76c15b856b9a60aa552ffb25228ae75e0d8006a4d3549f9810140e3"
    "pt-PT"
  end
  language "ru" do
    sha256 "53f3bbae746cb85d54c7797153ef3eada86ff9453fa995210b7893aec2fdcca3"
    "ru"
  end
  language "uk" do
    sha256 "728f5c6e1d3b8631d94f20114924ca7fc96d0b531df32354cac5b9da13ebef06"
    "uk"
  end
  language "zh-TW" do
    sha256 "5a17677cc10d14b36a1b69fba27866f68b74cd8fe3662151f9d7d3cc10fa26d3"
    "zh-TW"
  end
  language "zh" do
    sha256 "0754f9106d18aef1fac7fefcf74ecb4c7d12f337458fe69b8fe7e384ea686869"
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
