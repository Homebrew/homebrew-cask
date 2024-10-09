cask "firefox@beta" do
  version "132.0b5"

  language "cs" do
    sha256 "141f0e032d459284b27d4b11f0268fdef32c4482268c932b026903f2f22e71f5"
    "cs"
  end
  language "de" do
    sha256 "e6bc20997102b0e560318cec20e240ee747bc95ea198a5771e45f1662ee5b82c"
    "de"
  end
  language "en-CA" do
    sha256 "ee2aad7bab7eda83ba5a34c728dd2c07cb5dc235f6235612f0089bf7fe7092a2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "73870412424de7ef101b551378d2fd1130802ada3b53852c829384430fd3cc86"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3aab9a76096c7c9e2a7aaab9e7932384d11aae4de7a84c8e01da99e3c1657f59"
    "en-US"
  end
  language "es-AR" do
    sha256 "21329ca86ab1e0c157496075e6ac076c3741f5f42fee8db3a40996e69f21fbbd"
    "es-AR"
  end
  language "es-CL" do
    sha256 "7b42caac7b173d084358fa1e398d7a1cc65d2e27ac4b50a075a0571922ba556b"
    "es-CL"
  end
  language "es-ES" do
    sha256 "efbbcc3a8bee3392fcdf185d8795c971b2bd5e7acd130e8163bde1c3bae2729d"
    "es-ES"
  end
  language "fi" do
    sha256 "e8fff328800c5963e1d9fabd20bc130dfc9790a858a5d1fbb7a8158a5f26cd91"
    "fi"
  end
  language "fr" do
    sha256 "ec0b5f57eecf3def9dc0f10d0b3b479cad2f73ada1d2637c81ab2c8fff35eaef"
    "fr"
  end
  language "gl" do
    sha256 "b04cd751a0d6d2119f3359ffdeda25e405f557fe2873138f0c1890b313c7b623"
    "gl"
  end
  language "in" do
    sha256 "316f404fde6b748e24d757fb2bae27126ed039e3b949bc0a9d1cd293e5b06abc"
    "hi-IN"
  end
  language "it" do
    sha256 "f4811d8c3ed9cfc1e1b7ac022a3d368e7a349c3a85a975f44417808681221fff"
    "it"
  end
  language "ja" do
    sha256 "eb707567375cdae8347963a2c554f83b9abe20c0ff8fcab014878f45847d59c1"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "3cb4ca40e2763c73c4dbc0600b037646271c4a1f4332d1d17856e736936c9cde"
    "nl"
  end
  language "pl" do
    sha256 "ca31245269b0627a335e3c13799f8dc5afd97eb639a86af52836a5ca80386e1a"
    "pl"
  end
  language "pt-BR" do
    sha256 "dbc3efbad8fec9d3a330258b67be7ec97af55375bd0646d169e328d5bd3b68af"
    "pt-BR"
  end
  language "pt" do
    sha256 "3e2881259cdb0a9976925e00d804d99c84b8f4085870df23680cf1ba90dacefb"
    "pt-PT"
  end
  language "ru" do
    sha256 "0d90e4457db3e853c39a69441695d4f2c8c90ed31a7b0b983551fb000f8863e3"
    "ru"
  end
  language "uk" do
    sha256 "520bbac280cee337fbe142d279dbf85dee5c984f04fa468f1093403eab56ff23"
    "uk"
  end
  language "zh-TW" do
    sha256 "4be0d047ecda3c8068b8110ab78a6328f459cc4ca9ae7e8ba5daa4333a0e511e"
    "zh-TW"
  end
  language "zh" do
    sha256 "5c1b322570f0cac6f0efe6124b820f3dd21100e5556b02aaca91eb673ecb6ded"
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
