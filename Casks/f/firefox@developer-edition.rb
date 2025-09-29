cask "firefox@developer-edition" do
  version "144.0b7"

  language "ca" do
    sha256 "0f3652747515d751baf5cfdc78f1227c79214395e200530e989867a520566002"
    "ca"
  end
  language "cs" do
    sha256 "809fff3cc5a06813123d149ad52994c553de8f9c60ac3d4f2106adb8cf7c59f9"
    "cs"
  end
  language "de" do
    sha256 "db9d796312a636b924b7ecc4df2d5f77270aced39e899f92fb1490c586d36bf5"
    "de"
  end
  language "en-CA" do
    sha256 "d7f26496f8b0a5c9a6fd370efa872e44a2ec54c616cfa871a094df4ae696bb9a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2b709d0180a87270b53ef8cb9a40f14bf8ef20078c89736eb81ab10bdedea8d8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0e56bca49c572656334e2745acc3e3fcc1f5d7b1ec372f6606dbae79f4c0be70"
    "en-US"
  end
  language "es" do
    sha256 "b8685d77265af1a598b8923b3d9a0475a3f669001b435e53a84209feb8cdd5f6"
    "es-ES"
  end
  language "fr" do
    sha256 "c6f327c3f9b1d92ba2a6ab86a95cd0f5b626452c2b13e3f9a7a83b262e415ed0"
    "fr"
  end
  language "it" do
    sha256 "bbe15fefa6cb13ff9c00cb3385789b2e44419348711d1c26c692a59f18a27cc7"
    "it"
  end
  language "ja" do
    sha256 "884527c33b0ecd9b8ee13af249647fe587ab5085fb08f8d9a731ef5910d49b64"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b3382c838d8362ba6494e516e668037d9253004caf0d502289b84b43d9cc66cc"
    "ko"
  end
  language "nl" do
    sha256 "d5b620a56888c109269a321e7e99533f54e2d609d78425ee3162d18a54387a2b"
    "nl"
  end
  language "pt-BR" do
    sha256 "abbf37db3171806d34f8ebc93d8ef7e37c7342f43094ca025a9be3a9cacad169"
    "pt-BR"
  end
  language "ru" do
    sha256 "1d8c087a4c97f06c2dbd34609a360ec7c44139548e72d4d64c70927e3de0d1a9"
    "ru"
  end
  language "uk" do
    sha256 "065418b8053307248d5809a3f9f9b68c8884d1982fb5fd96f270acbabbb99019"
    "uk"
  end
  language "zh-TW" do
    sha256 "3832785566957f2f31fadf41afe1132a147a1338a842a643b437d76df1f64e21"
    "zh-TW"
  end
  language "zh" do
    sha256 "5341710e5e165290e7c398bef29668149f861384faf7d4e94b5037cff2262fc8"
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
