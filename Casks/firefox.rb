cask "firefox" do
  version "81.0"

  language "cs" do
    sha256 "b1fcb872074a9c04ec291fffeed4a5d44376a78700a0df3998b44ecdcec56f67"
    "cs"
  end
  language "de" do
    sha256 "a3d3e360c4e8eb7ffa38b89d19f6aa5c77cada687bfacc9b24f19c68b4d36ca6"
    "de"
  end
  language "en-GB" do
    sha256 "484880e53d9e5e3690f7c8f2b231127bc7d2c56f4b5d7a0795bf64c63e7d9768"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c4975a1a73dd1976e1f58cf5822921d25f2fb4a0e092897037e039d7ac6b8a67"
    "en-US"
  end
  language "eo" do
    sha256 "7a436d832a26d5914835a60cbe8c50eab5e33e6381a35b2d9274e805354df273"
    "eo"
  end
  language "es-AR" do
    sha256 "6e178055dedcbf10e9a50f3eff2498b5ab605b4e7378a1df379c8fc3b3c24bee"
    "es-AR"
  end
  language "es-CL" do
    sha256 "0a12cd6e23a3bca5adbec32d95c1f2d2776f9d2098ef6c88b80e18e4a24d2507"
    "es-CL"
  end
  language "es-ES" do
    sha256 "2c1bd174572ff1dac95fcdbc19c97b6a8e2de3dd397dfe8ea0172a8352550073"
    "es-ES"
  end
  language "fi" do
    sha256 "21461392237940b8e6092b319a4475d412429a1ae46bf06400189c6be9f646f4"
    "fi"
  end
  language "fr" do
    sha256 "b66aa3ac120646ec854b3ece8fe5de59f0848c9700afe8715c4bcb459547bc45"
    "fr"
  end
  language "gl" do
    sha256 "8373218406838ed367fdd4a0c601a3239b501453ccc6d1c88ee1a23d262640d9"
    "gl"
  end
  language "in" do
    sha256 "243f537281c8a050c4e42c8f8afe344c68c2a5f8541dbf3830bf090194f4a8ba"
    "hi-IN"
  end
  language "it" do
    sha256 "c4b6b5ed8c2d53dd2ea5658c462a054fa66f497c1dee2709d124792a22a39316"
    "it"
  end
  language "ja" do
    sha256 "e19879ee2206c06e115ad14669d67ff41c26a6dd5dd59f2f408420f5d92b2e99"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "535f2cca4e190c5a7b86733a154e2941c0e7fd62162b67c3a57185ee0abf57be"
    "ko"
  end
  language "nl" do
    sha256 "9ec7ccbc2433c23eae414445ea5b6ffb980922d7c57102d306f99740c0a119d2"
    "nl"
  end
  language "pl" do
    sha256 "b28633a8af76c8c52d03afad3c66d08da42f73bde74e3f1cb9f883643c9ac2ac"
    "pl"
  end
  language "pt-BR" do
    sha256 "92360ca53890560573d8763ea6e2552ff836a6696e12fb415da4c1f20d23e0d5"
    "pt-BR"
  end
  language "pt" do
    sha256 "89f203c46d2d527bd5be2eef28fadee47b1c09832a2f98cf1ba2702edf3d041e"
    "pt-PT"
  end
  language "ru" do
    sha256 "f2a6505d0d7d28e5b7737147b86b175572995e007ee7f2f913a775a221bf91f0"
    "ru"
  end
  language "tr" do
    sha256 "d4c5ac7dd273824a21ab6658a6112e4155ac2e3abbeccb4580abfb07cb4e65d4"
    "tr"
  end
  language "uk" do
    sha256 "7a96ffde9f55e75f974221c0825a371becd2c3518e4985d3fa47d9afe893cd90"
    "uk"
  end
  language "zh-TW" do
    sha256 "d737be9a4678e15c48473f392c779d26bd426ab6d68115ca8932136d01c17ba1"
    "zh-TW"
  end
  language "zh" do
    sha256 "7713d2f38f8dab17bf2f20358f55cb578e425fa243a19ef5fec4fbe64e069677"
    "zh-CN"
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases/ was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.mozilla.org/%3Fproduct=firefox-latest-ssl%26os=osx"
  name "Mozilla Firefox"
  desc "Cross-platform web browser"
  homepage "https://www.mozilla.org/firefox/"

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
    "~/Library/Caches/Firefox",
    "~/Library/Caches/Mozilla/updates/Applications/Firefox",
    "~/Library/Preferences/org.mozilla.firefox.plist",
  ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla/updates/Applications",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla",
      ]
end
