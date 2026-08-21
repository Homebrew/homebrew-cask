cask "firefox@beta" do
  version "155.0b3"

  language "cs" do
    sha256 "6ed7ab9b6dded0a06f36cd21260af04c07213959b221a2ba9492eba220e54b9c"
    "cs"
  end
  language "de" do
    sha256 "2b116998865a8f9f37104e158f44f52a107a5fca24318ee0b491c6d044c39d43"
    "de"
  end
  language "en-CA" do
    sha256 "1cd255c8a57c3793fb27b0d48734f7f339f9c8cb95753938422389fd70c2a34e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "deb70fe62f8c314130fca4323d55fff9ef3f6e78789cc5fa749315006e3b338e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8678586a4ab16cc08591d4a8b1ccc88833588f128cd679bf9b47dbd71c6eb508"
    "en-US"
  end
  language "es-AR" do
    sha256 "cd64e7bbf60fa55440a1716d7d1f09b608b4f040b29c017f5f1f0e957ed02e22"
    "es-AR"
  end
  language "es-CL" do
    sha256 "6078b4e0b3e9378081a9fae904af07b10d21c6c370e0266e42f6b47bdbea6de7"
    "es-CL"
  end
  language "es-ES" do
    sha256 "8f55ae20b3ae664b489d0fd8aba45681440b542f2871dcdc22e0c87b03ddc25e"
    "es-ES"
  end
  language "fi" do
    sha256 "662a76c9467e642d92694a341140acc09aa08a6990effe66dfb07b4edbe26896"
    "fi"
  end
  language "fr" do
    sha256 "1397693809c8b15483ad16ca2ca5d7cdae48e3b8c6734bb529114c7160271043"
    "fr"
  end
  language "gl" do
    sha256 "da20e0c000d439eeed3f508aac8d4f3949ccec2795b2ddc24e693c4848a2242d"
    "gl"
  end
  language "in" do
    sha256 "e51676239aa190ee4ab1f1a96033784838d401de1d82c3311aadf8fee2d4850a"
    "hi-IN"
  end
  language "it" do
    sha256 "fff95e20c7097e059140fdc6e844d9781ff5d6ada3d552a4fb12742b30d111ef"
    "it"
  end
  language "ja" do
    sha256 "e8e9a640d4d24fc740a1dab7146a234e539ce4538e3a437604f37494e7302412"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "4a9ff5537d5529cd33348a0d7b0ca20999f0d0d3a13254d199033f4d3a5811e7"
    "nl"
  end
  language "pl" do
    sha256 "7ab95f84d7cd1da1dff0a772af7533d10ee0d13b804273ee23429a456a1803c5"
    "pl"
  end
  language "pt-BR" do
    sha256 "183d65f3299f393c98cd8c556f25a747355ab939189e113d2f5cef0e3d117c2f"
    "pt-BR"
  end
  language "pt" do
    sha256 "6f2fa394a4ce6b2d7678ea62c60002a0962d34396ed38fbec430b39f49e2477c"
    "pt-PT"
  end
  language "ru" do
    sha256 "207678dadf9a4a6f827debb0b95c9ff5c17468e798e141ec0ee78557c6e860d1"
    "ru"
  end
  language "uk" do
    sha256 "429c8ac804a2a37b77c336e510830da6c717bae59f3d81b6eed2d73740497a13"
    "uk"
  end
  language "zh-TW" do
    sha256 "d62efe1db22ce0477744370360d1a4e5bbbe5ab73da139f40c25b9fa7200f862"
    "zh-TW"
  end
  language "zh" do
    sha256 "b64bbcfb63dc14c78177605f00a5a5983f399f6da4199e189f84ab8cffe8df6e"
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
