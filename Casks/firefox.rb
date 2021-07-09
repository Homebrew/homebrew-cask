cask "firefox" do
  version "89.0.2"

  language "cs" do
    sha256 "d728b0837654967a7c7b69abb4c739f2fae64b36398fba90ebc130bb8dd434fb"
    "cs"
  end
  language "de" do
    sha256 "9014696bc80aac71df066efe6fc6cb225865f25645ccd3ce67a7e1bc30c32741"
    "de"
  end
  language "en-CA" do
    sha256 "1a893549b121dd2bbb1fdd5923d4d5acc03ec1e25ef2dfd555eb8dd3c1aea259"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4024f2b6012fc698ff3daca21e3b64b8a44c6780e884cc8d8325f9784274b9dd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "cc22133c2343e0033795a2d5677eab38011710fe0a046ee302be7a845ab59043"
    "en-US"
  end
  language "eo" do
    sha256 "356eecf709908673807307a2d5ac662dcdaedd9ab438e4d54a1a9603f8f4ecb0"
    "eo"
  end
  language "es-AR" do
    sha256 "e28fb1c6bfc496a66b7e2a0425107543503bbcdc6dc7aa2a99cc1cf19a7d1e34"
    "es-AR"
  end
  language "es-CL" do
    sha256 "e5e9243c44b6394e8a05e8367950de27c4227b8f8e6f559268b2d469aff8a7cf"
    "es-CL"
  end
  language "es-ES" do
    sha256 "c0f5849d8197b5074f8687e89f69a853e6d2e063e60b79ce8953747c7b4a8c02"
    "es-ES"
  end
  language "fi" do
    sha256 "a867bd872bffbf17cc57a18c283fe98fb41ef429201b6819c32bbd3c14836beb"
    "fi"
  end
  language "fr" do
    sha256 "12d6034d2c908da7e020b35168ab20f915823c643103a41bc49a9e99f698791c"
    "fr"
  end
  language "gl" do
    sha256 "2a13edef8dbbd075c2b4ba542364edbee5d841199b8b5cf37c66a429d9c0f1b1"
    "gl"
  end
  language "in" do
    sha256 "719235aaab46531335b9339f855ec429bccdc3da7158a160d10c588aeb9b329a"
    "hi-IN"
  end
  language "it" do
    sha256 "ffba9a1405ad9e5c85f13574eaf0179befb1dab4aa28c0371936b7bb6cc3aa89"
    "it"
  end
  language "ja" do
    sha256 "9b8081f7ff09133c25a7cda31a838e672b39188f0dbfb48290b3961078f7757a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2d17671130b20ba938964ab0f50ea73a5caa15e57d0c5a4f7770046b701a3cd4"
    "ko"
  end
  language "nl" do
    sha256 "533a5ba26862399d321c2c807420878da3811daaac4b7aa4243807a68a8ce0df"
    "nl"
  end
  language "pl" do
    sha256 "5009328c5d8cc0273517c8a74467e6e930836a94ee168816fadb80e7498c87be"
    "pl"
  end
  language "pt-BR" do
    sha256 "a39ae7e954106d4fafbe9adb79eb5169e0f92365b1210a00c04345e4e3c5f35e"
    "pt-BR"
  end
  language "pt" do
    sha256 "d71931fb278acb4db2e473f4ffd4b147d4d26088412b1e0b40ed4fdb4d3d8ed0"
    "pt-PT"
  end
  language "ru" do
    sha256 "9e311e088d224d27413a9e6dabee89a7badb0365f91599f6880eddc7b97b3e14"
    "ru"
  end
  language "sv" do
    sha256 "f2f5d77c578d7ec7af404ad33ff16894e1f33925f58e3c41b61e75f5f1a4e630"
    "sv-SE"
  end
  language "tr" do
    sha256 "88ad576d38afe662285e6e2177e41a9cc9eb02240a680cb40fbed2a55da19fc6"
    "tr"
  end
  language "uk" do
    sha256 "a5f51a1e5dda4c45a66858692e60c3a02fce1cb893a45fe735f31035494e1180"
    "uk"
  end
  language "zh-TW" do
    sha256 "4f51e08942f6fa1832e3b56e1a8e5e95194cd586af76f337f5ac0383d6652ab5"
    "zh-TW"
  end
  language "zh" do
    sha256 "b9b1f5bef257f4a2d01aca8b9bcae30ca908696719e398b27521e27015b0e7b5"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
  name "Mozilla Firefox"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/"

  livecheck do
    url "https://download.mozilla.org/?product=firefox-latest-ssl&os=osx"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: [
    "homebrew/cask-versions/firefox-beta",
    "homebrew/cask-versions/firefox-esr",
  ]
  depends_on macos: ">= :sierra"

  app "Firefox.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/firefox_*",
    "~/Library/Application Support/Firefox",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
    "~/Library/Application Support/CrashReporter/firefox_*",
    "~/Library/Caches/Firefox",
    "~/Library/Caches/Mozilla/updates/Applications/Firefox",
    "~/Library/Caches/org.mozilla.firefox",
    "~/Library/Caches/org.mozilla.crashreporter",
    "~/Library/Preferences/org.mozilla.firefox.plist",
    "~/Library/Preferences/org.mozilla.crashreporter.plist",
    "~/Library/Saved Application State/org.mozilla.firefox.savedState",
    "~/Library/WebKit/org.mozilla.firefox",
  ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla/updates/Applications",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla",
      ]
end
