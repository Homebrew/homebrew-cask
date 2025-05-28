cask "firefox@beta" do
  version "140.0b2"

  language "cs" do
    sha256 "005862a68ec16e926e9e888a73fa27314da31519e38ce0fd6656ad924b6c296c"
    "cs"
  end
  language "de" do
    sha256 "24cbff457b1bdba5c44a473f7d65e247727df35a28ece5ab2b685a92f24cb4db"
    "de"
  end
  language "en-CA" do
    sha256 "5671afd041943c805d0115bb235636c656966b79b37b8ff622318b08dc66f23d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "27899bd86fe738877c78e9c95dfed10f84f1d99865caf1c8e377a285f7539742"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e60b906321e4e8f6479d87e02314fdf804e3b461028f8d70552d88911a693a0e"
    "en-US"
  end
  language "es-AR" do
    sha256 "e70de7f34a08c75c8ca81e041033fda21f8af581f30705ccd1708666a69ed993"
    "es-AR"
  end
  language "es-CL" do
    sha256 "f93f379e3953b56cf32f1e7d71df9fd6d0e898a41cb10c1af8fb0c83fd953c64"
    "es-CL"
  end
  language "es-ES" do
    sha256 "d7275c44b957fe378e949d0c47f8eba8792b5cbc0bacfaa98a4f26795c0f4bef"
    "es-ES"
  end
  language "fi" do
    sha256 "392ce242ddef92bf02dff3f7ce26f7dfc5358a259a3679ebc2333294650e91cb"
    "fi"
  end
  language "fr" do
    sha256 "c07d5671bef18729205554a881e2055c2d4af04c1109210ba8ea5b5e33c0c553"
    "fr"
  end
  language "gl" do
    sha256 "be63b8dabc4673022dd0c69577d202efea303ef3d9204bebbe86b09c80913602"
    "gl"
  end
  language "in" do
    sha256 "ef2a4cb4a0822afd273713265b2bd12199cd5754876205435a996af6bd08e7db"
    "hi-IN"
  end
  language "it" do
    sha256 "fb088f8cdcaf8ea9aced69ca2892fb776dcf48b746f0abef6975e99854c55a79"
    "it"
  end
  language "ja" do
    sha256 "9258d8f492c8c64695af53960fcdbeee60a6bb82a37d71abc77abe1002f98f09"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "92bade0cb93b3aa2bafee685b671f4284144f554a3910fe6c3d125a58fd1c830"
    "nl"
  end
  language "pl" do
    sha256 "04554a10737ed4c2862a3b9e20c82de6e22b6053a55e4ef34b62bc977a8e1ef3"
    "pl"
  end
  language "pt-BR" do
    sha256 "cf56901b76d04c7ed54827e07d11ef8556cabaf7fc9657b83fbc3d86b051a104"
    "pt-BR"
  end
  language "pt" do
    sha256 "07d160fbc743da7aff2f3501c4861abb300d509549ad46d8230a298f62e57b99"
    "pt-PT"
  end
  language "ru" do
    sha256 "a52b9100ed56fdeb1d3fcb96741e379d96062a89d27a52dc3e1b56ee9d295941"
    "ru"
  end
  language "uk" do
    sha256 "f2e58fb4bae53bd8dc03cd5c29e9d5676dced99a2376322a0ba013eaa5154bb4"
    "uk"
  end
  language "zh-TW" do
    sha256 "c95699dca04392bf80ecd477514e74804614765d53029a9be80e9ea6b821a90c"
    "zh-TW"
  end
  language "zh" do
    sha256 "f22948993a7882ef1e244bcda91b0cd9ef4c814d17f4f54af2b9911e44f0899f"
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
  depends_on macos: ">= :catalina"

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
