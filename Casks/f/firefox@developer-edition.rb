cask "firefox@developer-edition" do
  version "140.0b4"

  language "ca" do
    sha256 "ffe9b9bfa9742d259b1da9675005c21a1018d865fc33eb3006a9757b7af9d9cf"
    "ca"
  end
  language "cs" do
    sha256 "e37322b24fe1d3248871314095726a8ee53616b102ddb12be11857fb9fb0c72a"
    "cs"
  end
  language "de" do
    sha256 "29f7864de3051dc8c63458a4291a03f5cab7c4f1cfcd038cd4cc097300d3fa32"
    "de"
  end
  language "en-CA" do
    sha256 "abf69c3363150980bd1c1a84cd3bdf2d39e4715805f11256a1db38e99e431bcd"
    "en-CA"
  end
  language "en-GB" do
    sha256 "cb9c91e78b00589aa06286af20540e0fb7fd99e045a602aa49353db5de84ae07"
    "en-GB"
  end
  language "en", default: true do
    sha256 "41074b15a8244ec003bde022c29f8bdfd9cc07b7761af8840380c5cd8deb07ab"
    "en-US"
  end
  language "es" do
    sha256 "6364d2a4b7ea39d89f654abaae3a291577e74c8b0b764fbaabcbe0992f583159"
    "es-ES"
  end
  language "fr" do
    sha256 "f5393dcdbdb367bfaf0e1e47ce2a445add9fa265abb87a0c324daceec3a1d0fb"
    "fr"
  end
  language "it" do
    sha256 "a0f8f2af64f04e6ba51a082860eb699902e5f5bc27dd995b9b97501d5bc7e0c0"
    "it"
  end
  language "ja" do
    sha256 "3c248f77a15e06c4222760c2dc89d6a8b3f5d2e39772fbd503f35d6fd05aecaf"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c42535a9c379574d411cce6d4fd5830ccd77ac7b6c849aeba68436bdf82c1186"
    "ko"
  end
  language "nl" do
    sha256 "26626d2859d869ad67b8a99f9d0143a307a2998f941b0d8ffbc1b2c10c5d3aec"
    "nl"
  end
  language "pt-BR" do
    sha256 "a25b7e77f2d00bbf1d09cf3b70e8117de7a7ca8f561fe4baf15efa699a5c3d52"
    "pt-BR"
  end
  language "ru" do
    sha256 "29e979cd4639b9bbe6e9e44b79b5173a8f488286382533bb8cb815e4182af549"
    "ru"
  end
  language "uk" do
    sha256 "e19dda81f715feaf6011d7f59033df2565db0ec623b7ceccd75538cb3dd7098f"
    "uk"
  end
  language "zh-TW" do
    sha256 "8b50ad669970fa040a3c12156c24903c3b6a885ad7cc886ef7a25507ac27f202"
    "zh-TW"
  end
  language "zh" do
    sha256 "cd905f3ceff4c7894aa299562fbf495051760af5b600ff35f0d1ef88fdbe2187"
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
