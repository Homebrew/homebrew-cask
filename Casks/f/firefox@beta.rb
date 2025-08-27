cask "firefox@beta" do
  version "143.0b5"

  language "cs" do
    sha256 "0ea1e0fa7e0742edf42d13838a627fcc4aff7ba71e3666e838116e9848b3eaab"
    "cs"
  end
  language "de" do
    sha256 "669194d3619f1e099988d07ae31d6b587b4d6e79e5057ecdc7a81b66606d8af5"
    "de"
  end
  language "en-CA" do
    sha256 "1e5ffd7b5ab6d615d5b2c1d293ebb7032ea49b0fb0e2fdf08e64209987643eac"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c944a5d12e46f66ac8d8cb8be972d8789c3981d1cd168d78a4b224aca7d53707"
    "en-GB"
  end
  language "en", default: true do
    sha256 "502a06f0bd9a06719cc7e94e32c4afb321f0a7eb6efe5ec2fb870e65c69ad6cb"
    "en-US"
  end
  language "es-AR" do
    sha256 "8ff27985d64a7609b8106b61479ad6cee35606ad1637cd9479668240998cfad5"
    "es-AR"
  end
  language "es-CL" do
    sha256 "e79c7e9809e1de007d4d8e5f2d59c9905db2cbe1fa828acc290043d5b01b9a64"
    "es-CL"
  end
  language "es-ES" do
    sha256 "b58f5a4027f89bc37cf55c8ce8ad48724c42f37aa4ff21827340509d9e3d7dd1"
    "es-ES"
  end
  language "fi" do
    sha256 "0c11e793ed4380b621c4fdf58ef4b724bab631b48df9a7d6e208a4458e48cfcf"
    "fi"
  end
  language "fr" do
    sha256 "cdf85b91813918c0682163b280e248a31c6ece8357d06960a3bec5bfa1fdd787"
    "fr"
  end
  language "gl" do
    sha256 "205755b0383b96e2c757ff1da60566c81d5206c9f9b876ef3136efe0b9203bdb"
    "gl"
  end
  language "in" do
    sha256 "b4eca1a91361617c9bfad3dff448466a4cd92e628cb4ec3feb8806bc7c116b11"
    "hi-IN"
  end
  language "it" do
    sha256 "d8fe31f19e2651f6d698a7ae6af16e6c1f95f6124009533eda82c8c2c5bfdefb"
    "it"
  end
  language "ja" do
    sha256 "176c994e4e6c375baccec337e3581cd1a9865a8990c76707c7dc8a4a16b27551"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "d75f69c945ce1c27da06815d73c3281eb6bd6188fd64204e158ee158fe0ca27d"
    "nl"
  end
  language "pl" do
    sha256 "42fdb45e16b4a73a7d247ddc756d95b3969bd404885269691b513dd5f7a24f82"
    "pl"
  end
  language "pt-BR" do
    sha256 "81dcbd02c7db5f3b9633786752e3b98e7e25e31f6d4ccd732c3bf4fb8ea2dc18"
    "pt-BR"
  end
  language "pt" do
    sha256 "618057bc405ff08f9861c57ee847fa04c4395dc1f1644989c0f0bdb3abcfbf27"
    "pt-PT"
  end
  language "ru" do
    sha256 "b84fa28adf0488b7aa4594e0dd86642d6fd71035f9e9337c2c869fb9a94ff32d"
    "ru"
  end
  language "uk" do
    sha256 "355bc235efb1051a03d42781b683a264ae4770c6b0261ae74c9e1719e1bf9eda"
    "uk"
  end
  language "zh-TW" do
    sha256 "4e19341d451fae2c645a758818cbdecdba1edcf997b73b8082c83a37ecaf0f44"
    "zh-TW"
  end
  language "zh" do
    sha256 "148659cc3fcff9b3e103419c50e8373884c12c6a58b8d5ba950b62263d7f695a"
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
