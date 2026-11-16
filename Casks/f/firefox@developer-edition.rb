cask "firefox@developer-edition" do
  version "161.0b4"

  language "ca" do
    sha256 "4671394d3ae53d6d899d0cddaf7976adefaccfd29a0a9a64fd00245b3dd80d05"
    "ca"
  end
  language "cs" do
    sha256 "e523f31d01e7b836776d1e5f0b1d1ae72c2b37234562ebece1437c43e7448051"
    "cs"
  end
  language "de" do
    sha256 "d027924965f71aefa897dc14e74415fe4e441c7e11166a6567e2c3675fed02fb"
    "de"
  end
  language "en-CA" do
    sha256 "ca2a5fdea5c79610a56d60d4465c742f417596cbe7746ad6d6e956052b48669a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "433e331ed765b999645aeed6c047d4fbcbd1a9792c948ee8855d4f9d864dbdb9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c239a933fc4b898b262827851a2466546baa2d21543b663f78fd17a5152b35d6"
    "en-US"
  end
  language "es" do
    sha256 "b8c19e08e6b7c078cb8188c6be3088b2a31e2e5ea7eedbc3a3e2bcc0e7bb97f3"
    "es-ES"
  end
  language "fr" do
    sha256 "5a9755d101c12098492be092c271967db7ff338982c6074776feed312b1cf330"
    "fr"
  end
  language "it" do
    sha256 "82e4dbb31254bd14f53d7cf181823f918ec1f03def207655e98d089b57edcc07"
    "it"
  end
  language "ja" do
    sha256 "48c9b44c18a3cf3552e5fd653f328f4187a6d66d7f81356386e263c372179070"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "3e0548ec2aff3057a10a090b929c70e2ba077ea27c4ab898f2d99511974d941b"
    "ko"
  end
  language "nl" do
    sha256 "9a19fdcbd5d46916539bb0b156bf6d6d30ccac8f214258bdb37b65d62193d4a0"
    "nl"
  end
  language "pt-BR" do
    sha256 "298d6da24970dd5ee4c0c2119193dbf68bf4c0197c7ebd6981bca5a78345eaf0"
    "pt-BR"
  end
  language "ru" do
    sha256 "a2b108812351631fca6240d679b663567012948f0b2afd1cca5c4128ee689fc9"
    "ru"
  end
  language "uk" do
    sha256 "c3c260980f464141897d24cec7b3a425167795694780c1cae06f9c7696decbba"
    "uk"
  end
  language "zh-TW" do
    sha256 "4ac87ce94b2f7bd4dcf544e06ac672f038c9ab1492dc235fce4d12d0ee79fe07"
    "zh-TW"
  end
  language "zh" do
    sha256 "a033cb01d7f4e420cdb6abfcf2ef6f60577bb4b4d22bc0333b2ac7e8c1cb3ba9"
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
