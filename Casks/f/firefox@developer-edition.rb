cask "firefox@developer-edition" do
  version "148.0b4"

  language "ca" do
    sha256 "be78b43735b9aa4a32395866458fbcea6f00d8c448b0f057c98822d1075cbe74"
    "ca"
  end
  language "cs" do
    sha256 "fb72c81d9f2d60c8720c02c3765f03c9195ec8050101466b6805c381e31d9e75"
    "cs"
  end
  language "de" do
    sha256 "5296a4a4f29913cbf82558e64c2bad6288584218f77deb8b5f05d04945163af2"
    "de"
  end
  language "en-CA" do
    sha256 "a8dc1dc9bf2648c9de0ac5a1748b4a116c29c714001c975aaf86222e5e445644"
    "en-CA"
  end
  language "en-GB" do
    sha256 "49f94e438546eaf6dfce206be2caa388898af3bebb132df896956b0bfa2eb197"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b90812e7518002210592023bcf148efb0c04c61590a20d163bd427a40ef75b20"
    "en-US"
  end
  language "es" do
    sha256 "d29a4cd5ed6b90af6dd0a8710c575503537f1d13deed598b45d32eadbe9e003b"
    "es-ES"
  end
  language "fr" do
    sha256 "a1659d836cf52d7f41ec9a85f74ffda5d9651e16f4220510ac8ee1ce41ebd7b8"
    "fr"
  end
  language "it" do
    sha256 "0f5b2c57abdaea5bc9dcce8cedba298dc6f3625e4f78d8cb871b724a55279f76"
    "it"
  end
  language "ja" do
    sha256 "05e3f2967d0c33885a8a3022918de889aba8ebe4ac3b69caa4f176640e1b0db0"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "15f3efd89c88459a951cece967e41a462abfe17dad587c05d38396d0d9347d8d"
    "ko"
  end
  language "nl" do
    sha256 "e8ef89274cdafd4b43ddb6138934b67d4040ed2c80a1d9ca20e56b1de96238f9"
    "nl"
  end
  language "pt-BR" do
    sha256 "312a2046729a5b47cc1ed78d91632fadcf11dc77b046c36778f8f4fc8ead9f44"
    "pt-BR"
  end
  language "ru" do
    sha256 "816df27474a906facf8dfdf0ff0e6f799dfc2ceb24de46526f19b6a6347e354a"
    "ru"
  end
  language "uk" do
    sha256 "ccda0d7ada457e1bc0d177d48e545f6938a94e686ae06cf9945dcef1007d6083"
    "uk"
  end
  language "zh-TW" do
    sha256 "0d8247b76bc43ebb222a63e55a368b9914f559ef605abfb546e80f37fcee8f6a"
    "zh-TW"
  end
  language "zh" do
    sha256 "5c1023ffadd6e4579894ae5a2cdcec95e8aa651c34adad343dbbe47b725da6b8"
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
