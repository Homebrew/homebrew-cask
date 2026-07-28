cask "firefox@beta" do
  version "154.0b3"

  language "cs" do
    sha256 "5bed1e59176f03fe38b00b3e57045f6db44e87021605f704024958cf9576863f"
    "cs"
  end
  language "de" do
    sha256 "ee8f5b6da633255a74cf34a37f15b3385308412753e3af258ab7bbffd6ae8b98"
    "de"
  end
  language "en-CA" do
    sha256 "98549171f26cd278a87983a2356ade18af7755c4f4b9022566f1f543fb048abd"
    "en-CA"
  end
  language "en-GB" do
    sha256 "067f7587c9377a138bcf6b99bd17c341ddde4d6c01c1c8faf346ee67eb43b3fd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a339ad4160df2e8c1a3ed2b1c9c87512c7172b4e30e4f84233044457f3d772d6"
    "en-US"
  end
  language "es-AR" do
    sha256 "28866d95780635984e5974afb7fe48ff03e4bbd2679a47d7b9c4dd958e67dee2"
    "es-AR"
  end
  language "es-CL" do
    sha256 "e0855d97516e36ecebea6a3c4a65712856cf1fab8d11e7314a03550d60be74a6"
    "es-CL"
  end
  language "es-ES" do
    sha256 "646e2165a78434b977bb468f72193802eb9ca34f114b78b5b625d40216485b3f"
    "es-ES"
  end
  language "fi" do
    sha256 "ff09078e6a097a2c4fdc741a0c58f5e320977b7086411a1f1d53345873bbbec7"
    "fi"
  end
  language "fr" do
    sha256 "53677368955d22dfa4b48bb560c5e93a464f751b586c3db7a1117591a7cd5198"
    "fr"
  end
  language "gl" do
    sha256 "b57e832d0b557768556906cfe07a85e0b18e4392c67d31489d480fbc546a08e2"
    "gl"
  end
  language "in" do
    sha256 "5608d5e4629541afe383de3f568740785a30b6519856d94cb8a28d5f58b510a5"
    "hi-IN"
  end
  language "it" do
    sha256 "a680bf9396caa6526ae9aeed6eb50bff4251824de828901ea510c6a75d16b5f2"
    "it"
  end
  language "ja" do
    sha256 "21a62d248383852a17c74be90e4bbbe42ab4ed93d975f6028639ed3d0776b271"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "1b10cbe328968834997c782384cc78a9ca83d8f2ac8fb2ac5dc1d4295bdb5766"
    "nl"
  end
  language "pl" do
    sha256 "e7ba6f05f20fc3bb38f7fa7f13c030a5772fc43055ef8e5d141bd93ccb0c2314"
    "pl"
  end
  language "pt-BR" do
    sha256 "78eddecdb35fb0778df2eff0f705fff38ce16900674f3baf45b3e0594606f82d"
    "pt-BR"
  end
  language "pt" do
    sha256 "a8e6e21ab74aa665b2cda488b70a2fedcfeee4e89c5276ba48222c296da927e5"
    "pt-PT"
  end
  language "ru" do
    sha256 "f4b90c74b3b59d162fd99e0dc2a3a25abf4d8df68c29cdd6baf425c007ef7b42"
    "ru"
  end
  language "uk" do
    sha256 "54855cd891d34bf11ba6207184124c2da782bdb1d15bc41a4020cda5b712a54f"
    "uk"
  end
  language "zh-TW" do
    sha256 "22ef7fcd12bbd13efae81019d0964cada36443197cef3e2436cc8a1111fbe7d9"
    "zh-TW"
  end
  language "zh" do
    sha256 "8cf791c9a8e83c8119933ec3f84abc7525479804a97cfa33f4ca9995f0cc191d"
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
  depends_on :macos

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
