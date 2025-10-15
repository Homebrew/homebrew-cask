cask "firefox@developer-edition" do
  version "145.0b2"

  language "ca" do
    sha256 "d20f2f3d0dc91d830897dcbe605e8927165cbcda3d22d71c43bc48902591ab1e"
    "ca"
  end
  language "cs" do
    sha256 "8574766735f4f4fefb6bb00c3ec95751388a029abf6b7322863b01508490576d"
    "cs"
  end
  language "de" do
    sha256 "12482a2241dd6d2592d7947a025efd06e5f89978648f70d7e2a6546a68015fca"
    "de"
  end
  language "en-CA" do
    sha256 "07011b55842996524b787869ffdae9ac9af5120614f43d2559cdbbef04cc7448"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7ef8cee447478d0f4cb1a5f86a20c34a06767c38fc4dbbd3ebdce46474c2d849"
    "en-GB"
  end
  language "en", default: true do
    sha256 "06c2e7e9f30901dfcb82e720ab6c9c3560681c2732639ac08866e73967f40923"
    "en-US"
  end
  language "es" do
    sha256 "66b61e569b8c45e14461997c1908a277e1735eefe881bdef708fba2df0bbdafc"
    "es-ES"
  end
  language "fr" do
    sha256 "d994d898864eb899157bcec1ee5215623bf9ab1aca8d2d690a7ae14c1278b3df"
    "fr"
  end
  language "it" do
    sha256 "0ccb0d07b8fa50b3484419f6eaf46c4f88af8ec38c0e32603ca0783be140ab06"
    "it"
  end
  language "ja" do
    sha256 "ff7ec83d4bffd9f851028a0067beb321dd6d437af5a7090fe42df2413f328a7d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "07597a97b70333d4055f8d8e76ec7a16c544eab97c693f397f48ff85ad0a6c24"
    "ko"
  end
  language "nl" do
    sha256 "97660068bb874b1f70ea608f55c3069f8480e2870fb14d71ad2360a187862d9d"
    "nl"
  end
  language "pt-BR" do
    sha256 "be04846b816c1a0940c7de96a3d57857cb392b1be8cb689ab745e65317c5bc2c"
    "pt-BR"
  end
  language "ru" do
    sha256 "2e3a640d162353c1fc57fd9b36c257acc5809d7270c54fa1528fedd942fbf6ec"
    "ru"
  end
  language "uk" do
    sha256 "e74142da31e9a2cf4636f9a69d9cdd605799c3df6bc8061cf4f7e09d75816537"
    "uk"
  end
  language "zh-TW" do
    sha256 "552f2e9d69a238c65d7886c5419e9ff032ceaa556b01c502e78a5ba26455ad53"
    "zh-TW"
  end
  language "zh" do
    sha256 "3239ddcb8211ff3da9196b1efba414eac7bac1be41536bdb3fe7e58d39a5aba0"
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
