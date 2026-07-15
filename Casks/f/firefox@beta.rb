cask "firefox@beta" do
  version "153.0b13"

  language "cs" do
    sha256 "ca8421f146c5a0b8774b071baa6292326a624ab859b9b4034af5f0f59ac3a6cd"
    "cs"
  end
  language "de" do
    sha256 "a2f5859a637d24c5882ce332fcf8b4b9a9641eaf4e71161327c810f2667073c4"
    "de"
  end
  language "en-CA" do
    sha256 "9715e17393a4584d8663dcc613842b1d15f25d9b41885ab7335855e123a426a3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "245d39f1e9b0f9b50042025c0686b207fb4cd6e322d0f8c7b2f42e753a184585"
    "en-GB"
  end
  language "en", default: true do
    sha256 "eb758524b94c1266f4195419b135c78af503874043ae59cc0d6cafa13234b1ad"
    "en-US"
  end
  language "es-AR" do
    sha256 "0a6e9afcb8e2f8c8e0e326f457ab66670fad0f08523d9d92783e1f6a932415bc"
    "es-AR"
  end
  language "es-CL" do
    sha256 "a8c23fec5feca02737e13e1c8726bb5eae2195a021e9c731476db4bef7146f8d"
    "es-CL"
  end
  language "es-ES" do
    sha256 "638126fcb574feb393f8a5096f20aec75d637e1d275c3238963131488820e8cb"
    "es-ES"
  end
  language "fi" do
    sha256 "461e7d9628379fa8d0ae18313137e5760a39a91de990a69dc78a294ddb7c8eed"
    "fi"
  end
  language "fr" do
    sha256 "5dc414320f08983ff909896850e6c10af1456ab643d0aabc7f2e5f80fbc1a3fb"
    "fr"
  end
  language "gl" do
    sha256 "e83eb2f1ded614d9cf1fc879733ad7ba4f95bd07e470f8cbaf4cd22ed5b4900c"
    "gl"
  end
  language "in" do
    sha256 "4cc8a2db487dc4b5b1fd81b180eff2afea91983f7ceb0b22a5a0c47df3490e43"
    "hi-IN"
  end
  language "it" do
    sha256 "041b6d708fe176084b6c79dad22add6d72367f97421b3122881fcc457cfa54e0"
    "it"
  end
  language "ja" do
    sha256 "8269ef205294b498735eb7b6e7d13e2aee890b4c443aea142762f126361b7c4c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "0b418363a173bcacd84fe7de9d899bd04f3f44ed23c3c9e650648e9509968710"
    "nl"
  end
  language "pl" do
    sha256 "adfb2ce13886cc1da79160d442cb31c02345d6b294fbc0b1585abfdcf7a8e529"
    "pl"
  end
  language "pt-BR" do
    sha256 "c17b759fa40906f7f79a9f7e50fa4dd4c1b84e870a669bd50f13b54803b4d5af"
    "pt-BR"
  end
  language "pt" do
    sha256 "1ba63a1251d910431306bb1aa5b435c72fc097fc7afcbb2bbd7b3efc05eca437"
    "pt-PT"
  end
  language "ru" do
    sha256 "966c74f2ad9ffbd0986943fcfcf6415dfab3c63f85bbb7bf1a4847343e6642e5"
    "ru"
  end
  language "uk" do
    sha256 "6be0a4867bc3dbfa1fe8ebe3acdee518b98cab12dfb29e58aa8f60b0a8efc6da"
    "uk"
  end
  language "zh-TW" do
    sha256 "7b07487903b6cac9607c044d4f8e276dfb9ced1cfd51857d5d450d2dda2752ab"
    "zh-TW"
  end
  language "zh" do
    sha256 "958db1730109c74a913268775ec786e68e010f0163d4e96d8d9e7e9b20da7fd5"
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
