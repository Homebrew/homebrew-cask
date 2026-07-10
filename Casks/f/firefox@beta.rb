cask "firefox@beta" do
  version "153.0b11"

  language "cs" do
    sha256 "199d909e89f86a1842ce46dda1f8b31ad97bd5fda6ecb12f314a5eb1d50eae55"
    "cs"
  end
  language "de" do
    sha256 "a2f3824392285c83d0d64bd24253ac166699e48634023a9bab11ec967ef169ee"
    "de"
  end
  language "en-CA" do
    sha256 "82c99909aabdb5dba216ab106e9e6f76b89d0cbecde4d70c1b54b3ebe441a053"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ded7e87658177b96ccf0dca4e3524685a9359916d78422d9cb3094688b15c7ad"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d4c79565a45487991df0eda09028463aaf6671195de16b1d4ed1d73ecf1e8720"
    "en-US"
  end
  language "es-AR" do
    sha256 "76484e23ab5a5db43e440f156d541b1d7ed31183061d1e818d14a7498f18896f"
    "es-AR"
  end
  language "es-CL" do
    sha256 "1ed650b1fbd42faab2ba9a772e37133f00168b0d64a6e36aef644f648dc233e4"
    "es-CL"
  end
  language "es-ES" do
    sha256 "900aa56f25ed29feedae2b23d6c9ef3cded8e78789dc22eb946468aa8c9b395c"
    "es-ES"
  end
  language "fi" do
    sha256 "90acee0c1e37847a46d1d419c00e62676132819ba23f034c5a1a6ac5bf8530ff"
    "fi"
  end
  language "fr" do
    sha256 "220edee32ff3f39ebcf9860d7dc1871929293227ca898eb07cd5b68069f0dd28"
    "fr"
  end
  language "gl" do
    sha256 "caf2b10e6b8658038b7cf52fc8d37de7bacd77bbe286953eb1c5b437d414bd9e"
    "gl"
  end
  language "in" do
    sha256 "94339d3e9380d68f94ef896112230ec0a30ec3313850f8a89a5507b483fe0807"
    "hi-IN"
  end
  language "it" do
    sha256 "40ba9e46d28e0049a2e7925513df8bbb59a2d7bb35dbf2bc525ad13b3615a382"
    "it"
  end
  language "ja" do
    sha256 "e024725b8b14808bb8914f335a86d1774c04a4f1cd4665c7619a2b6fb8514a61"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "9e0e0e10af0e8134228620cd55b2e985dd9b6a9d57bc5c821434196bedf2140f"
    "nl"
  end
  language "pl" do
    sha256 "459cdcf0947469e11a4dc222f6063cd7f1e997c605c45762873ff7af460b962a"
    "pl"
  end
  language "pt-BR" do
    sha256 "f9bd9f65c079844cce6fc7a74bd4d0b91078999cebb63207d1f9bfb696b3547d"
    "pt-BR"
  end
  language "pt" do
    sha256 "466530004984c17fe9beb6baac55002a63098146cb89e87ea87d25991636832a"
    "pt-PT"
  end
  language "ru" do
    sha256 "0a6b595f4f330889738fb21ba40a09a3cd023f6d02abb868e41a42bbf008d799"
    "ru"
  end
  language "uk" do
    sha256 "1200e727b12c8e8a28d39a5694003f4b9ee57eeb7d23795a0d76a4045a1f0f3a"
    "uk"
  end
  language "zh-TW" do
    sha256 "c90567a482769c3401b535523acd2a15faeb2319a0c88ae7bd203cbba47e8942"
    "zh-TW"
  end
  language "zh" do
    sha256 "1c1c0e29c26c6d6220ae06fa389bb87aef0bb22388d70da44ee25befb7d0a88e"
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
