cask "firefox" do
  version "84.0.2"

  language "cs" do
    sha256 "13bdfd242e41dfe78c8db717f655d76801782b021c2bafbb2ce20453dd49f9a8"
    "cs"
  end
  language "de" do
    sha256 "ba636a20c5b76b9b56d36eaaa52f3100ba7b6c4e4079c4350d63984b08d2ba2b"
    "de"
  end
  language "en-CA" do
    sha256 "924978e97833e17d3c53baa3da10d91bf6711fc64ebfb6c085400960e3955968"
    "en-CA"
  end
  language "en-GB" do
    sha256 "45ca188963f808297f4c6fd9119e9333aa8561a585523f57f5bcfe98e09dabb6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2cae967fa07f7fa6f04e5622d4333b07e1bd308c7c8e8d437a34f488f6a8ccf7"
    "en-US"
  end
  language "eo" do
    sha256 "7020da7487787a65ce68c343a23e38926307003efc185fa980f0c8c13cc21f71"
    "eo"
  end
  language "es-AR" do
    sha256 "d434f4999190a2a4c166f9583993b1a27443cf9bceae0207812b33753c6bcda0"
    "es-AR"
  end
  language "es-CL" do
    sha256 "2d72371272abfaf5ca35d16443b892dd689f6de38dea6acd7c4334e15fd49fca"
    "es-CL"
  end
  language "es-ES" do
    sha256 "383faea5b579be5bf6f61dcb280ba9680aeb94460de4a2f7b4aa2cb195dbaec3"
    "es-ES"
  end
  language "fi" do
    sha256 "a3de371d334f89f15853fbb020eef3bdb5fad8275bb84c9c9ea97b0a3f0b3f6b"
    "fi"
  end
  language "fr" do
    sha256 "5868f9034b31f3bf863232e278b1a89e5d85b1e085eaf4f77639c06ac6a8e2a7"
    "fr"
  end
  language "gl" do
    sha256 "6199bccd065e9353063c66c5ed7c583850ff1d05d49a8b2fa82a9a617f0f71a1"
    "gl"
  end
  language "in" do
    sha256 "04b5b62f8f271088f3bf3af4cd3c324f35b148beae554739fcf9f7a50af424b9"
    "hi-IN"
  end
  language "it" do
    sha256 "37ba813f5489c568ecad027cf264f58a29204f55dcc476ed8606f11f0164e4ee"
    "it"
  end
  language "ja" do
    sha256 "b4897dacb6b308dc3d245c89c7c400b09160ec1d554713ef74a76f2c4961d1b5"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e6e063e38a8c3ae90e3f763ada481d70f503739613ca2cda9e3e82594e7e3292"
    "ko"
  end
  language "nl" do
    sha256 "eea69c863636fa995636346dced473e5e821ba406f1226b51b055ac431a53740"
    "nl"
  end
  language "pl" do
    sha256 "b531f51d63b7921adeb34ded186b3a3ed9871b3f29cf84b6bf426c8b0d520f19"
    "pl"
  end
  language "pt-BR" do
    sha256 "0d41649a86b813964b48866ee57837b2adfb1575f103081e2a6ab2583ce5ff45"
    "pt-BR"
  end
  language "pt" do
    sha256 "4fbb1f0339f91885818e78e3765add2ed5e8a889f944f2700da31c52b6309658"
    "pt-PT"
  end
  language "ru" do
    sha256 "e68297f7a770990e4731c7c2efafc62a7b8f742de7715b44f9bd5cac0fa20f50"
    "ru"
  end
  language "sv" do
    sha256 "a4d9bcd6792e95ed7a77c5a4e40c811480c16953c2325e546fcd42f28a20b7a1"
    "sv-SE"
  end
  language "tr" do
    sha256 "c0310f2ee880167df5d22f372441071d9d98b1d2771e40eb748fe8be8ced0508"
    "tr"
  end
  language "uk" do
    sha256 "6e9bbc253071fb0456a312abaf3bf3a3948f612df9732dee0c4d01d9440f5391"
    "uk"
  end
  language "zh-TW" do
    sha256 "46dae86accaeacea5feac1fc72d8e5ab02f3e82d1c439a5108fd106aa44c5cd7"
    "zh-TW"
  end
  language "zh" do
    sha256 "4ae2c744730c0d885e648f5d5e015e3bddcc3a904d08e537a652be6d7b7bbf98"
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
    "firefox-beta",
    "firefox-esr",
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
