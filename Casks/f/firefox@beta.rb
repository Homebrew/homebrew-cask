cask "firefox@beta" do
  version "133.0b3"

  language "cs" do
    sha256 "febf43e279e1ffb1cb3ef9a9023d10b58ce1b52246ebc91e3bd32ea0ec497b46"
    "cs"
  end
  language "de" do
    sha256 "fa26db901cba907da7d891b4f0d8724d4c7d394f76ef879490cd32b0564143d4"
    "de"
  end
  language "en-CA" do
    sha256 "5e51e46bc60bd69b9e75ab2d66b1bda04819dd2eed12e67f4dc52502879b00b7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1c154aeb5e96c8289652a4927b80473a1115bf683f8dbb0da6f0a93895280391"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f370b6a99f1a3713d2a119f47ac378b9d96220a2dc0d1675a49094f15549b958"
    "en-US"
  end
  language "es-AR" do
    sha256 "ed43339d39f48987d959e1c79dd5665a11b40e8f16f7e08305ff5fa1ead69de5"
    "es-AR"
  end
  language "es-CL" do
    sha256 "adbda48d0ad714d541a1d36b4ab414d5461445d1bc687bf6227fef4562c651f2"
    "es-CL"
  end
  language "es-ES" do
    sha256 "4fd5a3e34cea59c23a0b00f5569cecb3f52dbda4ba887c4cd560c9a5bf534e75"
    "es-ES"
  end
  language "fi" do
    sha256 "adad6be148d08ea4ea680f654634c469eb23dd2156f9bc49245fb76dfb73e6cb"
    "fi"
  end
  language "fr" do
    sha256 "5284e603158c61e915664308c9c187df13cb0cf158bf678bc7be8f7ac404db56"
    "fr"
  end
  language "gl" do
    sha256 "ad2a55eb1e430ba2d4f05a163ae88e491a5a3e5530c1129fb6ef0c798f97f9f8"
    "gl"
  end
  language "in" do
    sha256 "d864ec4bcb77e51ad3fa3514c0c5957ee3fed52f1e7952f995b581d5be09ebd1"
    "hi-IN"
  end
  language "it" do
    sha256 "905bdfca5eaf4e6cfcb12371b5eb83838aff55af5d5c5710d804709ba78c2650"
    "it"
  end
  language "ja" do
    sha256 "81d52ab0fec84afd50398be52934e382d1fa53d1a6dc742826b1f75547675d7f"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "2f58ecfc525a1f7bcefb9e822a60b0f4c26e382aa40b893f88696e6094c09526"
    "nl"
  end
  language "pl" do
    sha256 "c910734b411f1be7b731d220bcf9e08cd01f2ed72e9818478f46607883a89251"
    "pl"
  end
  language "pt-BR" do
    sha256 "a3ec1aeb85821c154b1af9f20f252620b32ce7b729a263d96cececa53c907c58"
    "pt-BR"
  end
  language "pt" do
    sha256 "4a28dec010907022992d46b86dd1085238a7fafddec3a528a37191c1ada62960"
    "pt-PT"
  end
  language "ru" do
    sha256 "7b37d0479214425ce0d4926166f11483dc1782ccff3b28456aa2e45a0c42a07f"
    "ru"
  end
  language "uk" do
    sha256 "5f6a0fa78c547c9c0eb4fa82b66818039a8d5209205e70192a5dc81403c1638d"
    "uk"
  end
  language "zh-TW" do
    sha256 "9791792b4671fbd3506518496d0008ea9efa2b654bdcefe7c9f50db1b1eaaa14"
    "zh-TW"
  end
  language "zh" do
    sha256 "11ae33e4bba73356d236404a276a845a9933ae905a5f8aac6a9f58a808925d5b"
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
  depends_on macos: ">= :catalina"

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
