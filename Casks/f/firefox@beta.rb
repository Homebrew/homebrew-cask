cask "firefox@beta" do
  version "134.0b5"

  language "cs" do
    sha256 "333273da6ff55775a0878519b792cc2e2514507bf0de1093dcb63190fb0588aa"
    "cs"
  end
  language "de" do
    sha256 "f9f6b25dbe14a448fc6a6e1fe0e19d137dafb54aa0ec46cc9db8c62ae22b0742"
    "de"
  end
  language "en-CA" do
    sha256 "b7b02e4df1e1ca198bfbfb67f0dc3f922e5d33b421f6e3a390e465f411f5e216"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5ee458c4cd273de5b89d1ea67f0ff246246cdc9c156bbf1283ff6a03cf524065"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5c6d02d149637e963c55c741ebed98a8dacfa93c90e99065981bbdd9d511a0f1"
    "en-US"
  end
  language "es-AR" do
    sha256 "270a0ababeb45ff087ff2127e896f57e511eabc94f92835e798733f799825e6c"
    "es-AR"
  end
  language "es-CL" do
    sha256 "fbe8fb35a4ded529bf8606c1306fd6987ce65024274a0bcd491b690de5b69a9f"
    "es-CL"
  end
  language "es-ES" do
    sha256 "63b7fc8a6c81b94af63d95e131309bad0b5c9055cba7180eac16cbe8bb524f97"
    "es-ES"
  end
  language "fi" do
    sha256 "f29f5dcfc48b944bd2c6120dacb0b8b0b99970994f4501e0662ce720bac0d93c"
    "fi"
  end
  language "fr" do
    sha256 "ffccf34a88482b31a6d77090a219bb28c70d8b1f0234c7eb61ef5246c5c5df88"
    "fr"
  end
  language "gl" do
    sha256 "71be56c3e8e333ff66fbbf46cbf216ae01ff2cf6fbd043c38d37d328fc3c399c"
    "gl"
  end
  language "in" do
    sha256 "1f3c756b58375243f78cbc3e820080425757621fb48bdab4877bc11a606beb7b"
    "hi-IN"
  end
  language "it" do
    sha256 "5b38e592c1e20abbd02938cbbefdf0b6586fb5384f54c9e052ba919dbccb934e"
    "it"
  end
  language "ja" do
    sha256 "926aa1072ff25511d013bb957ac3c565faa2abc65624291d3977f1d0809aa7fa"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "feb17c4afcb26040f1ab8d59291247e5f04e9081f5ba678bf9ed3b85a179f434"
    "nl"
  end
  language "pl" do
    sha256 "3afc5720ecb3848e8941c1d8a4f4b9d9020912f95aef187ce35ab61491fb483c"
    "pl"
  end
  language "pt-BR" do
    sha256 "1a8baa00efa937960e03e05cb52e42d16a8fe12cf372bac5fd13ea0f4b1a40d6"
    "pt-BR"
  end
  language "pt" do
    sha256 "e0b15556c7c058e79551d751f28cab9b214ae51ec8c8cbf1e0eb8970093ec1de"
    "pt-PT"
  end
  language "ru" do
    sha256 "e0a956f9d23ddc2cd21874f45134cece416054e28e6b7321008a1adb51eafb33"
    "ru"
  end
  language "uk" do
    sha256 "a13c660c417a1ea094445088a1cbf9d5408fe26565edbdf58fad08ca7350c16b"
    "uk"
  end
  language "zh-TW" do
    sha256 "da671545f53355ef1d243b58fce7861b2381be7be8704733fb7155d24a9164ce"
    "zh-TW"
  end
  language "zh" do
    sha256 "64209d7cb6a6e46f6313d2a6aba3db41be62a2c8eb9a0bb6d1325b345405dafc"
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
  depends_on macos: ">= :catalina"

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
