cask "firefox@beta" do
  version "144.0b2"

  language "cs" do
    sha256 "281fb1ae93709e5adf7700ab8d9d5faea5963ee7f80da5e4ed7c2794a74fe179"
    "cs"
  end
  language "de" do
    sha256 "1867d3af5d4e7d74d8334c1a246938938b967901dbca29060253de6b58ff2182"
    "de"
  end
  language "en-CA" do
    sha256 "fc2ff0e5741a4fe06086a6fddbb6c91b0d9c882061d3c0ba816864e2d48ad158"
    "en-CA"
  end
  language "en-GB" do
    sha256 "751f1a663f708363d3355f2a266be62bd667a1a7109e7079ea139ddaaf49a17f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5b7dadba49cd0087d540bc86cceba5da39d182aff174c526d5ac33d1b6c70b7b"
    "en-US"
  end
  language "es-AR" do
    sha256 "43f5c47977adda9a4d641d69a8496b5f4abb5b4461b3b95fd4673949985dd9ef"
    "es-AR"
  end
  language "es-CL" do
    sha256 "11d38d3d80d54ae52e280999f4181e0220d0eb9262a97775b1ad6c7853056fe5"
    "es-CL"
  end
  language "es-ES" do
    sha256 "13982a10b3fa8c4ff6e8020ea88fa13422dee82fbb3546d98f7827430dd2592a"
    "es-ES"
  end
  language "fi" do
    sha256 "873c7b22e77971376e132694a77be0bf7ca2d4d77a5f57ed296f9f74b5455db7"
    "fi"
  end
  language "fr" do
    sha256 "673d95511461941302b819c46e3c7d45cf6f3a0e0a8690d0d9d10c65d71b2cf0"
    "fr"
  end
  language "gl" do
    sha256 "ec90d2fa01854a17bc8f808325cc9b6bdcf8644bbbb117ae972a5af66f31215a"
    "gl"
  end
  language "in" do
    sha256 "c05b2b06b01118b4766863e450e3570365610f19063858e9b1e7ce8ab886dedc"
    "hi-IN"
  end
  language "it" do
    sha256 "fc7c10b25e443b506c8e856228b0c24122aa4752f084b211e05fc872403dfa7a"
    "it"
  end
  language "ja" do
    sha256 "ba400e4c009eb6f50f4ea0ef8ef371b60c1bf76b52111ff036f95d65e795ed53"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "8fa9735638d8e7f460978446320b6aee72ea39c7e13ba416837df08b23fa702b"
    "nl"
  end
  language "pl" do
    sha256 "8fbed623334b3b066df8ae3023f80a5b4b0ab1a8a9458e4a26d5b494578485c9"
    "pl"
  end
  language "pt-BR" do
    sha256 "4e13418b04538f9f84f7d4c2af2d0f8dac000f1a9aa767dbd6acf732793eaf7b"
    "pt-BR"
  end
  language "pt" do
    sha256 "ca08791dd18cfb36f634463ad44aad185bbdd04d576487b43ad22000761cb124"
    "pt-PT"
  end
  language "ru" do
    sha256 "f6f920e6db98cb1209050d651f5b6418aec43cee77b9e76bdeb808365cf7844a"
    "ru"
  end
  language "uk" do
    sha256 "51240409e480261994350039db0705553d86a3565c65f7c9734875d09d33ef31"
    "uk"
  end
  language "zh-TW" do
    sha256 "45d4b3f1a528c0e911ebf7748524ab6a580e866b3a7e7bfa74b41b70ce281f34"
    "zh-TW"
  end
  language "zh" do
    sha256 "bd3003b85b05b92b3289d4d76e91023c2b6f293f488598e844dcd8c52f558710"
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
