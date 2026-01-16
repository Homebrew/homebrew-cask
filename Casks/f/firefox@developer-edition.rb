cask "firefox@developer-edition" do
  version "148.0b3"

  language "ca" do
    sha256 "656197f8d65f286b686d792bea5395586fa335ca83c0d99b56b5fcaf14829d42"
    "ca"
  end
  language "cs" do
    sha256 "d7063c648cb66c92396a974cb850399c45d008d2c25f7eafb736798eafc5d3a3"
    "cs"
  end
  language "de" do
    sha256 "05e58b5861d17ff1a84d74e07235c154b8e61582a0a8d96be22991a32186a1cc"
    "de"
  end
  language "en-CA" do
    sha256 "d4da63021b11e6f45547db775836b965ad9a832e6392adac0dc29ef8db6b338e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f901fe4ee63bdc8769e0e0987ba9189c236f27307ef9b921b5b8a8d691f81c21"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3460ba8bc18b5836a4b97e2ec908e718565157c4425bf8a01c0e068f8405cfd9"
    "en-US"
  end
  language "es" do
    sha256 "84df5ff45a860ed2d1962822188cb13ebe2abdcd4300533a02da2a3db46ef5d1"
    "es-ES"
  end
  language "fr" do
    sha256 "113e6f0cb0f0a0ac80b54b9982a69b1208c9a8fbabdd98f1d934dde8753ea59a"
    "fr"
  end
  language "it" do
    sha256 "46cd52402a90470840b4dfba79bf2c4b9a8a84138fd32b419f9482141ec51e10"
    "it"
  end
  language "ja" do
    sha256 "f4092161c3c46d4af25f1abecd6297840870986f2335cb279dcfdde6da232b6e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ac26ddc589667450e85165ab1a7d7bd8dda9338b70436711919116a5a2770f8e"
    "ko"
  end
  language "nl" do
    sha256 "538bf25b9052c1c3f8bb79a50c8974d191d8511ba43f48c5a74757661700e532"
    "nl"
  end
  language "pt-BR" do
    sha256 "b0d50e2e104ac7f36ae7c0a6c3728c1230b0dce7d75807ec01f86204141112a8"
    "pt-BR"
  end
  language "ru" do
    sha256 "97ba8b0c38e741e18203503c6fa17dad78cac554c40f592d9fe3127ebdf3ca3e"
    "ru"
  end
  language "uk" do
    sha256 "4d9ca1b84e912641ccaf07210015818348b019e8d02bfc448a23569002ccb8bd"
    "uk"
  end
  language "zh-TW" do
    sha256 "59d43936f7cea098df2cdd86d28ac55ba5583809ea2a0d124c562bdb018847b9"
    "zh-TW"
  end
  language "zh" do
    sha256 "54d34e722f4ebbb5d3e383261d23320e67bf5e8717db6a6ffbb579e9876cf4e6"
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
