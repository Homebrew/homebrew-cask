cask "firefox@developer-edition" do
  version "138.0b2"

  language "ca" do
    sha256 "e927563462737f140fa87ce490330531ec0b962576a66dc51e80b7cc2dc49e51"
    "ca"
  end
  language "cs" do
    sha256 "65f0049fa70ead52ac63b91f650ef21d3ce949a5b9f444651712692ee93954bd"
    "cs"
  end
  language "de" do
    sha256 "da97ca28abf3f6d04ae0bfbc68b622fdee59088370805ca689947d94e7d91e44"
    "de"
  end
  language "en-CA" do
    sha256 "d34b20b6301982f95da6345228206cdfda69beb583a22d7e8cfa04ca553113a7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e1be7383f8484a4fab02cd2d2826d1e95325863942dcbe65e25ca0af27657c47"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f0b377814239e14fd057710451589a96eace8ff5c2f1eb8956bea6cc3ac6f275"
    "en-US"
  end
  language "es" do
    sha256 "56fb0337d9d322a1e8b5ea8a2c24320065d25429f909dec61a9bb3f4fe16764d"
    "es-ES"
  end
  language "fr" do
    sha256 "7b19b5637ab354f7d39d4fac587ddfc57b4fb37c296475473faa535aa9f647fc"
    "fr"
  end
  language "it" do
    sha256 "e382081ffe4edbd9dd39f7f3d84e5d4f6ef4ead0ea92327caa040f865977a79b"
    "it"
  end
  language "nl" do
    sha256 "1be8448d95521a3ce5b987dcfb412e7b28234d822a73c96cb853d4d75029cc6e"
    "nl"
  end
  language "ja" do
    sha256 "1d4b9d44dd29a88a5186d53e502bcc31e031810a9f9c2cfa9f429f3f44cac8e3"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "727a6fe944d55629b3909950f8c3bffe916f4c4bad83dc44001e7f896c531cf6"
    "pt-BR"
  end
  language "ko" do
    sha256 "1e0f4b7246c3eacfbcd977fe17d3d8aac5c549d0967832bd04bc61f53c849c09"
    "ko"
  end
  language "ru" do
    sha256 "c31a20947c1eb380cb45959ac8ba84f71922c6ab60decb84c532e8e260fc6d0e"
    "ru"
  end
  language "uk" do
    sha256 "505c9ec99918aee460dd7f9064c162bb64a98d6e4e8c3f51b32d1d2fd3ff5cd6"
    "uk"
  end
  language "zh-TW" do
    sha256 "f76c0e3409484642dc0c3ab1a57541121a901cd8c8e31e123db05a1cf1e07d79"
    "zh-TW"
  end
  language "zh" do
    sha256 "82ad587de2ec315ca3dd453835ab6eeb2802688a7c07148bde1578e42a74d049"
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
