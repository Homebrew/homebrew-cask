cask "firefox@beta" do
  version "153.0b6"

  language "cs" do
    sha256 "59b8209cd0a3d53e652735a6dea97e90b01cbc3141fbfc0f0e081c76d8118ee7"
    "cs"
  end
  language "de" do
    sha256 "b1638d8ebb4a3c9aaf0bb96872815c7a9b1789612fd2a00a02ff1e2943cb9655"
    "de"
  end
  language "en-CA" do
    sha256 "164ea0e2948287896d3dd8e1100d249cd87e3ab360414239652ce65b42d61f26"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7ba019f82fb5a18371a8cdaabd439a8740116de426b423ca72466f40b9714a30"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6f7be1d3d224e7b9447b4c58ab441bd2d81337afb6636aa40d840e57d74e3d2e"
    "en-US"
  end
  language "es-AR" do
    sha256 "25e6d5906b7762357a532a98332ab2426ede334b300628e7db6dc941ebb553bc"
    "es-AR"
  end
  language "es-CL" do
    sha256 "01e596ad7323e182bb925384571f362215b78cba55f00f9e034a5fca833c6f33"
    "es-CL"
  end
  language "es-ES" do
    sha256 "bce6f7ff152736f103557d52440db6d1653978148344b0d9b45b7469a66c0f3c"
    "es-ES"
  end
  language "fi" do
    sha256 "5637eeb0e9f7395ced19cd882055c10067455a53ebd5511bf9e62cca152e7bb1"
    "fi"
  end
  language "fr" do
    sha256 "fc0637172d1ce86cf689f80f550253b6b7df35b29083fbc7a66c78f7c54b550a"
    "fr"
  end
  language "gl" do
    sha256 "f774899856406fb2c74c6086be2ac73de7feca086616971dc423f1e098c18092"
    "gl"
  end
  language "in" do
    sha256 "fa589a5790567eeefb27e940c070bcaf006ff376449b84922ae53432ec4582bf"
    "hi-IN"
  end
  language "it" do
    sha256 "e3fbeeafeb517bcbfb02e208313f58ca699c0b4fd82e75effcbb0178c4711336"
    "it"
  end
  language "ja" do
    sha256 "1f6838af0cbdae7cdc20c5447e1cb1b21656cbbbcffaef52554e777f0c0bf079"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "73adeef2da8f6f31ddfb3fbc3735947f2fd82ab0148d3d7428eddc18cac7dacf"
    "nl"
  end
  language "pl" do
    sha256 "ef1eaa3e934c3a3216ddc0e899cb13746da619c4aada02d9bb7d272fba386c1b"
    "pl"
  end
  language "pt-BR" do
    sha256 "1e0c4eb7e43607ecb55bd6950573d411e2ae9ce9ff6bcbe29cd37ca1d1847d4a"
    "pt-BR"
  end
  language "pt" do
    sha256 "7ae3f500b81c4a7dc27a82c2228fdc7df73d3e55755d4b6655a7958f60b558df"
    "pt-PT"
  end
  language "ru" do
    sha256 "b58690105ed8b8e7ea700977be42a9429795f936a08ab6aee3e62da10fa007cb"
    "ru"
  end
  language "uk" do
    sha256 "0515a80aee38ef8b974c56cd9e2569770eee7c5f764ffcf0165743e4c90478f2"
    "uk"
  end
  language "zh-TW" do
    sha256 "d8b845c6f1ee83647fe063df9e922d97dcd706ef5a6375d18f4a960d56245cb7"
    "zh-TW"
  end
  language "zh" do
    sha256 "1f607d23f718c1ba123ef76ce7a10072de675a3e57e0a0f251767a4b5644d6f4"
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
