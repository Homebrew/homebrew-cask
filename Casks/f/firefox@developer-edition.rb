cask "firefox@developer-edition" do
  version "157.0b3"

  language "ca" do
    sha256 "1bb01257897459c4a9fe865f35c45520b0a6d295e756568e9ce2182397432dd1"
    "ca"
  end
  language "cs" do
    sha256 "18515e47611bff7cc1c79fb7d8c59cbf6b341020bae540fde30c5a6b180ddf8d"
    "cs"
  end
  language "de" do
    sha256 "65bb99ba6a75b3e3c1115798ee009fff56b18aceea4fa580663612b5bc3b23e2"
    "de"
  end
  language "en-CA" do
    sha256 "bb3c013d1042e01fe6bcf8540b378c694ce5693e13632f73d1caad217a12cc9f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1ec1e307bd18e9a2f07409e3678f908c47cc889cbc15bd203b39f42e3ad8eea5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8b152c95df6c11e931273bd32a6e94991066fa4e90eea72a1e82c5f859b83871"
    "en-US"
  end
  language "es" do
    sha256 "83aa7778b940c0f8a9997c54966e65b863e097b2ff9701fc91da9582fc8625ab"
    "es-ES"
  end
  language "fr" do
    sha256 "4f9baef4afeaeaed2612895e423df08201bc3a6c9b8fe5d79972319d0781fc21"
    "fr"
  end
  language "it" do
    sha256 "3bc312cd90118acaa66ba54ad1d3570ea528ba4ab47e409e49b84127f2d74644"
    "it"
  end
  language "ja" do
    sha256 "aeed041c2d884c7e52616519ec042f34549ee2c6f816861fcd7516a04d76e915"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d68e33b9c53d4dc15f620484520d92e1317691bab7fdedff11c5bb2ac49b8fd0"
    "ko"
  end
  language "nl" do
    sha256 "0ff4a0581eb2090d1f30d5415e96b8ca9ecdff2479af8291339a79f97f8e6cb9"
    "nl"
  end
  language "pt-BR" do
    sha256 "c4c6bed39d961470813bec709d0dcc87be6b8d9e6dd26cc81a803750d2a8a86b"
    "pt-BR"
  end
  language "ru" do
    sha256 "6ed888f00d6345688d50de53aec4b1c6a2fd62a7c335eeb4b4214c5be63ae27d"
    "ru"
  end
  language "uk" do
    sha256 "bba5cb88106b8e247bc760cd862292127fd8fee88f4269b0107feca6b3bcbc3d"
    "uk"
  end
  language "zh-TW" do
    sha256 "2a5eb737b38f55422c984087be8298f8de9b8c715dec402a73ceac3f6c73497f"
    "zh-TW"
  end
  language "zh" do
    sha256 "531b498b4b8431a660a3c11c38a78996cbd2eb4239b8ada4ea8e28b96e9ef414"
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
