cask "firefox@developer-edition" do
  version "132.0b5"

  language "ca" do
    sha256 "a961be11d6a6164ea5aaa1c6368bbad753fdabbb295cc72309c732c45c1ea01f"
    "ca"
  end
  language "cs" do
    sha256 "3a1ccdb731a126ff5e00f320b70b256701a2e52a73b7f4212dd2e387105f35fa"
    "cs"
  end
  language "de" do
    sha256 "7f96fbfb5f360ebd8067f16accab0dfdc173ebf31e4de0cbf0fd634b759f436e"
    "de"
  end
  language "en-CA" do
    sha256 "20cfc6cbd6aa1a318b1962a2645b4ef3801608a8aee8e722582a220a1c25798b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d9797729d8b81593283074654495b0daf3907b587d76ddd107cc489aaaa8a7fa"
    "en-GB"
  end
  language "en", default: true do
    sha256 "68f773b6e0a2f93777ccea8cf980d7e1b2ad0e061f289d903a4f7487da5335b1"
    "en-US"
  end
  language "es" do
    sha256 "d4eddddad612ee68e88b5da05811829a0b987eb555108ae7ff1d5fe50b20caf8"
    "es-ES"
  end
  language "fr" do
    sha256 "31838e18c4390079822448686a298056f84124b823a0d77aad9a10084eb82090"
    "fr"
  end
  language "it" do
    sha256 "12773ddac7a40a3eef57dc7568eed5c1f01d04d020412c3769bb30e00a3e8d5b"
    "it"
  end
  language "nl" do
    sha256 "8a87f375c5b31274001f8c07023e9ef8b5e0803198f0923fbbefd69c69750885"
    "nl"
  end
  language "ja" do
    sha256 "ebfff2dc18f3c7ce9334dc50622c97220111c0ed55964a511f5145a260423a49"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "aefb6947284091910587f9e3528df6d55694edcddb5fdc199a223c37c22f8dd1"
    "pt-BR"
  end
  language "ko" do
    sha256 "bed964a2dbd453ca0f81cadd594fa53d13287826f4199d2f37ad4f115cf17088"
    "ko"
  end
  language "ru" do
    sha256 "515a355fddb321f1ad3d132c772c11392c59ba264d89bb92cf5385ad32ffe317"
    "ru"
  end
  language "uk" do
    sha256 "797113c5a688b9417ec9f8002f695afa19fe092dfb61f83e7e1121a815f68287"
    "uk"
  end
  language "zh-TW" do
    sha256 "e2372f43f65622ac6cb0e2c6d1a802de444c772c3ae69fbf3cf4a96745f64b33"
    "zh-TW"
  end
  language "zh" do
    sha256 "57be2f4b27663ea67cfdc4dc9e1ce4744be54d4dc4c6f454faeddef3c2d4beb3"
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
  depends_on macos: ">= :catalina"

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
