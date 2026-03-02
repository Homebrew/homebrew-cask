cask "firefox@beta" do
  version "149.0b3"

  language "cs" do
    sha256 "5e31053cb5eacbf2a8c473b51ba1844c3d610aed18edee3df45617707c198f5b"
    "cs"
  end
  language "de" do
    sha256 "0dba687b200f7b812c6a4df92359625a143979ff092326c8f8601b8290ea49c5"
    "de"
  end
  language "en-CA" do
    sha256 "c96ec8f4c5b325e14a69d5e43e9ccdbe4007db6bdd519662d273c8537217ec11"
    "en-CA"
  end
  language "en-GB" do
    sha256 "eaa10a5726de406f32526f1977e837c94d4dbd485a119635c266d9f82a9d14c0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7872c9b4c98d8bfe818fd34e4f14bc55bf797c5b55842623b2ba28c6ac102226"
    "en-US"
  end
  language "es-AR" do
    sha256 "f10305e16ff3c6e03cf9626e9d59664fe0536e43cc56d4a2c1740966e35ba5f4"
    "es-AR"
  end
  language "es-CL" do
    sha256 "a8e1f84d266d3b50e8ac6140504ccba872c0519c40ebd945a2bc0b4b5916cb98"
    "es-CL"
  end
  language "es-ES" do
    sha256 "56f70b1aaa7f697b326ba527a525ceb16a63387ab70d199911200a415ab0fddc"
    "es-ES"
  end
  language "fi" do
    sha256 "9871fa4135e82aecac3c311dcb91c7f5e818104b3deba98176b52e25f7ec0deb"
    "fi"
  end
  language "fr" do
    sha256 "eef2a78d0ff1e9849a5ea99e1e972b94e3d8468dda8ba80581e2c3aca1aedf12"
    "fr"
  end
  language "gl" do
    sha256 "d006408ccdab14037b109b9ecf7075edf8fe014510d0c4684186001fae5d0d92"
    "gl"
  end
  language "in" do
    sha256 "2e8a371768a9447356b5eafaee6a45f4d84c6d7d6184cef5d4a7458422339368"
    "hi-IN"
  end
  language "it" do
    sha256 "79a871bef1ddff4c3ee109a95a4ead1fece8301b96570ef3c18c86f376e5e796"
    "it"
  end
  language "ja" do
    sha256 "728e43d0a512e232d36a968baa19a9d0ddb36965689c917e3bc9a123b02ea7d5"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "359af35f33a0e61e0144b29498c99a21048eb3a74ea22241134c64d2d903cca0"
    "nl"
  end
  language "pl" do
    sha256 "b860a1bb8d0dbffc7f9f0eda2be5885239122a44b79a72a4edfc71d52e9cfee6"
    "pl"
  end
  language "pt-BR" do
    sha256 "14b3af51dc0edd34128747b12c9f3ed618a7f205a715ef09fd737cd30d2b514c"
    "pt-BR"
  end
  language "pt" do
    sha256 "a183c12d1d3e19b2155e3f791341ba02585c983b33750a5727f5b62705d1c118"
    "pt-PT"
  end
  language "ru" do
    sha256 "819ff6ea3ba0f4261598a3a096e247f5f8ff2887403fc870db14392e2c2ef48d"
    "ru"
  end
  language "uk" do
    sha256 "c3e0bbb5fd654ed55f05abf6d008e18fd6b3969f787e3c4e51b2f227e55dcf5c"
    "uk"
  end
  language "zh-TW" do
    sha256 "20f28e7764c042de1a635c8db2d3a09e34b7015d435eb45749fe9044638898da"
    "zh-TW"
  end
  language "zh" do
    sha256 "83290cad98f3772946d7929025ca4364836d075cf88f107032dabd6761570d6b"
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
