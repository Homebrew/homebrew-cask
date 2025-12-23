cask "firefox@beta" do
  version "147.0b7"

  language "cs" do
    sha256 "0e410fa2484a960c4c917e95b5198150c317ed42da3fe74c8fcb911ec85caabb"
    "cs"
  end
  language "de" do
    sha256 "de28af306e2e6760ae17b668c2f7be3ced885c2d32ac0cec9942384cb0788da2"
    "de"
  end
  language "en-CA" do
    sha256 "ebf90b1b46a960c7c1189f102b196beb81183da72561ccf9f9212514f4b194e8"
    "en-CA"
  end
  language "en-GB" do
    sha256 "22d1e0dd0552622f93d890fdcce5a8c0131b8a7d7fb0887aa960ccb6f7ca2c63"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e7f17f0416e0302b065aaa910071d43e84b1f569c7c225d21cadc23424d5ffc6"
    "en-US"
  end
  language "es-AR" do
    sha256 "a70420a59dd8ebd7bb1bf1585ee787383ff2ba881ca5f30421fabeacfac6a22e"
    "es-AR"
  end
  language "es-CL" do
    sha256 "e9ed0c9fc5465ab30dbd7d0070b2240a22b391fd684e4f94149e003453ab3f6c"
    "es-CL"
  end
  language "es-ES" do
    sha256 "f4f069be5f466f4a48c91c0349008dd921f7a1e5aad6149986d40d582609641d"
    "es-ES"
  end
  language "fi" do
    sha256 "f421a4e13d22881606bbfdeef8b57dd8932597deddf8b069bde69d4fa94b7446"
    "fi"
  end
  language "fr" do
    sha256 "1e93d4bb3d4a94aadfcb0cf656aed08ed788a69227c75e6df705a54806327249"
    "fr"
  end
  language "gl" do
    sha256 "a70e2259350388a00c45b94a65579f344484026057547bc50673ddd9af3c06a4"
    "gl"
  end
  language "in" do
    sha256 "e59f8c3f0d97da85bf639965a9073716ee7e6e12db1d0f23c7d96463401d7b6e"
    "hi-IN"
  end
  language "it" do
    sha256 "1a08e39575972b0f048ae17de0a1355ffd8b479ebe15384534533e7718a5f925"
    "it"
  end
  language "ja" do
    sha256 "5845600fec09391e71f6d592000cc05145dcdb86fb0d253f34ce3bb6a4005b3d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "98a33d75d402c757235698e690c4c2154b41132eeaa40468be5d9daf44e7ff85"
    "nl"
  end
  language "pl" do
    sha256 "f34ee173e671375dda169f43e22485dd22ec5e11d6ec6491b19e41b9c7368114"
    "pl"
  end
  language "pt-BR" do
    sha256 "5e99f3bf9b1151a364248162272abde533abe24eb905d5b9f5e49246b0763769"
    "pt-BR"
  end
  language "pt" do
    sha256 "a3ccc8c644fca8a6cf47c5526a3e20059d8ef4a9fdaef3917c01dda0fccbc91f"
    "pt-PT"
  end
  language "ru" do
    sha256 "95683000f516fb25db28e6dcc57d0a0b63f0381f32ca006b6b804823df41927d"
    "ru"
  end
  language "uk" do
    sha256 "28641e12f1dd07f961acc3c1118dce44f0a7a0a7b40f059855b93db376bc27e2"
    "uk"
  end
  language "zh-TW" do
    sha256 "8b63ec47fb741813566799a89ff323877f3365197a5b51d3ba2e60b595cab34b"
    "zh-TW"
  end
  language "zh" do
    sha256 "9244416bb9826b7b0b60c2aa33f6090b4b067cc2342e428b3f4f072b17c4eefb"
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
