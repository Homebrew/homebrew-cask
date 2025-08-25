cask "firefox@developer-edition" do
  version "143.0b4"

  language "ca" do
    sha256 "0290f8b2d1b4881e1aac82a8b95ef7ae8fcef6ca7cd46a5874716c9d36a0abe2"
    "ca"
  end
  language "cs" do
    sha256 "638b3964283ea275af1d262f73d3d19242bbe770358df1e04bfc1cc8af3b362b"
    "cs"
  end
  language "de" do
    sha256 "4b28bd9ad35062e6d1548b12af1bed41b412d7a0e0afae5a6eb767812adc56fd"
    "de"
  end
  language "en-CA" do
    sha256 "93b653352d8f9a0c2eb43dc92bd1ccf2bc9934e46c5250f0c1c5d084e3156de0"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3e8756c1ab98f0b90eea77d52e88dce2f890ae9075e0bf26febd8a094a66a44f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f37193bc9434105a2ece86f8d372d92ae03cbb0538b869aa1d584fbdcf052843"
    "en-US"
  end
  language "es" do
    sha256 "15c107005067e74c0dbd6fe61109018811851f2b46256b92936cfadb758d7828"
    "es-ES"
  end
  language "fr" do
    sha256 "fcffb6df945924940dc859af42c45ba7e35293c419aae48cf2565ef4aa99729e"
    "fr"
  end
  language "it" do
    sha256 "e3826cbedac2cefbd8ba3d74d20887fc61ed5aad813170470742d54d5d2cbfe2"
    "it"
  end
  language "ja" do
    sha256 "e73e0076c056f76166867dd67158c30a77882c5ce8434534317c816487700199"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4e21ea7625f432f7c3936d231f4912918dcf257a5f66ce5094820590db85be12"
    "ko"
  end
  language "nl" do
    sha256 "fc37dfa3eda44dd6317ff4543f2b79f30d0129a9120da3c301a851afe5941db8"
    "nl"
  end
  language "pt-BR" do
    sha256 "6b43df2c527ea58b19a916d318edad508d07195049d3d31249046d52b5a2c0c3"
    "pt-BR"
  end
  language "ru" do
    sha256 "02af23c01ec0ccf2ada182b06ebf5dd69a42399467f52210524fe0a446f1ad23"
    "ru"
  end
  language "uk" do
    sha256 "a61a2b84c64b1ac4c8e38820f0b46eb9a568bf799b8d40525c9331ff1a02acc9"
    "uk"
  end
  language "zh-TW" do
    sha256 "00d4407d4147efd2d91d62e392a8a5f2fb4e5682eda523ec74809722af69bfa0"
    "zh-TW"
  end
  language "zh" do
    sha256 "64d1383d4e8677bf51e6195cfc681589a9f2db86c9b747ed788949be7f74a89b"
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
