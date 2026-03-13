cask "firefox@beta" do
  version "149.0b8"

  language "cs" do
    sha256 "edc894d5339c37926b6cd9fd04ed5919dddf0f957e195df42b0b2f8851e156bf"
    "cs"
  end
  language "de" do
    sha256 "a67f247867cef3eb2384d6ba2a1bd9e76e932033623b9d9e4d7b421f7b93250d"
    "de"
  end
  language "en-CA" do
    sha256 "4840584b4f4328c4144bdcf0bf31b14b63ebb60432d89334343ba2e07a0142e7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "20d12a32f552ee66e11fc4e7b7e0dc4a559de99ddaed3c239e3d4d26c8f4cbd2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e3dd8638a5767f4442ed958558637634c2cf672459a0f9339c244be43283fae4"
    "en-US"
  end
  language "es-AR" do
    sha256 "7a3fdc7dbff0377f466bda613a832de6edc6bef142e7c4974994a4e0731d07f3"
    "es-AR"
  end
  language "es-CL" do
    sha256 "69ed8ab7aef1d14fa683b1f81e518f9905e6d1f1a1e32d21b0979322a1bdc10f"
    "es-CL"
  end
  language "es-ES" do
    sha256 "74ff30597b0ca95dbb007e1129bc3700672b0765b99498866110762108d53124"
    "es-ES"
  end
  language "fi" do
    sha256 "df7f62867d1c730ca5dd233c6847bcf35fccb91935cc6253e1698c95c8572656"
    "fi"
  end
  language "fr" do
    sha256 "d99ed46de31448e8935c6e810d0bef9775aa0a2779d923f4f24b60d13cb118bc"
    "fr"
  end
  language "gl" do
    sha256 "092897ac72a121b37bab290db8e02558dfd6ba856c80449660ff1d828c7b9d88"
    "gl"
  end
  language "in" do
    sha256 "8571f99f5fbabd22778682166a73fe7b5295428dee1ee2a1b44741d37c75b957"
    "hi-IN"
  end
  language "it" do
    sha256 "3d0002c6bd83764fb7572c937d69774fe7809a30c45a66428ff25682db50afcf"
    "it"
  end
  language "ja" do
    sha256 "f475dedb3b719d2668a39fae3cc302a61b39f29ef9c691859b3b40525c8aa2f7"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "56e17d62d4dacbf5a0edac0d54b3bd6693ddefdc586e6797a622ecc8c1c3e738"
    "nl"
  end
  language "pl" do
    sha256 "16f20af6c02c5d22a442cd2916d780c1598403b246883a3f37dd2cde598a1108"
    "pl"
  end
  language "pt-BR" do
    sha256 "46ed7708c858379e2bf5021e8ae047d01ad1b98262c1433c19b67819972409de"
    "pt-BR"
  end
  language "pt" do
    sha256 "0b84ddcfa188fcd43cc9243a51d386393067eb46d775f888d5d04c584d6badc8"
    "pt-PT"
  end
  language "ru" do
    sha256 "a9321a1c8e315ef883d6746fb9b5d4931450fb26aaf40b8763c906f6a6a8f312"
    "ru"
  end
  language "uk" do
    sha256 "3745a53a6d2219523e635cd9257dd83fdda17b50ba71c336f7f8e13168b357de"
    "uk"
  end
  language "zh-TW" do
    sha256 "39bff8fd7af500566804a5bbd87a2b8c9d605f055fe41f2c404c960143006278"
    "zh-TW"
  end
  language "zh" do
    sha256 "a176cc0e6b7a453c08b3791e332c76e8227e627465f0e6adfbe986fd02786e48"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
  name "Mozilla Firefox Beta"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/channel/desktop/#beta"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["LATEST_FIREFOX_RELEASED_DEVEL_VERSION"]
    end
  end

  auto_updates true
  conflicts_with cask: [
    "firefox",
    "firefox@cn",
    "firefox@esr",
  ]

  app "Firefox.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.crashreporter",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.crashreporter.plist",
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
