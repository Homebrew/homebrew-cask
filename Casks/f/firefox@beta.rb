cask "firefox@beta" do
  version "151.0b8"

  language "cs" do
    sha256 "36f4b04643ab220aa23eb9073f609c84862f9b4eaf65183fa26d194bd95b0dd0"
    "cs"
  end
  language "de" do
    sha256 "6b16886026255ebeca61ab3c3a3862c68a8a70de2ab888b1dc49542ef668d100"
    "de"
  end
  language "en-CA" do
    sha256 "29ba903de880b07e5651854a5eaa8cd3721d9f1e1b42691b9d3c8cd6d05db4dc"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7e333954d5a705272dd51e9731b5c521eda433c011b94cea149b27b712ecd913"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8d20f85bc8dd75e095739f84908abb1b8dda495e2fafbfb51ae25d7b2934be1c"
    "en-US"
  end
  language "es-AR" do
    sha256 "8c7c6efd21dceeba61b3d50c1fcee9a69311dafd2e5ef16368e1c581a6fbff14"
    "es-AR"
  end
  language "es-CL" do
    sha256 "fa6521627abbb210d57a086dd01421cd2865654e7dc5d2e088f1972140f2a939"
    "es-CL"
  end
  language "es-ES" do
    sha256 "046f44a6b8da35e6760b13e392cffd50f297de033924734fd908142a0544fc2e"
    "es-ES"
  end
  language "fi" do
    sha256 "1ff1f2eb2f690456dd0087bc8f2df4ff32be691cbaac613416ac29e31ad5c7af"
    "fi"
  end
  language "fr" do
    sha256 "cfe1618add2200925c125cbf12d784d0e44760740758527178e41ff023c5f9f2"
    "fr"
  end
  language "gl" do
    sha256 "fdcf7f28b8b2306be8bfcd95ba0ec12b71678e4f7514d9106bcc039d4bb405a9"
    "gl"
  end
  language "in" do
    sha256 "7774f01c8cdf41694f2a7683271e7ac8cbb29b9a242eaa44c1cb33924a53715e"
    "hi-IN"
  end
  language "it" do
    sha256 "5e5bb35ca74a33225f4e30e9dca7bb6ff5f4caf5fa8b7789473f9f665d103587"
    "it"
  end
  language "ja" do
    sha256 "259cb25d387c652dd1ed3c53f7239227e86debd67944348969ddce8173db5f1f"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f2839868b23918a64772d35ec9e45a1db12e8a724df38f429f73c3123bd2c801"
    "nl"
  end
  language "pl" do
    sha256 "177134feab24287510aba2d029e6126a85fdae61fdf34138fb06244246d7714e"
    "pl"
  end
  language "pt-BR" do
    sha256 "a3e0a317dc493563226dfb74e97b61dd109c0374ade09ad84752405f9a45c7b1"
    "pt-BR"
  end
  language "pt" do
    sha256 "e99301373e701aa1d59eba49ae2b5b9cc6b34569222e1a9816c02e352497937a"
    "pt-PT"
  end
  language "ru" do
    sha256 "48515dc2c0c62af8e8638df528837abc9580149aa4b03909de6d7aaee04db024"
    "ru"
  end
  language "uk" do
    sha256 "74d2b5d4150870de250b0d00378644765fc63ae29f76a2bcdeaf695b0a0f1a95"
    "uk"
  end
  language "zh-TW" do
    sha256 "1de9dbaa6d06e60a87d3d205c7fd897b9a3183c45b1ab48f1cdde160b1790259"
    "zh-TW"
  end
  language "zh" do
    sha256 "9c12e9ab1ff93dc03a536351d8850001fbfee96fe9a65988afaf06939382a7ad"
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
