cask "firefox@developer-edition" do
  version "153.0b8"

  language "ca" do
    sha256 "93c7de5d4296deec2ff5b67dad8d5365df2ca18aac5aad0307def970c89496c0"
    "ca"
  end
  language "cs" do
    sha256 "a99b849c27235a5daafe486692342d7fb1273e3e191a535c6384679ad2cdaa22"
    "cs"
  end
  language "de" do
    sha256 "033918eeb4ed451808e2b709f471912bf73ce4d12db2e938b91e365393552ea2"
    "de"
  end
  language "en-CA" do
    sha256 "08b2f0835748d7a7def560b3002c606f0b26bb235141ab5be9a8c818befc93cd"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8ebc54143cc86fb37814796e758d930338a14a028860999adba12bd402c071ca"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9f002805f5851db407c549b355e51a653923f16e45d18020c93ca258d35f4ec0"
    "en-US"
  end
  language "es" do
    sha256 "dce396138be60ffc33b9b4128048e1fa4e930b43f5155557541923559ba3d6c3"
    "es-ES"
  end
  language "fr" do
    sha256 "15a98a843f3fce697e922934a4d611d44ab49a9f124a78a96c411f497a9a9c2b"
    "fr"
  end
  language "it" do
    sha256 "1b38809de05a69daff8ff4f009737dd5de7851cb0daa8690277aca441cc2ce95"
    "it"
  end
  language "ja" do
    sha256 "46b57bd3488f2cd7fbc2f4c2fc5b195976ec3be58cd114594641d6aca1c3820b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ffe1db2da552c81fb963d23545335282b72795929a81454e649d334dcd7f382b"
    "ko"
  end
  language "nl" do
    sha256 "bf9c860e3ebbf7165229647cc0173a86dab6217a5df99c659942bd14079ee998"
    "nl"
  end
  language "pt-BR" do
    sha256 "e981c980fc8c42ae97b6185c421f0512ca59673ab7fbda9f4d22ef977c4a9325"
    "pt-BR"
  end
  language "ru" do
    sha256 "ca7b804cad1d0e307483764524695896845822fefc5f8da0a2cc62cff7582738"
    "ru"
  end
  language "uk" do
    sha256 "84496b1a56f3cb067e9e3942349d365fe6e5575dac88d9d4047dfd0e5a8ab8c7"
    "uk"
  end
  language "zh-TW" do
    sha256 "6f95bbbacec2ffe4ed8165b5ad8bcf1b334e0de21f99f0a4937abbfe0afaf93d"
    "zh-TW"
  end
  language "zh" do
    sha256 "b33f20c9fe7c1df6d11590148f7721bbfc901ec79d24c64e6a81a552124b4324"
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
