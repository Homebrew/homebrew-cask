cask "firefox@developer-edition" do
  version "151.0b1"

  language "ca" do
    sha256 "f92a3372414698109504a61f988a3eb35c558e72098cd6a61a7be01adb6a06f8"
    "ca"
  end
  language "cs" do
    sha256 "af99a0def80b19037aaa686e5acddd2822a088fd3b37cdd5b24c47214f5a5eb4"
    "cs"
  end
  language "de" do
    sha256 "eb6039a6b8ec79fa50a0922e63e4dceb9c8c3fb272f5eaf88920e426c4f813fb"
    "de"
  end
  language "en-CA" do
    sha256 "b5695f8ba04a3db6d06473ae7194dea1b39d5e18a5cb47b0fa614ede36221c65"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7e9b4d1f2f75119c0eb5448ddeca6ec7d01e692b82d73d8b61769759b8522c05"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4dda655ea148d5f336d4c1c36ec8872407ac6c3c857acb1c2fb139dc3819dd51"
    "en-US"
  end
  language "es" do
    sha256 "c381d059197add9b739127f0cc9e3c2dae531260d6266a7eb63d687f84138f4e"
    "es-ES"
  end
  language "fr" do
    sha256 "c4e0daebd33d3d23f223e8efe86aa499f0caba41057f80b37b05bc61f61d176d"
    "fr"
  end
  language "it" do
    sha256 "aa9ae96018c8c0f41a3bf8b5064e85336a3edca4a0a4db7b8b3e13a5760c18ef"
    "it"
  end
  language "ja" do
    sha256 "fdf6dc2086eb036a019d3e50941a01e5e5b5c0c8866a30fabaf2ed35afa980de"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "8e49b575b536d601dbd53a477987ad2a003b49282fe26adf11d94427ee8d6ff0"
    "ko"
  end
  language "nl" do
    sha256 "bd25dba6651106ca7e0dc182424184d69281b0d40a473960baf0eb702657be32"
    "nl"
  end
  language "pt-BR" do
    sha256 "9c3dbec3149f28d1ab297175d12660e482323fa185f0ed148939c47a5638f759"
    "pt-BR"
  end
  language "ru" do
    sha256 "0f5371d66a78893c71396cd705cbb9002e385724d993c207901c7795351d53ff"
    "ru"
  end
  language "uk" do
    sha256 "ed6c398928607a9abca85855ddda2ebbb234343e46156225b0e47fc86d140b21"
    "uk"
  end
  language "zh-TW" do
    sha256 "6c8911ec51e60dabf62bc20d43972e7f872eab2a2272f0e801a64cfa37c64c3f"
    "zh-TW"
  end
  language "zh" do
    sha256 "4cdc3c19a5ee319111da32f716df8b9d5d90b665a8f30d27a4e49f7f4ec9e055"
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
