cask "firefox@developer-edition" do
  version "147.0b8"

  language "ca" do
    sha256 "321c91d396b14f181eaaba4d6dacdcd583206e9a3c3cc1a4ceb538ceeb176b41"
    "ca"
  end
  language "cs" do
    sha256 "6eb2287a8b02b6ae387a09fc53f7a1213f7db5093ff80e81f71bf10e316b451f"
    "cs"
  end
  language "de" do
    sha256 "2957b59f5cc9ab6d78673db1330c2d0081ebf0fdb449eaff3d4590dee52164be"
    "de"
  end
  language "en-CA" do
    sha256 "f6c9affd5f3645c975cd40e39131c364657f609f08a07d7bb4d64b4aa8c37cae"
    "en-CA"
  end
  language "en-GB" do
    sha256 "813b58a4748c8178711aecd22d71a319190a8fe5234be6e95176feefe9e3e07c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3cf802694723b4a242eb61725628ef4ecda3ee3bc776cc173aa4c2b110d1e507"
    "en-US"
  end
  language "es" do
    sha256 "d338c5ed017b73f7ed975afb45bb7dbf6c354e801a2ce13d120f0f699c0f5328"
    "es-ES"
  end
  language "fr" do
    sha256 "0d0ac4ec8c40c8539a826c862ea5def8d6e566b2fd89d13917a20e7db5cf1018"
    "fr"
  end
  language "it" do
    sha256 "0a4de5f467d66123b7ef1b8cab6385ab92e3cc67d439aeb3c43b1d138ec58c6e"
    "it"
  end
  language "ja" do
    sha256 "38740708b73ab85869e2a7e1488d7dd07e9827bed66a357cbcd40eb8d0f801c7"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "12cdfc0220cb8b1cab537cb35b7c0e2986798d68dd43456f2f69347c96dac402"
    "ko"
  end
  language "nl" do
    sha256 "4074d4037397a13233065655aa0d55a0dd58d2fada2edd1e4e37c94a0fa5a160"
    "nl"
  end
  language "pt-BR" do
    sha256 "9d37184c6df1e3c089a4dae9c804fad0b836bdc490c7427f91bfc3b3bfd36b15"
    "pt-BR"
  end
  language "ru" do
    sha256 "86194c8a9f0914f223702c1e76b2f5c345b1c777d554011bb75d7043eee05923"
    "ru"
  end
  language "uk" do
    sha256 "909d6da186259696951c67180441cdf08cc7847a5b6e908e7dbee7a2c07dde0e"
    "uk"
  end
  language "zh-TW" do
    sha256 "39ca535a4816a27dd2cf1a50c0cfeb2f1ec89553d379b8a122b43e1dbe4043cb"
    "zh-TW"
  end
  language "zh" do
    sha256 "247700123f480a3788e12677cc8a599defe2832b11ed9c83d518ee072547bbdb"
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
