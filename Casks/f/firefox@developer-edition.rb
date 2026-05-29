cask "firefox@developer-edition" do
  version "152.0b5"

  language "ca" do
    sha256 "ec1dba461f1967eaec893ece484c76817d132452e281b7d1ae5979de0c0c5a9b"
    "ca"
  end
  language "cs" do
    sha256 "3099d26d60f9ea2f5186839cb0cc54f850fa4cb5e94e4156265348e4eb9d7254"
    "cs"
  end
  language "de" do
    sha256 "31e25a780746837fedae1c0ea338951ff4207966e26039ec117969ae5704b9ab"
    "de"
  end
  language "en-CA" do
    sha256 "496703a51c47786abbe94d56f44713c3c9a3fed223faa8f4b6222cfb39954315"
    "en-CA"
  end
  language "en-GB" do
    sha256 "180f2b11af6a8882ec758255b5a6bf7186d91844dec9baa66dc3f964ab3e4273"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6dea4bf67e591cee82b77ec6c7b380123974385b15dbb3edffbb312df82df463"
    "en-US"
  end
  language "es" do
    sha256 "e11213c8e25d7fd1283fdc9ca5df95ff4552aec10ca3fdb144a3298937af1ef0"
    "es-ES"
  end
  language "fr" do
    sha256 "61aab31afe1582625b9d333be243a3c61042a31e56cc020eb68e5c86be26b999"
    "fr"
  end
  language "it" do
    sha256 "270c21bfa3d7c3c6d206562482a9d9fee697031abc3acf55681ce6f952d16104"
    "it"
  end
  language "ja" do
    sha256 "ecc5c8e2794d976e5d66029e918cde8eb2fef662cc1b212adc73f870f5682f3d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e100a4aa5f913873aa063b432195f24926130c800e8f8e21f18b65f48d20427e"
    "ko"
  end
  language "nl" do
    sha256 "73a2470fa7577954edffd561eba35bb0a79dfed170f0971f9d24584e5781b015"
    "nl"
  end
  language "pt-BR" do
    sha256 "4992171b037671d0bcc1cd30ba1900174051fe3f1e428db6875b1b3bc0e2c796"
    "pt-BR"
  end
  language "ru" do
    sha256 "a7c57115e04216aa8ee3c1b5fc8899475e380e0a27e53bdb835ef0f381e1c21e"
    "ru"
  end
  language "uk" do
    sha256 "db54134ae7388eb4be0cd21ac609d9903983f703d7356e91783a47070887a24b"
    "uk"
  end
  language "zh-TW" do
    sha256 "e137b4848f0e4b294fc97aad7915e08d6df661c37c1af857df8a4eec3dc6c6ab"
    "zh-TW"
  end
  language "zh" do
    sha256 "0388a21104d8da4521aaf4ee67af60bb7fa6e3ab7284f1d570b87d186ccfb10e"
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
