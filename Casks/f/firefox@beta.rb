cask "firefox@beta" do
  version "135.0b7"

  language "cs" do
    sha256 "3937c9d44aac5064c462b81427cb4a0b23847f26eeae1c2ee136ce706f4f43c7"
    "cs"
  end
  language "de" do
    sha256 "1ffcd29001a16e01ec4dae1613c38d64bfcc27b0ca6c702b843721747dfaef42"
    "de"
  end
  language "en-CA" do
    sha256 "5fe7f0b245a91d30d1215b378ed93d36e95e3af5970797ba1c3b81f7e8d13444"
    "en-CA"
  end
  language "en-GB" do
    sha256 "fc5c2d164a3b997ee30174177c669004a38b018d17948b6b8a2cf195da9fc5c9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8fdaaac29c19f50ab67d5c4d5766eb596253c7c2368cfe042846685d836f78f1"
    "en-US"
  end
  language "es-AR" do
    sha256 "b99b137a78f2abd1548364a9cfd1efe345a2cf99cc2f0aeefcc0f55695caec6b"
    "es-AR"
  end
  language "es-CL" do
    sha256 "6dbbae7d3c0a3bfcfc7961502740aa21a92b23d0f75c476da90da7c7ce66e29e"
    "es-CL"
  end
  language "es-ES" do
    sha256 "c52729ccc60691d8354efe68a449a6d0cf34803c4c05dee51293cb819ee65b36"
    "es-ES"
  end
  language "fi" do
    sha256 "f676e7c882fef9bc6b0de4d3ae70aa1ad6e9557052a55ffe3326171dde5bcb80"
    "fi"
  end
  language "fr" do
    sha256 "ff44f4494b6d1e3c78ebef48944c3a2652f8a53a2c992b8912b606ba52ead966"
    "fr"
  end
  language "gl" do
    sha256 "160295c1f5e851d64b62bdf306392e2462e1359cfdf078e4d34a3266ace68505"
    "gl"
  end
  language "in" do
    sha256 "82307b219760e68081434161bcbdb45edbd092ba73ce97a3ae70858f736f5387"
    "hi-IN"
  end
  language "it" do
    sha256 "ed2740305613f27fc067a004ed3c5c4cf07fad0d85ff21569c05c91c5e423e82"
    "it"
  end
  language "ja" do
    sha256 "94e5c6688511f0d3d88f73576b3583d380ccced23dd71f0f4a06300032ba966a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "17d0292faac894a921c97b9eb2394f1874372a98a23a5c6dcb102402dbac783d"
    "nl"
  end
  language "pl" do
    sha256 "f0b8f6a932b5201ad43c4c7b3386a02d5841cb594978bb561dc1e97d44e6ac65"
    "pl"
  end
  language "pt-BR" do
    sha256 "e2b0a3eb8cbe3b3d6cfd9a2f2676bafa8c597656860316020db114e5574b3e1b"
    "pt-BR"
  end
  language "pt" do
    sha256 "003b251438d6f886ba06c5bd75deae68c33371ca06895533dc91abc5d7b31c53"
    "pt-PT"
  end
  language "ru" do
    sha256 "ef790afeab48db321caa7507191f011473d415dbd5117a673265e02610f15413"
    "ru"
  end
  language "uk" do
    sha256 "978b73fd2955802e30d53f4f3229a505363f824b5ccdee6960a1ea653459faee"
    "uk"
  end
  language "zh-TW" do
    sha256 "8eab7da5fa7951efa23a7975f852168ec6b83ed71fc568f8f404d87604a95ed0"
    "zh-TW"
  end
  language "zh" do
    sha256 "197dd34e0b4369dae388666b9009080a9df39eb91a05e16a4f966b91cf3e7d2a"
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
