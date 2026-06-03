cask "firefox@beta" do
  version "152.0b7"

  language "cs" do
    sha256 "bb248e3a4d07f75e1ce3c074f1dd1bbb9d053fe40ab705a0dd586f2a26b7f2df"
    "cs"
  end
  language "de" do
    sha256 "77f4413f4a9a95d29cacf2d357a83bcb220ee4996769497fd86ad5a6d19fbc71"
    "de"
  end
  language "en-CA" do
    sha256 "361c2522392fc769c33bdd64fa4acecd213208c26b6cc87bfb82fddeb1ebe119"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ba2ac36af730d1f2af8669f5ee11fee46fbb245fd3b0436ce4182cabc7c9c4b1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "47f2d377abd82ff2ae9cd557996f6194ca92637c666565c1802760d1b6c14c5f"
    "en-US"
  end
  language "es-AR" do
    sha256 "2c5b349be1abecaedb5163a7d35ab2378ed49fb18b878701cf5d280973ebf4f8"
    "es-AR"
  end
  language "es-CL" do
    sha256 "021c749d5a2d77b52e0e94b56cdad0c4e08d5e36d47dc1f94d546eb796e67d96"
    "es-CL"
  end
  language "es-ES" do
    sha256 "e29effce7d57244ed64a1a630c0e10af0624992e0bb63859e547be4b8d1ef154"
    "es-ES"
  end
  language "fi" do
    sha256 "8884e24bde2ad30a953163b26f05b0aef158a368d3b9cc1b0e86255ef7f599a7"
    "fi"
  end
  language "fr" do
    sha256 "63df3a7460cdcd4e5ad562783cebacc29db82777f1a5b2964387e4db405807cc"
    "fr"
  end
  language "gl" do
    sha256 "746249ea0593f7b1d9e31f210e199a51f0a495dc913a6fe5e95f4c24e5ce0bc6"
    "gl"
  end
  language "in" do
    sha256 "35fbfc4f899014fabe8a13fc57f6568a86d7bd654fc3aac4c8ddf77546de4225"
    "hi-IN"
  end
  language "it" do
    sha256 "1e11b0e0838fbf576810f9285a274bba4a105ada0167a1f41f0588c42d67e1c1"
    "it"
  end
  language "ja" do
    sha256 "8cfeb2f988c8dde2a68771377a82f62aa4ba0d6e4b78df1cd93d3072607eea5b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "cb5686710380697571b25fe5e7c82a7b930e36082a3061ca4e8ffc9431b18316"
    "nl"
  end
  language "pl" do
    sha256 "7ad47f566535376c4a7c16a777fab274e3d700cf6802689bab6835dbaaadf542"
    "pl"
  end
  language "pt-BR" do
    sha256 "3d1454d6a9e8dc4786c1e3792327ea6d6516371f2c6dd213fa1055d5ae96a652"
    "pt-BR"
  end
  language "pt" do
    sha256 "9213380d9e5da277b475737441bd0c0564e1bf08daec6cf819d22f98b6313066"
    "pt-PT"
  end
  language "ru" do
    sha256 "a35ca44c80f23fbc0f3d840fd155efd647392d745c9e9c7311f841434d1f09cc"
    "ru"
  end
  language "uk" do
    sha256 "0f93ccc43872882e47147fc2489083f93cf464e4f1e6b6cec23005a033fc2227"
    "uk"
  end
  language "zh-TW" do
    sha256 "ace5cb901c4da89de430cd52fadd4eff1956afa4c9c79eb3f6e18e88c61f5da8"
    "zh-TW"
  end
  language "zh" do
    sha256 "615cf47e496836a0745eb04660b4ad7afe229e5d50093ced5acd0b41bf78106f"
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
