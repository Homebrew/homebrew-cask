cask "firefox@beta" do
  version "153.0b12"

  language "cs" do
    sha256 "b4838235df529f5f12f7b8bf3aa878cc2e16411bc077ca194126daba838869aa"
    "cs"
  end
  language "de" do
    sha256 "5086c99aa7fcf7eb2a82ebc4ec461ed90e0167a41b527bdf0f350baa5f52d0de"
    "de"
  end
  language "en-CA" do
    sha256 "60f47ed549d9931cc0e0864a62dbf6f73502fe940718aaeeb42b9a786d1e85c2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2130615d9f3c6e2ef6fd40a4781b7a5783e4e500da732e40d18a3133793a5cb4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "dd61da83eb9ca94938a36b2704422c9152e1dbfd34ed0dccb53d7f25d8c9f343"
    "en-US"
  end
  language "es-AR" do
    sha256 "6b6a419990b7855dcd64ff73feef545f5164f6eba088cb6d7a56b8f557820244"
    "es-AR"
  end
  language "es-CL" do
    sha256 "5d07bfa6ae6069450f384d00a9a6c1ccef6fbaaa01f8f1fc26a076b2fc168ecb"
    "es-CL"
  end
  language "es-ES" do
    sha256 "2020f382835f00e0e53fdcf17ac16b769e4cd9ee87320d3f6234fd98b3a0af13"
    "es-ES"
  end
  language "fi" do
    sha256 "71205f3ebc7ed731c3bd6cc28525d417f519a37baa2bde121465fcc43c3fa9f4"
    "fi"
  end
  language "fr" do
    sha256 "e34a094c4472810e3da7f78c7001373d91be8ffd982355d96cbf3b1da28eb0f6"
    "fr"
  end
  language "gl" do
    sha256 "ff902a0eb59ddc662c7ca5f5cb9a071bebfdbf6797f2c0305951b3e0aa64cf2e"
    "gl"
  end
  language "in" do
    sha256 "177bad358f1d908cd57de4c7877fbf386b9112b5832ca0c58a1e14e7457661cd"
    "hi-IN"
  end
  language "it" do
    sha256 "4ccc499601a03fe5f4d078290b1d9a741ac634f439c3d092e18ccec695ea79de"
    "it"
  end
  language "ja" do
    sha256 "753e448081098f5ce181113e0a86bb8b4ff332305685a1fcaebb63228074e9e8"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "3aa1c24ec8cb065d5fcdb6d92f0afff27f42d517bc88624ea3718e11f1f6bc43"
    "nl"
  end
  language "pl" do
    sha256 "673d9ae72ab36b4f2c3b57c9d4dc85090267832c8dd6ef5c09d4ea3416c454d2"
    "pl"
  end
  language "pt-BR" do
    sha256 "10f03edb791c0a65ebb4faebcff925439633171ceb6bdb64ce43fef96f077140"
    "pt-BR"
  end
  language "pt" do
    sha256 "379f2a164f3b077da3149e2e059b99d2f70b874fd514ecf19cf2c6ad6884f95b"
    "pt-PT"
  end
  language "ru" do
    sha256 "88ddbe35d1729560028a007d833581f70546fc99df003f4e9f3a24ef8232f0c0"
    "ru"
  end
  language "uk" do
    sha256 "a49f50b9c05a0cae9feca85b6e42bad1b2c0139fdc7e2c64bdce262a040a0bbc"
    "uk"
  end
  language "zh-TW" do
    sha256 "20ae9f7b8c78878347c72ddd7ca5a896ee273bb935f411e6902204cf33718c6a"
    "zh-TW"
  end
  language "zh" do
    sha256 "02a057982f9e531a32c28a48af185edbeabf1d4246ff3bbfbe2b1747d546fece"
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
