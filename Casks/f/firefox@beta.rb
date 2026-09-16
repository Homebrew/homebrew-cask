cask "firefox@beta" do
  version "157.0b2"

  language "cs" do
    sha256 "fe9cdf1139ccc3627a50cffef314846ad67af5a4f2666386a096545a51ef9a5d"
    "cs"
  end
  language "de" do
    sha256 "bf21caead11c04df9addfe3734f1918d9a043e0776b7db054be16f1f370c0edc"
    "de"
  end
  language "en-CA" do
    sha256 "ee6df19f8c24c6b7f973ff9ef0005f64abe37ffe5b03242a98972baf5ace5fa2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "98c8fa36373565ee60372b83fbf03112dc2df8722a2129ed97588af86e467a5e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b828cf871e55ca9a581ded630083903b24509338ea2fe9d3ef13f294db6679d5"
    "en-US"
  end
  language "es-AR" do
    sha256 "9e1148c80ee9ead8e4488124da4d78f833c4b82afd0cada88152270c2e7ddaf0"
    "es-AR"
  end
  language "es-CL" do
    sha256 "a00803343ef267e201715ce44bc11c919df3ef3d1799c68daece768cb266b4a8"
    "es-CL"
  end
  language "es-ES" do
    sha256 "1f35175a52710e99e5b666e517b623047c6c6b418dbb4ad3c9b3091e55a1273d"
    "es-ES"
  end
  language "fi" do
    sha256 "3169e53df0802fc6cd576816ecc87ffb0f0626745ab41c0a8d4b4e32b0e1ed76"
    "fi"
  end
  language "fr" do
    sha256 "9a5bf29f7866b10a60f8676a390cd8e36e909f0c406abc27620209e0be5f1181"
    "fr"
  end
  language "gl" do
    sha256 "bc00a344e00562224cd34893ee707dabbedf5d1e49e52a918f85d5e72de40ad9"
    "gl"
  end
  language "in" do
    sha256 "bd18b6886b14c814815a3f3406038662d5ddefb62fdac1834ea21c6ee5f2eabf"
    "hi-IN"
  end
  language "it" do
    sha256 "017c0dd11ddfc3fe462ffaf3f24c25e7777df8a34497945225ae79c58ad5f6f2"
    "it"
  end
  language "ja" do
    sha256 "7489401fc9eab091edad5262829fb48ca5350f7dbefa3b1b045389c1cf596613"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "14bf0b6a20b6c5a4f612d640c4da4197760286436041f9677fe5fb376ea8d90c"
    "nl"
  end
  language "pl" do
    sha256 "503cd2924992a535d141eca8b950582c5a0dcb94f6af1266922bb4096fe7d912"
    "pl"
  end
  language "pt-BR" do
    sha256 "cc6f611ec76fdb5f74ee854b70a2d64a18d16d888b0d537505988096989dc00d"
    "pt-BR"
  end
  language "pt" do
    sha256 "596128f18acc72eea14dc142005f3b376e837b4be29522bca328114824725f73"
    "pt-PT"
  end
  language "ru" do
    sha256 "5dabadcb4c76c9b020f5428276755ac9021fd45d701099163965f780df78202e"
    "ru"
  end
  language "uk" do
    sha256 "1fdf8df0965e31e7ff20587b5080dc58c4e27ea4f91a0b14f13366cf74912304"
    "uk"
  end
  language "zh-TW" do
    sha256 "4369d51c01b4cdc982b0ca11a55eb83980220a46d11d2cccdb53929eac0b4905"
    "zh-TW"
  end
  language "zh" do
    sha256 "f209d75a202db7a7f446c2a68753c72b3e663734323072fee9d8ba8b2ba8de82"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
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
