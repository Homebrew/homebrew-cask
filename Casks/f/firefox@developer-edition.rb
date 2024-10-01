cask "firefox@developer-edition" do
  version "132.0b1"

  language "ca" do
    sha256 "e1070262d153d00e2ca9b8f5e0b12d583cf1a49ba5aa5fd7ffcb382256447357"
    "ca"
  end
  language "cs" do
    sha256 "9f9c931310dea203061e3b07982fe3961d31b662af328693980e38e1903db100"
    "cs"
  end
  language "de" do
    sha256 "8760c0c54b77b4d78ff3b3dcdb35da09c82256ec0ae1434bfbf6595716b2d401"
    "de"
  end
  language "en-CA" do
    sha256 "e6a95c8c609af72998d9ed76fc1e59c1f19c9003f0da7203ba316e20d9209ff4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4fe9a422189dd206418194f9948e8f1a0def2c85644051d3a341e7682320b6d9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b3812bf3b9aac000d5317a16a08a2da1fcbdc33f5a82a60f3f622fcff0d2fd05"
    "en-US"
  end
  language "es" do
    sha256 "53b644cc6a7c033d410d9958f3f971e78da1dad447e29e8cd67135bdc1046056"
    "es-ES"
  end
  language "fr" do
    sha256 "dc1f278ea8b0132662ec314806c5dc3f6d866e628663e4698a497c8f9001d0e8"
    "fr"
  end
  language "it" do
    sha256 "d86815950c97da5c7d4b275cb3ec47dfb73da5b089e91dc4f214165b886cafc0"
    "it"
  end
  language "nl" do
    sha256 "54973aa654f75ea998767bd342ec7f20772d9f5b60f670bef1cac13bfc111ffb"
    "nl"
  end
  language "ja" do
    sha256 "13f2a7cf669f1e5e12c01a9f64fe207f6e38330ae82c590627469a4fff901035"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "db38aa12dcd3bd574a108e61533b3dc0f67354e8e68557ad4fb261f82de831c1"
    "pt-BR"
  end
  language "ko" do
    sha256 "aeb78691fcc4cf3440aca4fa8659d8623afc743f1c319cfd98cc8609967036d7"
    "ko"
  end
  language "ru" do
    sha256 "8c669768d279f74ae62642213ad104fce4ec07889f0734c8de8bf2f2296bb8a5"
    "ru"
  end
  language "uk" do
    sha256 "10447d8bcb49dcfb3aebde13d3bd22cd3a9cd0165c42f1663f39bf5cfa0ddb74"
    "uk"
  end
  language "zh-TW" do
    sha256 "e5b3399507a41d731b0527433dc8285cd46eb2aa5e22d275b7abb8a9140d0f3a"
    "zh-TW"
  end
  language "zh" do
    sha256 "9448217f77b1f873b30e52072908ad5dfaf913e43ef70617463f4d756044740a"
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
