cask "firefox@developer-edition" do
  version "142.0b7"

  language "ca" do
    sha256 "caf3cb96dcb595296eb5ba40e1e1cfbee52096fee17abb8e36ce205e0f35c2d4"
    "ca"
  end
  language "cs" do
    sha256 "42f97ecd107c14514f4d7c9ceff77f215319d4f9c4962435936353449f1fb79d"
    "cs"
  end
  language "de" do
    sha256 "31a6512748eefa05033d9b1b333b81c51e0db68d24a5321d81925b16597165b5"
    "de"
  end
  language "en-CA" do
    sha256 "42a5a0ebe4e5b42a077fb61144633b7c13de89542fe7d21e0ec5413f8f436d2d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "bd0084dbe79fb0cebdca3487e0d1b542a8083f667dd6dc4a31ed00552ca002a0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "201d8c7cc080eee65f638568919186a3d680a4c0271aede111dcd9c875e5f2a6"
    "en-US"
  end
  language "es" do
    sha256 "4cc9247acce62489720cc523dae42891845f243ac5e2f07546f0161aaeda891e"
    "es-ES"
  end
  language "fr" do
    sha256 "923daabce023f970b07cd0d468c1e618f2ca7d8f9a253741cf23085367404341"
    "fr"
  end
  language "it" do
    sha256 "f5cf1d10cf3cf4d8e4f1fcff5e49a99d6b0b158215e6cae4d0d21cc13ac5b83c"
    "it"
  end
  language "ja" do
    sha256 "f5aef4f5b049910b3b7f4ebe01c266c9d9b6650af4968da22c4098454446ad07"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c61645b5a4c323e703ef1d6cf143d3448ccbf1609978e51889620ec131ce4e91"
    "ko"
  end
  language "nl" do
    sha256 "ea77cadb2626e3239fcae6daaf3c750b39123c6dca36e21668819bda270edd62"
    "nl"
  end
  language "pt-BR" do
    sha256 "6f5fa66356144a126ac4314ad52cc5aa7dc4ac88784feb1a2b92535734f01d6d"
    "pt-BR"
  end
  language "ru" do
    sha256 "35c390ec3d2d1bc4bb77f6f5ed098d58d194f29f08145e9433a58ce1f9c34eb5"
    "ru"
  end
  language "uk" do
    sha256 "3c577777b379c197b492bc3a772cf87c0075fd682662883c593128c32a284dc0"
    "uk"
  end
  language "zh-TW" do
    sha256 "080990fa8f61adbe2f195fbb7820219303b42e8b0708705114f7e8646f716b20"
    "zh-TW"
  end
  language "zh" do
    sha256 "a6d9adf0acb1f02666020bdbd43968ad15825fd7ceb606595e01c9e8985c92e9"
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
