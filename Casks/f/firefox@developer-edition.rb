cask "firefox@developer-edition" do
  version "152.0b8"

  language "ca" do
    sha256 "06060bce1887aeb462b00b583357d8a9d33afff11003faed49ad0fbd9d11a6cb"
    "ca"
  end
  language "cs" do
    sha256 "a800c23d8071df80f1821d6c5de19f590894b436b0cc1e00cf414bf2c2eac926"
    "cs"
  end
  language "de" do
    sha256 "6ff331da6265e8a4a5f0d381e330081c051e61624edeb31fa7c8963f2c4ec563"
    "de"
  end
  language "en-CA" do
    sha256 "1ce951404b92664d6bc67fe4ad678c7c1ee2daac0d005ce219fab6af9cd473c0"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a7fac6812ab4cf86f0577955659f497cf05f8042ab0afdddd4cf5cdab0fc6dea"
    "en-GB"
  end
  language "en", default: true do
    sha256 "dd24e6053fc186f4cdd3b08459b8d4bc3affaf78ddd2bd6e82d4cf83f13c51b9"
    "en-US"
  end
  language "es" do
    sha256 "2fc1fdb31d40a4115b314357fa020811cf64abbfa8648f58d98bd583913e7d76"
    "es-ES"
  end
  language "fr" do
    sha256 "e7b7cbe66848bcfdbb80044e9f182030b802dfb02ebb561a58b08c7f5e9db667"
    "fr"
  end
  language "it" do
    sha256 "df23d5a26e947c42e94b92ad7beadece6f6eff4bdda0e6d6b657b4d9c6a38b55"
    "it"
  end
  language "ja" do
    sha256 "a50d0f519d7daec979670e25741f2a9bf0dd6bb4fa01bbbb246e9b7f466c338d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "5570829669b6273e177d309a373a88b774e97040498871716088b85b25c2522f"
    "ko"
  end
  language "nl" do
    sha256 "114c283d095633afec5500fa85eadfa23d1f062cac003800b43d211444182d5a"
    "nl"
  end
  language "pt-BR" do
    sha256 "e3be1c7ab494bdb24220595a216ea0519f0a207a2c6ec1e0d7da6bab9898c0cc"
    "pt-BR"
  end
  language "ru" do
    sha256 "61da58eec6d223158f8535202dc21a2f28e705d0f7ab72da32bab8cc9575687d"
    "ru"
  end
  language "uk" do
    sha256 "5725fde6b9bf7710adce2f6d26eaf7361b34d15d6b3e3fc02dc91f68877bc366"
    "uk"
  end
  language "zh-TW" do
    sha256 "dbd63773ba3c643396e5c137ae3546956e6a3e322fe1167fe854fdd27eddb26b"
    "zh-TW"
  end
  language "zh" do
    sha256 "c5d36401f184ace2745379b8cbc5507fde14d02ab81f06ec5a3405591a6ea0b9"
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
