cask "firefox@developer-edition" do
  version "138.0b4"

  language "ca" do
    sha256 "79d1675c6e15f6e3b09d9530cf567ba145e40b8880eef3fbf57574ae0d095350"
    "ca"
  end
  language "cs" do
    sha256 "752aa225f977b412a2c23e59726e490385c2b07ac0dfdac0036dbe7d4b353175"
    "cs"
  end
  language "de" do
    sha256 "d9d025cc07a7a58506c41ae646a766c32725679042df4a6fd591f2625b482cf6"
    "de"
  end
  language "en-CA" do
    sha256 "30eff992014735047edb386384b958adce2a364b17e12c0e5a26eced7fd4c224"
    "en-CA"
  end
  language "en-GB" do
    sha256 "bb419ed87a8d048acbb2df427cff5072361be023f43a3efe81ae954f4c79a107"
    "en-GB"
  end
  language "en", default: true do
    sha256 "becc265c3fe6dae1d12f8004e84be35d720ff0f41e95d5c3716c17362066bdca"
    "en-US"
  end
  language "es" do
    sha256 "c99b10c8fdfe479634e2c715c4c14a2685aa8908dcd602a71089f8d294847aa6"
    "es-ES"
  end
  language "fr" do
    sha256 "a83c32342a591af6d9c42dcf8c78a8dcc8b758f04834a0ad4d243efec7857494"
    "fr"
  end
  language "it" do
    sha256 "cdcea1c259c2d932be510d68450317ba03ed6c7f95f46a3d274fcde4e945a70c"
    "it"
  end
  language "ja" do
    sha256 "bd9b8a71b9a1e4b6e8673fa4c9acb90234807dacc3cf7bc2b3ca359f1eb760a1"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a4d04c4ac1675193f626861f04ec8cf06baa66eb29c5f726aab087f7219cd627"
    "ko"
  end
  language "nl" do
    sha256 "7fe309393e815047edc9cf292e70f25641abaaf8713836df5b339e3140d2d854"
    "nl"
  end
  language "pt-BR" do
    sha256 "73d021a08b9226fb34886783481e0a686baf6ce396215c6f0c8670dfd8ed148c"
    "pt-BR"
  end
  language "ru" do
    sha256 "5a7d0ecef4672a8d91ce89c2b65b5ae20c99a415a46bc41ef0ad40020b3f1e81"
    "ru"
  end
  language "uk" do
    sha256 "89fb88866b4eb75e2bf0a086aa3c96aae208e4bc086f3aff0777c7e2f0110ba5"
    "uk"
  end
  language "zh-TW" do
    sha256 "0cf9a20d1bfcfb834818e53e5904a0f1add78c4c61d0acc2fffb7102275490a9"
    "zh-TW"
  end
  language "zh" do
    sha256 "21a75c7b416a98534a282d7e764c9f73a5edf7b2e0d373f80c926a99852f592b"
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
