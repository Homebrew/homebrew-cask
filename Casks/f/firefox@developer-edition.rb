cask "firefox@developer-edition" do
  version "131.0b5"

  language "ca" do
    sha256 "17fcfd7de7ab87901d5fd5cb4ca89dfbd8647e7e2f767a184c30a0aaa57da389"
    "ca"
  end
  language "cs" do
    sha256 "cb15b462c4859584ef6bf3af8a622072e6a8ea4fbca6e1f4e875569a9e0a6fb7"
    "cs"
  end
  language "de" do
    sha256 "d468938e7135fcf285ec8646d5c19fb5899ba8996b19113787b5d9cad6150b0c"
    "de"
  end
  language "en-CA" do
    sha256 "20ca59aa5601c0ba4f5565a14a4122c9464d547ec36aeaa88bfc204191477521"
    "en-CA"
  end
  language "en-GB" do
    sha256 "642a770608a22ae3e19341c467716092506f9efaca90be78fbd4b1a5ed39d1f2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b4753c3f4edc634a58ba6c6a6c3059b5e9c82c760adb1ea6db84ebd61c1bf94b"
    "en-US"
  end
  language "es" do
    sha256 "146ad41c6113810765e82954370c8b56ec88b7e373bd0dede0e2833bfa85aa12"
    "es-ES"
  end
  language "fr" do
    sha256 "5b1c8d0a31af4f46bd76b06fddc709b8979efb8f31d84fe90019221adf17d1b0"
    "fr"
  end
  language "it" do
    sha256 "a0fd922333a6d65a6dfa205a1ae2d6625b2aa75f35536c1044a5cd3df2b0bfb6"
    "it"
  end
  language "nl" do
    sha256 "d8b072afc65e69c009e018b2d3abd333e2104a46874ae22acf11076708d5153b"
    "nl"
  end
  language "ja" do
    sha256 "f1cab1801d59b250d64cf4ca078bec1186d8ff1c4f60ec34af0cd0366f87b7e2"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "f44de87ddcb1a5928d333e43377103c9630d6e09a8816392743776375213027a"
    "pt-BR"
  end
  language "ko" do
    sha256 "46fa59e0032812c8c85f3e1cabc9ed04d2e64d23d9b3e88aa312974ff239a712"
    "ko"
  end
  language "ru" do
    sha256 "32bd79735b954ac3751222ed12bf35482a7bc6a58a5766cb06fbf21ce8017c87"
    "ru"
  end
  language "uk" do
    sha256 "97730497b888faa3029bb170cdb59829e3ff39f2f5f0acae254178ffd1779ef8"
    "uk"
  end
  language "zh-TW" do
    sha256 "220f71b97c189393a867f066c05bd1db5fb38cc15bb2708be02fb07fc992b49f"
    "zh-TW"
  end
  language "zh" do
    sha256 "0e00f76d3c738b145c4bd28cbc728d8903d129c8a444725364a518d8fbfdbceb"
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
