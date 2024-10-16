cask "firefox@developer-edition" do
  version "132.0b8"

  language "ca" do
    sha256 "d86231ee8baa4f14a74deb492f54fe411a3bd334d374c2a4bc86a2bee063fa0a"
    "ca"
  end
  language "cs" do
    sha256 "45ae4eaa9f94dd8ab1c863079bf9de75279efad2f6aadfc56d27abdaf92d4d18"
    "cs"
  end
  language "de" do
    sha256 "ffd6b9f58683164bcf0d7e0d868c242e429f16454f37554a4cb7f27eb6f8dacb"
    "de"
  end
  language "en-CA" do
    sha256 "40f120fcf7c78a6e55085c7526e8371cf1b148cc4e060230f74b2b8ab72cbdd8"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6e1d600afa18d1d18d6ec5be316e98898917ac18ca7988ca55d40241761f6a0a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ea8b7efd6cdbaea9753996323f9c1df3f88da465a19b3564c19d5fe416c906ad"
    "en-US"
  end
  language "es" do
    sha256 "13a372d667450d1bf6c40dcf9b45dad9ecf119c1ddc5bbe480467a3e29a82294"
    "es-ES"
  end
  language "fr" do
    sha256 "6180830665f17b0afb32cef15af06e549c6373bf0770d38265c3c07a8e25612e"
    "fr"
  end
  language "it" do
    sha256 "d98e95fefb2503330d2563d0b0fa74e8216b89b8b6769c4c48bf23a92285c289"
    "it"
  end
  language "nl" do
    sha256 "4df9cce58921e03f5b610a96c746a8d0f32f03de5297b58fe1b2be7a92141b5e"
    "nl"
  end
  language "ja" do
    sha256 "0e69b95a71c5a45aa7acf83ae4bf23e60c9fec8d7fb18888bcd87c44f02a52c8"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "81bcfff7d540c623428349057606c24b802efa08b1fe18802b8e9582139ab409"
    "pt-BR"
  end
  language "ko" do
    sha256 "912f3b980dd9b1719bea64a9fcb490bce01e309dc27f1ff10f0dab49815ac951"
    "ko"
  end
  language "ru" do
    sha256 "dcf65a879307a9ba2c11f396299d8a60b629f148dd2eae469c2948f4df49473f"
    "ru"
  end
  language "uk" do
    sha256 "f5160f73d8d6bb75eb01274b54bfb0718ec8717de83ad401d9816b1a787d95ed"
    "uk"
  end
  language "zh-TW" do
    sha256 "ecde3088a47c16e067629674011c115d33357bceda3048980f6e62909f951c9f"
    "zh-TW"
  end
  language "zh" do
    sha256 "5d8a95991830a74cb1cf4d4e776e8d9e05659b24de53202ffb1521ded72b237f"
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
