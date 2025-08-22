cask "firefox@beta" do
  version "143.0b3"

  language "cs" do
    sha256 "b394d89404bd6bc7aaa529e80d6c604496e5f3319a73fd05f6ca0b22d3e80c6d"
    "cs"
  end
  language "de" do
    sha256 "2cc6211faa1a0a6dba8134ccec96a72d839533ea260f4d19806935946b8cc1ed"
    "de"
  end
  language "en-CA" do
    sha256 "463a6ee67fcc9a1db9bfb7cdf88c8265d54ec21ccff61b1b108f156b69362842"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3ce0ff4fd777a79d4bbdebccca0ba664a0653f164b91f7fae42bf47d6c3d7bfa"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0e392fc487de20c31c4fe66e25473f91ce001dd6e56528409720f7b9934f34e0"
    "en-US"
  end
  language "es-AR" do
    sha256 "cef6d4d0b9bd3d1d0a442e028c3bbf422663076be7d1a08676dc166ec74a1949"
    "es-AR"
  end
  language "es-CL" do
    sha256 "8987bf9d8604521a605b5c7c1fb72baabf45970a64098a85195362e114c2e5bb"
    "es-CL"
  end
  language "es-ES" do
    sha256 "cc60b52d6ca3af6e6dba09602035469065fdf7e0319bbad9d7ce348fff73ddab"
    "es-ES"
  end
  language "fi" do
    sha256 "afe13961b920a3d4fdaa7159a2ea51aa59820f0978c006b98c3b5d8b4484c62a"
    "fi"
  end
  language "fr" do
    sha256 "84bd30abdceed27418925dbbdec4e95ac6dc631e78f6c45dde2599e580a589df"
    "fr"
  end
  language "gl" do
    sha256 "9b01d1ea45e7091026c7eb475522d2186553d51b147f0b16e7d16d753d4eccaa"
    "gl"
  end
  language "in" do
    sha256 "9db97c5b571de05e4591e3191a5485746a520764b5b3a5a3f9b49f75242780b8"
    "hi-IN"
  end
  language "it" do
    sha256 "32ce817c37fa9150fc6a0e0f0bcacb0f52c511b081749803671842b74a45fe22"
    "it"
  end
  language "ja" do
    sha256 "2ace71a375ea78ae93e5cd7ccaaf92801eced332284e25c6d9d77a591a77e99d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "a5d249f0252b00466ae7019da7692cf52ed8ca9ebbde1277c302c66604332480"
    "nl"
  end
  language "pl" do
    sha256 "84f33422e183ebba8b40c8c52b72645ee0ceb18346d4b38d092dc8fd78dea9b5"
    "pl"
  end
  language "pt-BR" do
    sha256 "64d83da5f0f212b4713ec0d0913db470ba555d8d333122ab827557c7cc459c34"
    "pt-BR"
  end
  language "pt" do
    sha256 "9ef25e1ec8315914a52ca1cc7c2df8f4e19f5ac8b25ed3980a146e24899cc80a"
    "pt-PT"
  end
  language "ru" do
    sha256 "5b65acb56c42e5f906b04a0f8501f99fdb211723e11a650b4aa54e6909d5fd27"
    "ru"
  end
  language "uk" do
    sha256 "2fe4ca11c7a26f336cc25fa563f78556a6a561b1f21f4b92556def4d76e11d20"
    "uk"
  end
  language "zh-TW" do
    sha256 "d24c2a03c5f0635783fe83979b3ffb0550599f34e0ceee8aae59f2cc65e24807"
    "zh-TW"
  end
  language "zh" do
    sha256 "25f140ef4388a58de75a17b1e9196c33ccfe339e31ad0b07379861071558bf76"
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
