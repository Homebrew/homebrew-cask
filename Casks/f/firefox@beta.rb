cask "firefox@beta" do
  version "150.0b3"

  language "cs" do
    sha256 "72aa8065ea9a3f0b133215499338c03aed5731919348f70b39d2fd584f9417fe"
    "cs"
  end
  language "de" do
    sha256 "88cdb074c897f770f4d230dbd185628b3cf9f9e0b6b245ff0aa4c7a541007314"
    "de"
  end
  language "en-CA" do
    sha256 "eda661a63c582ab40db7aac061940dcb0c861b02911922706ef4a8158661999f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ebec320652d1b97ad19313e1871aef1b271c618bca7326616f8c8ca2a9382143"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d25a9621d94a8133f9313a7f50cf5d802c9d1af14314e761a58269ac558e0663"
    "en-US"
  end
  language "es-AR" do
    sha256 "714380f13bcc80d92b16bb9eb0ba157a6348e6b8e596a3b9eee08a2ea5319669"
    "es-AR"
  end
  language "es-CL" do
    sha256 "aff410357eb436a6986ae3c7bacc34114197fd1c99edb0672e0f6606f33bc3b1"
    "es-CL"
  end
  language "es-ES" do
    sha256 "78acd273b259b4dc4260a0a6003e57bf76426ab42880c0118124665bcfe881e9"
    "es-ES"
  end
  language "fi" do
    sha256 "6d33a879f34a8d1230f87ea5c4b48f19c82df8838a19d34b5c54098f53d3997f"
    "fi"
  end
  language "fr" do
    sha256 "006fbcd24d5fdee4f7b31ef3d729c4bd1a0d90fbe74e78a03c0007c3e8f09d03"
    "fr"
  end
  language "gl" do
    sha256 "a2f419f8509a4009efc2d3ca2a46fd5b8dffba82b5403254b75d57c1f7b627ce"
    "gl"
  end
  language "in" do
    sha256 "4c210ceae3b2b896160400c812b69df2f6f813c3d444c503a563d81fcec4b937"
    "hi-IN"
  end
  language "it" do
    sha256 "0fdbed3a87a60eea279b132e30b69ea148c16ac31fd7e8ab64d332e78f65a7aa"
    "it"
  end
  language "ja" do
    sha256 "482e03db82ff2372305500e26d4a32649215ba25d713f6c15b0378352035c230"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "586b7b3b44b4fb036fca404dfae51dbb0993cf4320a7aa7d7557689a5291da29"
    "nl"
  end
  language "pl" do
    sha256 "4b29cded6ae435a220fb82259e636a21b64e7bd28641ac068572042b91b008c0"
    "pl"
  end
  language "pt-BR" do
    sha256 "544e07cdd103881deb1eada9b98f18eeb998a8dbcf066c95112c6b09406db453"
    "pt-BR"
  end
  language "pt" do
    sha256 "05dda33e9ac52b14fd656fff30fa44bd0b76a93a97038e4700548107bc6c76ec"
    "pt-PT"
  end
  language "ru" do
    sha256 "43322fe8e48298f4275084a04719546c2c7e0d5fbd847e4d35330c4fdbcaf0ad"
    "ru"
  end
  language "uk" do
    sha256 "dabe0e3509ab85f1bd20622158fbc1705adac9e0ed4538ed75ad7807bcd8ca48"
    "uk"
  end
  language "zh-TW" do
    sha256 "768142756e8d0e519dbb72ae5b6e0cd080f183c1915258b8cda171dd652b3baa"
    "zh-TW"
  end
  language "zh" do
    sha256 "441c8a37b22017cf7625a4cd037db2af3c01ff771b80dcfaf8b9bf6ae2c7bea3"
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
