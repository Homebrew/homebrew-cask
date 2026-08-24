cask "firefox@beta" do
  version "155.0b4"

  language "cs" do
    sha256 "685c23da0fdc2022868595e3730e9319b03f80b3bbcf76279962439377881ff8"
    "cs"
  end
  language "de" do
    sha256 "6d6a9e83d1e0d28e5e585d992018e0b0b314298024741b922a12025a76796b9d"
    "de"
  end
  language "en-CA" do
    sha256 "a122b7b6d841e137aa7989cb3e48a658fedd19620cf22936516dbae19e9a53f1"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2401dff5538cda5e25eeb689ca20885ef2336cc73838c81daf0a45287be84396"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9f62d3357f3e09bed4c709a222d2a1e8d8d5084515d1ca0f9adbd467da60e510"
    "en-US"
  end
  language "es-AR" do
    sha256 "2365a41942dafe4fbe584b43c3e312070538a2a08032a3e5621798411a3b9ee9"
    "es-AR"
  end
  language "es-CL" do
    sha256 "5badd86931c060cd42d0e6a18785b77bb01ae037255ca9ed6ecb11700489a8ae"
    "es-CL"
  end
  language "es-ES" do
    sha256 "eadf738f1fa93c66bcc378216ad072ebe8872d28a6c643e12ef63291ef7c4251"
    "es-ES"
  end
  language "fi" do
    sha256 "ea55b9c8e8e72e0d3c5a1027734fac78693902e78415001b93bed08f81f7f4f0"
    "fi"
  end
  language "fr" do
    sha256 "0b92e6620e2bf6e3608355de53d40a40a805fb36141970599b5be688258b1758"
    "fr"
  end
  language "gl" do
    sha256 "dff5fd13b9162c308f8ac5bd1ca879c7caf3b0404a3e994791a7253310344902"
    "gl"
  end
  language "in" do
    sha256 "e215ec295cca8deb2371dc88bf3597df9e90e99e8a60d4dd36ca5bb6e654acf9"
    "hi-IN"
  end
  language "it" do
    sha256 "2a8e377fcfcbabacab4221d77069c93bc5b005bc5a42dcc7c32913873ca38d7c"
    "it"
  end
  language "ja" do
    sha256 "7ea71eeff22031dc6f79950cce70dc96a65d516d854820a1bc7e994e35a6bcf5"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "0b8da75d6dc29a7b23d0d154e8b9a470c4fdb49f77195817b6356564c08e806f"
    "nl"
  end
  language "pl" do
    sha256 "baf85d2ff6cd89d20c14f811ed95a0e702b14e460ca6049bc968bd6ecdaa6fae"
    "pl"
  end
  language "pt-BR" do
    sha256 "49b7f2d988494b96c44349dfaa70c6e78b563eedb726179125b6b367f23f0557"
    "pt-BR"
  end
  language "pt" do
    sha256 "d82c02d80f17717ac3e5215a6cd168c68772d5e1924696ac4f7ba6b9d93a9a31"
    "pt-PT"
  end
  language "ru" do
    sha256 "5ab2bfc05608d8ef84141b81be2b7b21de9f14f3f0eddd4b1c78c525e1f21caa"
    "ru"
  end
  language "uk" do
    sha256 "3cb525a403217fbb5ca082e1061853a1a457a1ad84fe3579edad570537fa740f"
    "uk"
  end
  language "zh-TW" do
    sha256 "11c6e191c124c0102e9fbe63d0b0182e4a12d813c8d035a7aa66613220b84b8e"
    "zh-TW"
  end
  language "zh" do
    sha256 "ad488b9ebcec9fd9f64d8542f523b4dbeec4b195dd522a5694de2fe92e8aaf46"
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
