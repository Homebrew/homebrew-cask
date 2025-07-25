cask "firefox@beta" do
  version "142.0b3"

  language "cs" do
    sha256 "a1d7d75ab020014ac84285d1eca5a593ae64a272dd4dda2c3aa6421b6ec8489d"
    "cs"
  end
  language "de" do
    sha256 "4ea527461d3c8d2c7ee7bafd9c2994ffb1ddbe9dc9d99adef77a1da3e6ef5dfe"
    "de"
  end
  language "en-CA" do
    sha256 "3c1e220d9cae89c44f6787c66f835a169abebf1abfefcfdd5c0048ba21f1f42e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "9006521042da648824a9ec65f9d9e184e4f5922b925507f2201516ebda0bcaff"
    "en-GB"
  end
  language "en", default: true do
    sha256 "07105f7720966e4aa542cbf7e0c49b7b922e74dcb6e30e790e9561e0e37ecd3c"
    "en-US"
  end
  language "es-AR" do
    sha256 "0ca9c0db38c76de001911a9855ab14afef818d7be4cadd9c52a2cc43553e6053"
    "es-AR"
  end
  language "es-CL" do
    sha256 "15e2b1d4e859297efe6d250d7f6b31b3c24e5e72ab413f367a97e260968c3015"
    "es-CL"
  end
  language "es-ES" do
    sha256 "75c84e7c44e8ba1eca719310f2909d5b4905c985ac12f4e0ff8c8fc92df2d7e4"
    "es-ES"
  end
  language "fi" do
    sha256 "9e9ae04159dfcb240c006b4ced0bb26ba5b6b52faed88e7bd2ca5d08734ff0bc"
    "fi"
  end
  language "fr" do
    sha256 "3a5b882dd2c6e5141b7f3576e393169e82476c15cb6819e34761aab90440ae0d"
    "fr"
  end
  language "gl" do
    sha256 "df9311bd5cbd4df7d859a0d38486b7a92eb1ee33427943e011115bcb42ec2cb1"
    "gl"
  end
  language "in" do
    sha256 "d14518fff04920d7ceb16817d6fb58a00599383134335a4fcf62ab609787c45c"
    "hi-IN"
  end
  language "it" do
    sha256 "6ffb04418d9b59734bcc455dde6d4edd1581b7c70e6ae5f31f416516fb8ee344"
    "it"
  end
  language "ja" do
    sha256 "34fe2bef18b75db5a3ffbf2ff7192f16844d19e45eede990106392d124657b30"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e09d0b345ac99d9883e97fd97f3c4b5d19b69e385980757673b04b567da21c8a"
    "nl"
  end
  language "pl" do
    sha256 "754c4ddb7f22cd524f25f14aaad6c166abf42d4c2594b92e5a46e70d53d2f347"
    "pl"
  end
  language "pt-BR" do
    sha256 "00c6bf8a14ff894780ed5dc538bd80a575c090f02176e5e6c370608f6543da50"
    "pt-BR"
  end
  language "pt" do
    sha256 "c01b79aa1968906e600b59c2416bd38f6fd31b269a2f1c0ff8cfd29beb9a1fc4"
    "pt-PT"
  end
  language "ru" do
    sha256 "153815c8c781d2610c236b7be38c5a6bc66ad9245a03965cfd8d026cdad2146e"
    "ru"
  end
  language "uk" do
    sha256 "fddc351fb5d39e6f8f3056dbe339a2007232856c98ba0fd147d50954155e4e9e"
    "uk"
  end
  language "zh-TW" do
    sha256 "5da4f4c21d977ed46f280169b7b4da1149666f03eb88f2b7fb4b88f56c9e2ec3"
    "zh-TW"
  end
  language "zh" do
    sha256 "273073e7660d891d75f9a1db28d7bd32a6a7ebc012f3e4eaa6bd41b7814e53e9"
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
