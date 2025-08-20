cask "firefox@beta" do
  version "143.0b2"

  language "cs" do
    sha256 "c030ce2cf1246d1262cdd2eea70fec3537cb4ef871a6f1d0f92b233cd24618ab"
    "cs"
  end
  language "de" do
    sha256 "89ffee0e74a5e45839691a60597c3a2b13017cf30122ad5f85740603c6ac106a"
    "de"
  end
  language "en-CA" do
    sha256 "4365b6e096af53adaec20cc6e83739fb8ae6055d43180e6b5e8d083f7cb77ea6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c07604fa2c18bba42b01f50eb5f6d33b803cf5fbb306f0637943822456af4105"
    "en-GB"
  end
  language "en", default: true do
    sha256 "52f9a7a944f857b207bc79f66ae2d600ff8736264d708d6c0fa5138aea664f97"
    "en-US"
  end
  language "es-AR" do
    sha256 "f4d3410bb3815c189a3c3fed10ba43729f2649b65a5608b9d75735c00b2767d5"
    "es-AR"
  end
  language "es-CL" do
    sha256 "34448a4e229a761a78a383f1d8c1793b3090697af64d58c898d5c7020e005008"
    "es-CL"
  end
  language "es-ES" do
    sha256 "7f0f9dfb0100e3c8b2143fa66dc519f33c3d14881b1ad3df0798f15852407b3e"
    "es-ES"
  end
  language "fi" do
    sha256 "370c90fd9bf100e87451cd19e4c008dff989261b753b539a37c6c35b1b1cc228"
    "fi"
  end
  language "fr" do
    sha256 "7ede00424177957db69491c5ba7503f5cde4a6d60b99ce3220bd5a2e10d6f2b0"
    "fr"
  end
  language "gl" do
    sha256 "2e6221a02c59416114de92d0340c9c0e8a2c4df1855ab2e83fbe01582f0629c2"
    "gl"
  end
  language "in" do
    sha256 "a46442aa895a4791910ff936fc2ebec0aea94f9568abaab1bf246d2866c4f881"
    "hi-IN"
  end
  language "it" do
    sha256 "4cd092199a13d3507c60c856de7878fea4b73412774ee59553418664a753dbdb"
    "it"
  end
  language "ja" do
    sha256 "634f451526ee18751e922541f4d9e1112de5e4e6b79707ee2d4723907eb02f15"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "915acd78d27156e1f2b4ee3bdc51870e4d962908dd75c109508d4dd6caa94843"
    "nl"
  end
  language "pl" do
    sha256 "ad8334bbe92050ba0d7ada2e8cd951af6e6090b467402a963ecd32413d6de4e2"
    "pl"
  end
  language "pt-BR" do
    sha256 "d6a4d29eb7c5d36420ffd047bcf8c8401c1acf73bef3db45335ceffec9ebda75"
    "pt-BR"
  end
  language "pt" do
    sha256 "ca49ae0a16d35769138bda1b8e35d61a77b65354d5f25e09499a9bc9dc1b6ad8"
    "pt-PT"
  end
  language "ru" do
    sha256 "ab5c911e46633a5162b1f019f5b542ef64a9f3d59c81d2f922ffbf3875ab4702"
    "ru"
  end
  language "uk" do
    sha256 "450fb2cf9c6d85f56593757e3a87cec6bffe53065c0a0782ce04de0b2a007d7b"
    "uk"
  end
  language "zh-TW" do
    sha256 "853ccf978a15ab1aa6b1f70d5fe660716b5ecd9ddf1b576605d1c631e1938f26"
    "zh-TW"
  end
  language "zh" do
    sha256 "12a670f125cdd46276a27d2115b4ac6126ce7df55ca8a32b432ee9b8cd9c799a"
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
