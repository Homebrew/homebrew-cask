cask "firefox@developer-edition" do
  version "161.0b3"

  language "ca" do
    sha256 "5c6fe766263e996be1c782ab658834150bf983353c33c34c874d110483c5159a"
    "ca"
  end
  language "cs" do
    sha256 "feb0e58ccde1074ae5ba7287e9cdda8cf5bd53b7cb503899bf323b98a6e1336c"
    "cs"
  end
  language "de" do
    sha256 "7a069a84255ace78227a1331deaa12b6dc4a0906b4198e802f426e4c38d8134c"
    "de"
  end
  language "en-CA" do
    sha256 "39ba0741a1ff97bd3c2286f177e93eafd6885b45b5d418d5cfba2e5b032e1559"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0a4adbe4edc530bcdc148be25f49cf476943defe8eb36e62e9d34aa6dd5b147c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2b9cbbc4e8138db329f76430260a453d38257d5d8f11a24c266854ac4e6f414d"
    "en-US"
  end
  language "es" do
    sha256 "413aa0a42f0b4617e266e8704989de4304484d23aa02e1a8648e3b0b779478f9"
    "es-ES"
  end
  language "fr" do
    sha256 "1f41c790a6373139514987b644fb8908ba86ff4fe31c6f934d08d6d71b6f82d6"
    "fr"
  end
  language "it" do
    sha256 "03d81db60e35fbddea3e071d1d8a71591bbbc0a077600006f31d14a62f2cfda8"
    "it"
  end
  language "ja" do
    sha256 "244185c248bbe053b7262b887f3a244c2929fb8eb6d3892845f28246b67bd489"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "673358b073d75e4551fc31b00965ae67583176830eb3ac7db08949b4dc25e0eb"
    "ko"
  end
  language "nl" do
    sha256 "8e81fcde4c6038d2654854488c1917170b4cdbb36f34dd5d100f719abe4fba18"
    "nl"
  end
  language "pt-BR" do
    sha256 "94deed3bc3b78c9deb2c7f0666745a541e5eab4cb1c8856a82ba59473ba9d937"
    "pt-BR"
  end
  language "ru" do
    sha256 "cf25ac31308925c91477122b8cf298573b308d6c1a20879ea40f3ffb12faf486"
    "ru"
  end
  language "uk" do
    sha256 "114321056c2959fb62322b7912636d44b49f4a17f730c19c6822f08b41294656"
    "uk"
  end
  language "zh-TW" do
    sha256 "046a2a63bbac8aaf4ea2c4c6d96d22bbce7ceff9b66718424c7dc1ae2c46c5bf"
    "zh-TW"
  end
  language "zh" do
    sha256 "1ac72568e70def1b8b9956e1beee34670a6e2ee98d27172787bf05b512c1c370"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
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
        "~/Library/Preferences/org.mozilla.firefoxdeveloperedition.plist",
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
