cask "firefox@developer-edition" do
  version "153.0b12"

  language "ca" do
    sha256 "61c9a0e04df11802481ce50aa04a977f58c6e282c296597ee13ee83796ece02e"
    "ca"
  end
  language "cs" do
    sha256 "46f7939ec3023a11fa8722d932b51365b76801ab04be5650e886b12be7f7190e"
    "cs"
  end
  language "de" do
    sha256 "98f99a5e3d96dc6cd4259f3182bc66ed9631f0f97489bbbf7ac9ae74f626645f"
    "de"
  end
  language "en-CA" do
    sha256 "ea312028e6681440f021da11c82689f58d431309bfb79c4a501cc0830e592dcb"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6a9a199d1f4051f1a3dc76742f66380d75cbc7bcb0ab387d283aafb7d6e6178e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "aa380d3e82d8e98884f7731fdace1e2859fd0c33f104e1eefa67e81bb1b3b782"
    "en-US"
  end
  language "es" do
    sha256 "3b15fab98d9f238e28a1ff051303afa03f3b628b508e3f00f287b6c167bd5691"
    "es-ES"
  end
  language "fr" do
    sha256 "4101e7905e9a95387763260cc810b627f561f60fe41b82f3cfd556d22ddfaf51"
    "fr"
  end
  language "it" do
    sha256 "e64f32d078a422ff9be9e9e6ebbc29acbb1b36c68eaf61bf66032128687570fc"
    "it"
  end
  language "ja" do
    sha256 "64f1a9c05667abd7d81e394b88da221c866d51bb4f262ab2c091dd89c01f4985"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "049e7ba0b8b56d477d0bf88ab0838356757a2c515b5df36d9095877cfd9c80f8"
    "ko"
  end
  language "nl" do
    sha256 "da23e35cbd380744b247582cc6378cbe30e1a55463d6c7082b3da9af491ea6ae"
    "nl"
  end
  language "pt-BR" do
    sha256 "8a7890676bacbf823fc14f062582aa04c285a69d923b721cc1c358ba31c113ab"
    "pt-BR"
  end
  language "ru" do
    sha256 "dbf1b2feb004ed72909abf02bc7c544a0d7c922dd1ced1d8700c3432e6671e41"
    "ru"
  end
  language "uk" do
    sha256 "134895b849df568f7d5c5a222a1548f89d0a126f2d159f3e2544c0bb28db8e0a"
    "uk"
  end
  language "zh-TW" do
    sha256 "2ba624598ddd8b4ae65c3324ee9b7b7029545b1eec8eb0a344c48e4dbd553432"
    "zh-TW"
  end
  language "zh" do
    sha256 "c9cd33c7df7c8e059caa9c7a739aa40b647fbb81451ee36514c9426ad9cef83d"
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
  depends_on :macos

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
