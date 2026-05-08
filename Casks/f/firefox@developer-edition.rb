cask "firefox@developer-edition" do
  version "151.0b8"

  language "ca" do
    sha256 "291e0db0db2152f8a22eb736f17f8de603d01a802e03e6d4a768071cad7532fa"
    "ca"
  end
  language "cs" do
    sha256 "7d1d6d555d7be6a5ba231fbd86009ef6197f762ef1c0d3eda70c08d9646e9f6d"
    "cs"
  end
  language "de" do
    sha256 "6677ca133afb77a11e12b91ec759c7eaeaeeef5ca714d711be8a36555b058799"
    "de"
  end
  language "en-CA" do
    sha256 "cf850a888b73c2808bc89973f83795855f154acf87c43ec30c604f8ae8f1eba2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "321c0800602b3b979ba558a81bd6ec443f04fb87404a24ecc4dc4cd61c6ecaae"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7360b817a27a58bfe5d2c8caedd59c22bf05342c1c23581c4fdc5554af52e624"
    "en-US"
  end
  language "es" do
    sha256 "dcf52b833b9651e7b3bafadfc08610ca3302ea38c517e5db6f8bbd0f49f3d933"
    "es-ES"
  end
  language "fr" do
    sha256 "ff41304aedd2452857df7b9c20ed4b8b7ad31cdadb15a2777cb328274470bae6"
    "fr"
  end
  language "it" do
    sha256 "01efefc3b9daf8f99c35bd7b49323ab0ec94d78fd1eb84cc02869bdfd413c4a8"
    "it"
  end
  language "ja" do
    sha256 "6cda3d7839f91c3311f8079cb1ff00b4c7888bf8535928614c969bf3ac479924"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0f0fcc9294312f2745cdf80a9812f3fec6f3dc1b5c55fc74d39a7e1f3d0ad07f"
    "ko"
  end
  language "nl" do
    sha256 "29aacb7b2723e99fb5b9d41892cb414abd084d610008508d4676e093caa8133e"
    "nl"
  end
  language "pt-BR" do
    sha256 "17028ba93722009062ba7b490d88e68cc41299535179bf8c854256d267137c7c"
    "pt-BR"
  end
  language "ru" do
    sha256 "698d8fa191f0f26c4212766ae85ba074e1e4a8aea89b9b98a51f897896906df2"
    "ru"
  end
  language "uk" do
    sha256 "ee48f317f065ee8b8b1477788061415e4e1e95448f0b4af3ef1292da681bbb0a"
    "uk"
  end
  language "zh-TW" do
    sha256 "97b7a552607e70f828f41f12680dfc5f02066976097c256a0c57cfc891c9f37b"
    "zh-TW"
  end
  language "zh" do
    sha256 "a51dc1ff6e9db339e89fa42065f0adc267b524ab4f0ce767ad842d94fdfbb5ab"
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
