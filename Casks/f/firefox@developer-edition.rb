cask "firefox@developer-edition" do
  version "138.0b7"

  language "ca" do
    sha256 "6c63e8fb55570071212ea6b455605f10b059a256fba61b7759858eae64e9d010"
    "ca"
  end
  language "cs" do
    sha256 "9d3266ad71ad2725f5a5266bae855d31e2207eafd8ecec50c9131d8609a5301c"
    "cs"
  end
  language "de" do
    sha256 "e38316f07882557c38a0d6a834bd93ff4af374588efc89f87a460fb6f62730f8"
    "de"
  end
  language "en-CA" do
    sha256 "b7d82d82e4bf993dbefa8ccfabf10591f455bab055b76ee749ef4628ac9c4e54"
    "en-CA"
  end
  language "en-GB" do
    sha256 "9883bad4b451ede81e7a13e9f92f2e0d4e20cfe8e7def78801a6568d2ebf21d3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d91aca8a2d52ac9e29b7c66874f75e78622d2798b1bd4421fc5cb13f7b4f347f"
    "en-US"
  end
  language "es" do
    sha256 "352f62a46f33d3e905339c08ab752fd96446b56e92396178b06295b2bd5f32d8"
    "es-ES"
  end
  language "fr" do
    sha256 "80dd75310ea858928a1996b7d1b00c7f119b9ee83dfc6a69097902396a844312"
    "fr"
  end
  language "it" do
    sha256 "11f67d76351ab3a8abe75abad08b4d618c493079f79fd3080c44bb1b7106c9dd"
    "it"
  end
  language "ja" do
    sha256 "7aad2d2612d4419e3ab1d300b24b08060d2af14e6c20bc9ba4900bedd4378cd3"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d1f0af8aaf90f6b721c7b5b5dc73abf81e268237869d52922763e33841e9f008"
    "ko"
  end
  language "nl" do
    sha256 "e2eca7ee40758ae235ca5ab98b88ecb0d8ef550cb0e53a2c680f40b9a90f1ee1"
    "nl"
  end
  language "pt-BR" do
    sha256 "983be46e72b1da2a6167a135cb96c54d8632d1b1816bbc95c6e484dec4eb38c9"
    "pt-BR"
  end
  language "ru" do
    sha256 "991b288f7be50635b961e0e4066adebd03ed9d83ec3d4abc421330a31e27ae75"
    "ru"
  end
  language "uk" do
    sha256 "d6432ff537adb4eb20f45aa3da116f8a57cfad22f68346e2523a4d03347dcf1b"
    "uk"
  end
  language "zh-TW" do
    sha256 "5e707bddca74e6a37363228f0dae12ac71fef03d04fcf2488d27505355dbfaa2"
    "zh-TW"
  end
  language "zh" do
    sha256 "ed93ca92ab3e167f0cf01fa403504f925163158daf9faaeeb2de324dc52ada4b"
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
