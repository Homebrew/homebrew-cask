cask "firefox@beta" do
  version "162.0b2"

  language "cs" do
    sha256 "c967abac0e79b17f4197dd7e530128df533c4a55fdfd84958b6a4130a16bf19c"
    "cs"
  end
  language "de" do
    sha256 "f495deb6c769918673ab2efcf4539cd8e863ce75c76c05e5749bafa8ae730317"
    "de"
  end
  language "en-CA" do
    sha256 "9570611f5a8b266b891e1c17121bea565dd001d32b701e3d79821e107c547afb"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4d290d5ec300e3dd80c7acc883d78483f7d6fdd97481f92e312c0982a5e19fb1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "cb64c4c5c0681819c4a478b60b1a9728f5ebf94139c8a097bad2ca388b1bacd7"
    "en-US"
  end
  language "es-AR" do
    sha256 "341264de8d676f728107b0b90312a5625531b61df5bde6958f6542c7f620e075"
    "es-AR"
  end
  language "es-CL" do
    sha256 "294d70318031637da2c9b298cc95de9c3ae60524eb5902c392411a1e86331dc3"
    "es-CL"
  end
  language "es-ES" do
    sha256 "bccaad97664ec73d0ecc12138f157a046e664074277de26f7aab33aa2d097e4a"
    "es-ES"
  end
  language "fi" do
    sha256 "e834e6b70995b52875b502f4909fe9e97a01f3b2ba172075e555fff8289ac667"
    "fi"
  end
  language "fr" do
    sha256 "05f5f6c31e901bd0b0973b52c62cf01d6b9c259ae1138b49916ef601f2df2f46"
    "fr"
  end
  language "gl" do
    sha256 "dca426de97681dd7a7c5e34d8b10513eecda6ecc8e07ced38f9405d4dd7d902d"
    "gl"
  end
  language "in" do
    sha256 "ccf50218e9d64cf983d74580a0959b3c3751bf47890c1811a8ad0bf9377bcdcd"
    "hi-IN"
  end
  language "it" do
    sha256 "6cb4c46306ae3987d70ac87e1a244c07a32ed315a4f5ba3fb9fd87846aa224e1"
    "it"
  end
  language "ja" do
    sha256 "0235fd95bda9262471f83c3ea3479c1df670434da7116fe1e17812c28ebd6470"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "4267e3f969ce805042e614be1991236927e5cbbbd5688d6faa5f10f4896bcaf7"
    "nl"
  end
  language "pl" do
    sha256 "8ec4eca0d3016b90c9621847b29afcf2d407fdf4146288152ecb267c4cdfd6f3"
    "pl"
  end
  language "pt-BR" do
    sha256 "6b92658cecfbbaef6a999aa78841db2074433a0cd9660f4ebb7cf8ce2a4dad0a"
    "pt-BR"
  end
  language "pt" do
    sha256 "9de5c1a08d499bb104ee5b1b0289d492fa69393035c9f1681135f0227372ffce"
    "pt-PT"
  end
  language "ru" do
    sha256 "d5dde64fea7d327a65894e8e6fa51480a121163f52c63a57a815c9d8178061f2"
    "ru"
  end
  language "uk" do
    sha256 "7bb9f2bfbcc9f999d9a2fa2dc15d190aa2b9564204c00b8b25620c94a509497b"
    "uk"
  end
  language "zh-TW" do
    sha256 "3dd6cd553aa7c10b76714f14378546910e029e07e2d7d77a9b76116c8234237c"
    "zh-TW"
  end
  language "zh" do
    sha256 "1400a88945bd8d6b05755123fcd7fd187884af15bf3b3df2aa0868cb8b738926"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
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
    "firefox@esr",
  ]
  depends_on :macos

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
