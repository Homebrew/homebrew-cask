cask "firefox@beta" do
  version "133.0b9"

  language "cs" do
    sha256 "9eb5bb76dc5acc0f863fd96456bbfd789df222c3bd6f1f8ca732a4870a480cbc"
    "cs"
  end
  language "de" do
    sha256 "2619da02fe970021789e04be901115b13912a867115881294de444a26db91527"
    "de"
  end
  language "en-CA" do
    sha256 "2be34ef3cdba9fdcfc72937539998eaa784f47a1b322e7d85a91ee098f381913"
    "en-CA"
  end
  language "en-GB" do
    sha256 "768499398b22c962c8faa7b25cd5bf0c8730bc683fb884988a6b40b15391f4bd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0eb0fabe9216dc80c2ca403dd2eba935d71f2bdc1dea1d1cc37f03666ef094d1"
    "en-US"
  end
  language "es-AR" do
    sha256 "055f992f325b77a86545c8e0436247395aa81508b5172ed89e4d2fb45d0ec6c4"
    "es-AR"
  end
  language "es-CL" do
    sha256 "cc4f8715b8a1d62d2096374a0ff979ff8ad6e01edfc86055f6fb857933bfd696"
    "es-CL"
  end
  language "es-ES" do
    sha256 "bd8c2c9ae09bb874771f3fe1153b658c1461006a45b29db528655c4d2ce60e46"
    "es-ES"
  end
  language "fi" do
    sha256 "7efcbef2b67e49f938805c2c9f7a0482cf0958199bd75460eb5e1bf4e1bbca64"
    "fi"
  end
  language "fr" do
    sha256 "882bb9f1718f64db3fa45272c833b3f9349fc721048287d0dc4cdffc1f26b66f"
    "fr"
  end
  language "gl" do
    sha256 "1b6cc20392208eca4dd7c72981278eeb3a0911b0c8d6b068be4044d0fd486835"
    "gl"
  end
  language "in" do
    sha256 "4ac8d63bf853f883100154d2be6a0c3c71b2a1f86ac701cd2d267f4f3217aa7d"
    "hi-IN"
  end
  language "it" do
    sha256 "5ebdecb6b6043e723ea36641b27c05ec147b8b5b816c70eb31f2504b02e5f05c"
    "it"
  end
  language "ja" do
    sha256 "c268fb47f9d57f20f23194c88de6ad05bbebb2f968ceb03b6f4882dbeae490fe"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "04b86bf03ee47d4ab56bf62910fbda322f670ac741580d41dc5066a88109c25e"
    "nl"
  end
  language "pl" do
    sha256 "a15ecaad7387fd0869d6c5b5607c603cab3b8bc4875deabe5738bd76b89074a8"
    "pl"
  end
  language "pt-BR" do
    sha256 "e69c4adf0df3ccb9f16078c1721fac8c14ceea0d86f658f17b797fa260764ed8"
    "pt-BR"
  end
  language "pt" do
    sha256 "3feac848d5e1d7d9b4483985aaa56a3954ca9d030b5f12c96cd184c8e92c0ce6"
    "pt-PT"
  end
  language "ru" do
    sha256 "15a26bfc2a9ecf6b169d25ec4656e5469e97dd356cc2a0c3761e7c716a731551"
    "ru"
  end
  language "uk" do
    sha256 "0bded70e80d4f5dbb16922b5430bb5f7253f4d4c77b442e1624dfd84011e9f2a"
    "uk"
  end
  language "zh-TW" do
    sha256 "357b58d2be93be8da112bde69f7566320d6b0ce2a327730262bf5ab4b83c4882"
    "zh-TW"
  end
  language "zh" do
    sha256 "80f014f39b256c768e837c5d397b327a8feca8db8c51c60c7b2ee6cbd7e867a7"
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
