cask "firefox@developer-edition" do
  version "144.0b1"

  language "ca" do
    sha256 "e59c025af4b14439cb683ad8c76d9718ca013d4df84b8ba55ab5b23771875371"
    "ca"
  end
  language "cs" do
    sha256 "30c2ec70ae1cd88f5197da2f9bbab83ad81185170373b56c93dfbe01f70209a3"
    "cs"
  end
  language "de" do
    sha256 "dc05b1b8afd11381a40a9ea3193ab96cd806bce758a187187754c89c00c4b1b5"
    "de"
  end
  language "en-CA" do
    sha256 "f69e998e46f7825fd521e3231a961af7298ac290ed5b128cc91148dbcb06537f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "26e298c362a3163fa6ad8ad74c50e64c851601033e7fd2747670acb3d754ef4c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0e0a0f5864f72b94cafd2d833ad6f8aa97a13ad82b07602ad7e6f0bf69d9085b"
    "en-US"
  end
  language "es" do
    sha256 "8ee4ba6dd10136fffbd04144584c679b187073bf9f17f1942f73d8c243d30a61"
    "es-ES"
  end
  language "fr" do
    sha256 "ea2e13a40323182f3baef83987e1360a5c34f6cdb4f0d364db693cdae839efd8"
    "fr"
  end
  language "it" do
    sha256 "105d114ce0ed06cfd2cf9629cd83db8bf8df1817752191b0c6ff3aa60d47c462"
    "it"
  end
  language "ja" do
    sha256 "76e80a1db1be090b66d143a88bb84e230acc9d741d93f3a5ef490259cd3f2146"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "be63656ff4e63fc1cd7ebb95ae568b0cc0d392783cb2cde5d61b5c23abd705e8"
    "ko"
  end
  language "nl" do
    sha256 "bc459baf38f187a642f97a2b0fe103ecb6f5295fc86ee4bd29433900b11240f7"
    "nl"
  end
  language "pt-BR" do
    sha256 "31ca49edf5ffcd36e9aeb9a7ec892504abf1fcbc306d78bc277136f0a6ef66e6"
    "pt-BR"
  end
  language "ru" do
    sha256 "37472087ec157bcca1aee15ada08eba341ef101e2aa37aee11ffcdfff5ccd98a"
    "ru"
  end
  language "uk" do
    sha256 "f26bbd576c63787fa78610fba97227185ad526732d5df7f761f4cb0b3b265116"
    "uk"
  end
  language "zh-TW" do
    sha256 "49e6a2819c7263dddbfc7ce522ca027264bd2bf42face62b9a3f59651d68f714"
    "zh-TW"
  end
  language "zh" do
    sha256 "b9944f2e0822e411a792da8d7736a031e923cbd94a65753eb9202e3074d4e33f"
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
