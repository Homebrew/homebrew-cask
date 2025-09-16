cask "firefox@beta" do
  version "144.0b1"

  language "cs" do
    sha256 "2639b79be091ce261d1c5f97a267f3cc39c14ad0fb414bfc6342cdaa9d1269e9"
    "cs"
  end
  language "de" do
    sha256 "d3fd097bf31499817a2d9de673f655a40f25fc7191f3246285346cfe874c5484"
    "de"
  end
  language "en-CA" do
    sha256 "b00889e454439ae6979f4bb3c56c1e6ab37fef0101c210d948cd4b7dfee0c7d6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "81081f39dbb1290fbd426ce38784e2f48f9e0f7aaae7d8bdfacd9b466c5789c6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1d378cadf853b9b02e7c61ed85cca4c79933ceb6df50e18fd1ed4e246eef7949"
    "en-US"
  end
  language "es-AR" do
    sha256 "5df008a7dc3a291db0f4a67f55018de01b70100759728b2dcad9c8f25f9155e6"
    "es-AR"
  end
  language "es-CL" do
    sha256 "f6f90598a038c0497d952b9f3d267bea1d71a05e0c53aa075a5dfa65de6ca2bb"
    "es-CL"
  end
  language "es-ES" do
    sha256 "6262421601e57092e91b3f4d1152244fa14f6c3225c2f1915c34f9c9231ae64a"
    "es-ES"
  end
  language "fi" do
    sha256 "97ec8af7f5f0e9110fe52c13ef13c897da42b027e2e2bf901a43dcfb6c5c9170"
    "fi"
  end
  language "fr" do
    sha256 "b55b60162d76eeddecad583d5fc998ebd21544b44d2d80c3860c3b6d04e44e8d"
    "fr"
  end
  language "gl" do
    sha256 "45bdc84aab49a8e38dbc9460a7511c30b4063b3fc688a51db068816a0e6684c4"
    "gl"
  end
  language "in" do
    sha256 "29bef90f252d9f4f87f7f44c9bdc32140c8606ba998b481628d49b6b18df9c92"
    "hi-IN"
  end
  language "it" do
    sha256 "99226e7ebdb0623c1ca1ed57336946ed851d2512abfc778ffaf5af0d48c33145"
    "it"
  end
  language "ja" do
    sha256 "f455399dee0bb2d3f441cfeef36a76b2d9cf2881898cec15ff0233b36fec1815"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "dd62353efd35c43e7252e2034a004bc6c5967966c7d1445fdabd5fd4994aaefc"
    "nl"
  end
  language "pl" do
    sha256 "f2ccdb61cdf882e3253a2887485bd7a4270740d7887af6c519c12e3a7adcc8b9"
    "pl"
  end
  language "pt-BR" do
    sha256 "6ce06fa835ec6567f4d9f562d848c4325241b68085bbd19763a88bdefbd22faa"
    "pt-BR"
  end
  language "pt" do
    sha256 "fbe0d44afd1dea6ebd3e751df6d7dde9ba84cfa2a3d1acaa4ac866e116531564"
    "pt-PT"
  end
  language "ru" do
    sha256 "9e8ead3ae1ad164f78c8f5773a92968cfb09d0668a43ae477d969b754a3921fa"
    "ru"
  end
  language "uk" do
    sha256 "7cd74c7cd0d0a331bac4e397f0df79acfb5814ddf1a634405df90f440ae5162d"
    "uk"
  end
  language "zh-TW" do
    sha256 "5cc74c13d70ed591dde74d58ef2b715aa93b44496c979034cbf6546d12a30344"
    "zh-TW"
  end
  language "zh" do
    sha256 "d1e6336a85552130f4de99c1bcfd957a3ba6b351e9b1d558a2b7b11eafb6cf72"
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
