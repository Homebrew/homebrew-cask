cask "firefox@developer-edition" do
  version "132.0b3"

  language "ca" do
    sha256 "a755f7411d86eb21b0202ce11233891661283cf813e1c305217c7d0e9760e96a"
    "ca"
  end
  language "cs" do
    sha256 "b611889f94c9ae088fb68d58c49b1927ce6aaece3bfeced7fb8fe714b2ae5f6c"
    "cs"
  end
  language "de" do
    sha256 "7fadfb8d5b8f4cac6c25a49a1c524b060b4a338c5b828e5e26e7096e91c2b705"
    "de"
  end
  language "en-CA" do
    sha256 "823bf1209ccc471b82d7d4a31f7e66e73913d52d820c7b7b34f14ea2ea6b7829"
    "en-CA"
  end
  language "en-GB" do
    sha256 "621c569c53857c10ac1ca74fe898f44723b2ecee3f0a5f47bff448ce01f7de73"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2f80e485f70b5904d13e23cba533bf32bd066e059d4aaf57cb17126c708066a0"
    "en-US"
  end
  language "es" do
    sha256 "bd17e65e9cc4678d2163a4c9cb3799821da95eb400f5f21708af3d7411b552a0"
    "es-ES"
  end
  language "fr" do
    sha256 "fff4c470c99d4ae4bc0f58722f3227a9de54c724ac35117eb91cd82e80680b84"
    "fr"
  end
  language "it" do
    sha256 "1a9c18ac3e8bc0bf219564bbe46eb3ec233cfafc84673e95408f9f6357b052e9"
    "it"
  end
  language "nl" do
    sha256 "d62210e6ceed3b90369a686697c213dafce9cf512546d7b572f61e37e5ec7aed"
    "nl"
  end
  language "ja" do
    sha256 "b946f49efed5b797bf58d15708ad1e804a04c7cf6ad7b90c394f1b44e21d0429"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "a9370e26e3e8527699662d6a5fe5939303f76be1f37804ddb611354ffa991bba"
    "pt-BR"
  end
  language "ko" do
    sha256 "2ea9eb900ce2a6581c06a64e3c0311bce7fbcf57d26e557f9c7f89921fe4ddef"
    "ko"
  end
  language "ru" do
    sha256 "e443ec892e5cffa3562123e83000b35408d24afe438d01bd6f2c33553a63a257"
    "ru"
  end
  language "uk" do
    sha256 "dac0ea2bf14a7c14677b081f06f44381346347e64d4e73a11e7702377d870892"
    "uk"
  end
  language "zh-TW" do
    sha256 "770651b17296ba6a7307d4591e0b0a2a429d7c1d27ec972409853378081684b4"
    "zh-TW"
  end
  language "zh" do
    sha256 "d3e32beee98fc9c6047e6dc88411b769dddd21697981b6ca434333f15d3e29fa"
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
