cask "firefox@developer-edition" do
  version "155.0b2"

  language "ca" do
    sha256 "f877b2427615e9bd7092774705ef6bb32f0ab92351b0a2f2f6fc7985d3a6c084"
    "ca"
  end
  language "cs" do
    sha256 "3a52d74e468a8cc877a8255f64ef1c452cab762e472a78825445af5ac7d5bda0"
    "cs"
  end
  language "de" do
    sha256 "6416b1c7dc80cbd0fa5a9dfd96a8cf87d29b0c481a24ea1a4a74840c8d9f0a74"
    "de"
  end
  language "en-CA" do
    sha256 "69acef1df85b4ceedcdb8da7a87db5c02941f3f5e140542c916807f15d272749"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7860c382e7d0d3b488c22b7d15d5289f61192e1ed01f256de26028571f35f69e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f223973170b8828e28db57dfbd3aa7b6c089b01a2098c23dc6dc43542bc9dde7"
    "en-US"
  end
  language "es" do
    sha256 "d086177267636a88077acc7d6e964362b15d16f06f360a22ee3b77b610bd9cb8"
    "es-ES"
  end
  language "fr" do
    sha256 "e0dfda0957c146d88f4e378a7984c1b7123f0870b3cc61eaa4378e3228995d17"
    "fr"
  end
  language "it" do
    sha256 "319078d458ee0c992f05c5183b905ef3598238fdcb5870592d0ac4ada844bbc3"
    "it"
  end
  language "ja" do
    sha256 "cd586f6b351c4f40ce55e971de6122af8f84bce41236812a2265583e57b5a394"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "bcffb669b57b149854c80b567eca688741f5adf6fbe573ca90cabe277c2ed089"
    "ko"
  end
  language "nl" do
    sha256 "da9d5483b02a237a932382c352692b6cbe1e05a9fd513df69d8b2ed65e6d35ab"
    "nl"
  end
  language "pt-BR" do
    sha256 "3e4e526ffe9358b19f32ff5b079d17e62daaec2f6a048084fe2ec18ff7085a9b"
    "pt-BR"
  end
  language "ru" do
    sha256 "98f6bd69869ccd5b12a5998c43a129f52936840cd4411e043d01717a9bc56695"
    "ru"
  end
  language "uk" do
    sha256 "60e298b4e3673ede1d1ec54aae0d48c4b57d387e8158adb8a8c3d79d46dbb0ea"
    "uk"
  end
  language "zh-TW" do
    sha256 "0d5871abf3c1e19ba388bc520a02260c583cc422fcad36d6f5ffc676be231d18"
    "zh-TW"
  end
  language "zh" do
    sha256 "93d4a9c73ac008094ebb005160e8b1d6524f7b1d9b9fe65c68f0711116ef0b30"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/devedition/releases/"
  name "Mozilla Firefox Developer Edition"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/developer/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["FIREFOX_DEVEDITION"]
    end
  end

  auto_updates true
  depends_on :macos

  app "Firefox Developer Edition.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.firefox.plist",
        "~/Library/Preferences/org.mozilla.firefoxdeveloperedition.plist",
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
