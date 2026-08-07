cask "firefox@developer-edition" do
  version "154.0b8"

  language "ca" do
    sha256 "fe18c4282aa68f3c083f2afcb9cae17a90d70d5a059d4dc86c565689063b6ad4"
    "ca"
  end
  language "cs" do
    sha256 "21f244f8c27edc9fbafb5701a07fb790ea523942311cb774f8d322e0b01dc900"
    "cs"
  end
  language "de" do
    sha256 "117560aff2f2bc0f8724ba9cb03055e7db1eb0f6c3e8d666f54063a1d291968e"
    "de"
  end
  language "en-CA" do
    sha256 "3e0c90134c7e732ddcef967645ac62a2631d1e118d6f8ba7e1673bbcf43ab8f9"
    "en-CA"
  end
  language "en-GB" do
    sha256 "63de01db26819fadf35a31ff68599d82b390cb328fe6cca047559e6043cfb594"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fb371168991370f5652614a5d6df96ecb7a9fb2d19aa6b2f8255f439cd26942b"
    "en-US"
  end
  language "es" do
    sha256 "08c933dc6b28fa8f2a97faa0cc893199dedc6917532baa5210fc9dbbba1e8fe5"
    "es-ES"
  end
  language "fr" do
    sha256 "2394e96891d0da9f7a689f2ea6b172a0d461014ea391c88924c980374c77573d"
    "fr"
  end
  language "it" do
    sha256 "672da21b977acfa8a3ff5f3d67d8f4a004e7dc558be7ece6299609d8ae824ee5"
    "it"
  end
  language "ja" do
    sha256 "117a9fa4e000ad5de3484e1cb9b6826842207d74e06559b93ef3fd7c12356d29"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "90cb44950ae184eb7e490f5f7eb37d77c24b0254792d0eda3b95648e6001cedb"
    "ko"
  end
  language "nl" do
    sha256 "bed24491a08bfd2410e9ec3914f6db3fa7ebe25faa2cb4c84ee449e6f1445d8e"
    "nl"
  end
  language "pt-BR" do
    sha256 "17a9bbe0b42a15d9dc195e712ed174718942f21fb07ee77eaac5448f26c262b6"
    "pt-BR"
  end
  language "ru" do
    sha256 "d4e30aa584c1f034ed4eaac4a09b8ef484162c3127f32c1993c7cd8b5f437207"
    "ru"
  end
  language "uk" do
    sha256 "13cc2ffee31242f20f6e79dd8f320b664b16b0e08ff23eee69f98c5cdd03773d"
    "uk"
  end
  language "zh-TW" do
    sha256 "49edb614ed7ae83169f676bf45b8e21d73d6dd725f9eca971cbeefb010a0f1fe"
    "zh-TW"
  end
  language "zh" do
    sha256 "74aa7b79c90026690f064dbecf1e9f78ce5750799ac9f916f1fad1dc6a5d180a"
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
