cask "firefox@beta" do
  version "133.0b6"

  language "cs" do
    sha256 "353334cd140c9c4dcebda5a4228ec8468f52aa4818cb73d979fd86164c89f4dd"
    "cs"
  end
  language "de" do
    sha256 "47ae1c36d4c6bdca110dcd40de48b28ba4def8f74ffdb9399b3f30eabdd10088"
    "de"
  end
  language "en-CA" do
    sha256 "e0aab3fb6e487377339820309168ee8d08e1acb722bd8a4ee12b002e7f51d2e2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "022043f973f898f770bc554c181d9c5aac4ccbdd9c5d3ef2a6141fe3926a61c1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a6be00e4471d07eefc149a73e564232f2051fa8a39c1e12385550c8822f128b5"
    "en-US"
  end
  language "es-AR" do
    sha256 "525210de853de1be069e71a5560173f98d5df6c3d0406c966fa54b6e35575225"
    "es-AR"
  end
  language "es-CL" do
    sha256 "49d19cbd8158a54bc44206465e04def75bc6410c7f828828ed84b0be50fb72ea"
    "es-CL"
  end
  language "es-ES" do
    sha256 "b4328980e2ae2b39a86757a10c2cd95f326a624f46cec99ffffbf1cea7d83a24"
    "es-ES"
  end
  language "fi" do
    sha256 "bf9b0eaf47470a24dacd5ec2adbcb075491df2da3159a1928c74c2c00c4fe7a5"
    "fi"
  end
  language "fr" do
    sha256 "26e4818e0ee2e1c06d9352a7c265eb663b9cb3547312ba22c478bc72b40745d1"
    "fr"
  end
  language "gl" do
    sha256 "b6407ed1e929c8714df6d0817340e861729012069c3da81f3fcb4cc1843fcb77"
    "gl"
  end
  language "in" do
    sha256 "715f293345d7902d1056c1da1741893aa8edbf7caca9bc9f09dc9a230fec07f2"
    "hi-IN"
  end
  language "it" do
    sha256 "ffa0308daa5099047561e135c76308add34d0b895644dd9cae4161253f5baca5"
    "it"
  end
  language "ja" do
    sha256 "e85c2433958c6f8d1193d80aa556500d4ccc20eb5b0f583eaa75fe50a63c6a7e"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "bf4e5d42e9d022ce442ca418f9b2537dd1958b5d437d743b07ede3439c5e9ece"
    "nl"
  end
  language "pl" do
    sha256 "b657ae60abf5f4a00ace2d3c497c7ac9807980742bdb60c874fc4b37e76303bc"
    "pl"
  end
  language "pt-BR" do
    sha256 "2d9c6b22aadee7883e2f50d40bb6ac7250ae3c5a598506c7ae412d6589321761"
    "pt-BR"
  end
  language "pt" do
    sha256 "63418c75f3f938ba95b0ac5503afb1cc6d24e0003e717008dcd9523c5a6ae87f"
    "pt-PT"
  end
  language "ru" do
    sha256 "617172d5a8ccbcf3eea6aac842b429ed61481a079e251b177bdf52053d49706a"
    "ru"
  end
  language "uk" do
    sha256 "632376230155bda1b047f3e77673fa747b3dea0a9db5d342bccf0dd25334a6cd"
    "uk"
  end
  language "zh-TW" do
    sha256 "6d3274d8e220d69534801ac31bc2cbcc6962bb849d90809abf6d0692a5461b2d"
    "zh-TW"
  end
  language "zh" do
    sha256 "db9807ecc3fbde804e149e2604f7dfe052ffe547b9dc8a76c625a8260e6b930c"
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
