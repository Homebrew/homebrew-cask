cask "firefox@developer-edition" do
  version "148.0b5"

  language "ca" do
    sha256 "6edfa020f400d8aed73959bf895adf99721f7d3571679e6f27ef322a0679fd97"
    "ca"
  end
  language "cs" do
    sha256 "00cc940cfbba4c9ca5d6bef16ffa42bcb9226282eb23e20646c922240d2a214b"
    "cs"
  end
  language "de" do
    sha256 "044c7f05d9c385c40809c867c99072192c6d30b9081f2399d5c3f89096cf0a8f"
    "de"
  end
  language "en-CA" do
    sha256 "36e1741824bb21d3c0b43a483bd238810a2d205db9e43d3f2b3caa3aa90db7af"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8b3d0eb925f388c46ffec6045c33dc39592cb1e1672c7418c89574739c701118"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f15ca17e5e5dd97142521feaed13cb40853116e74c7be589d211ce1b09cb25b8"
    "en-US"
  end
  language "es" do
    sha256 "9fb14ecf18fd0da4b4ace6fe180bca990bb3b6242b093eb4bd5b5bf9249fcd45"
    "es-ES"
  end
  language "fr" do
    sha256 "25bf7e11272849ef54d5dfeb91240e9b3e5dd405013979f2270d08280718ed2a"
    "fr"
  end
  language "it" do
    sha256 "f8b26f02450d065c296e297e001bca29fa5ae9fb4b164dbc2734ddcbf9b8f5b9"
    "it"
  end
  language "ja" do
    sha256 "7222dcd1fde8ae44b9c8c6e51360f8c2f1500e61032907620ba7bd0c56e2fde3"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "8df0d754c77fe78e9cf9fbd8d31d4cb2bb650d3f6a680476abeaa3099a5882f6"
    "ko"
  end
  language "nl" do
    sha256 "3c2dab6723a3948980646a6d15b6c437e004fa199f28394701c36eb078290a4d"
    "nl"
  end
  language "pt-BR" do
    sha256 "fe68d0f78f7040f9ed719570716aae061623d5f151b96b2aaba48da5af21ea41"
    "pt-BR"
  end
  language "ru" do
    sha256 "54020e30ff04d375d1e1a7efee7229628c49340b9cd9658d7aceb8a51f9ab1d7"
    "ru"
  end
  language "uk" do
    sha256 "19b557f617c9de18194f3daa337bf879b537c932bc3dba72f634608dda8f1dea"
    "uk"
  end
  language "zh-TW" do
    sha256 "510255068031bce9b54dde3efc151fb22d7810ab60f20dcc503f74291d946beb"
    "zh-TW"
  end
  language "zh" do
    sha256 "a067afc0d49ce52973f4c5fa99bfb0b3a16b11060171060c1b5448d9cb25a077"
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
