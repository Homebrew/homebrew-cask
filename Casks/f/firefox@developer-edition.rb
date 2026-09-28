cask "firefox@developer-edition" do
  version "158.0b1"

  language "ca" do
    sha256 "0b092f419f8266320bde67d650861110f14db4bbd54708584277b0be5228d71b"
    "ca"
  end
  language "cs" do
    sha256 "03119fe6e6d954eaeed114c433471b4eea01d6aab8be818d6106936da8664313"
    "cs"
  end
  language "de" do
    sha256 "0cc8599dd7f76126cdbb0f1a9eb8650b0d611d46da1c34fa795ccea95cbd5cf3"
    "de"
  end
  language "en-CA" do
    sha256 "0ee87bbc6ff08d1d39173b43c354e7ba19a4ad3456f5706cfa43a884bc6e6be3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "9f8d153a88b4aec42eaa17315c7cf090defcfdba509492be605db03c43e9e81e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ddaae73c03653997eed23907e4c3f10c93e643a686676211f0fd8c79ab881cf8"
    "en-US"
  end
  language "es" do
    sha256 "edcacb3bbdc26f4b8535046daa2d09b345d29ebcd27f1bb14cdde23701484086"
    "es-ES"
  end
  language "fr" do
    sha256 "5356952c780afd341c8abd8a58a85276e63fe0254e7986d52afc41b08c304bf4"
    "fr"
  end
  language "it" do
    sha256 "38ee13b9f539721a9e434b553f96f35565e117a27494a16eb8fa0904423f9591"
    "it"
  end
  language "ja" do
    sha256 "2d8ecc075cf8db824c9ec2f0e555a8c7404b8a3c7c01e249f9cec5d8ace10a8c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "1131da8d93f91509f6af4ab6755b2e586a8e9f811b1114731c42773dabc3ff55"
    "ko"
  end
  language "nl" do
    sha256 "08170edd728d5c55be7895a5eda4dd0e49e71a50c53222c7aeb6f1b77c7065ab"
    "nl"
  end
  language "pt-BR" do
    sha256 "fcc5345730fb43cbe7a855dfa920f0ef8555cbaf1b7d93f16acd916e8838a6b0"
    "pt-BR"
  end
  language "ru" do
    sha256 "4984633c60ffbc44d35f54c24e0bba946010dd13b4a78be07fbeed63b56c49e7"
    "ru"
  end
  language "uk" do
    sha256 "7f273aa4bfc87b0d22a31ec6ae153688f07a387b3a1701b70936174fc179ad78"
    "uk"
  end
  language "zh-TW" do
    sha256 "70ffb25d2fd53ded4df376b0544479764c562ad9457f29610adae8a03e0afe04"
    "zh-TW"
  end
  language "zh" do
    sha256 "03a24895876318daab5338613a5bbeb478f5d2c010108337e731b0cd8c866dfe"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
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
