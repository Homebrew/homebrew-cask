cask "firefox@developer-edition" do
  version "131.0b4"

  language "ca" do
    sha256 "e66ed096ae061fe860ba78e3ccf21172ac19d4b72ded6170ece321c1fca96118"
    "ca"
  end
  language "cs" do
    sha256 "60cedce26627c696d281cc00298fa39a9cdff31fa12bf3bc7197e6b23e8866d9"
    "cs"
  end
  language "de" do
    sha256 "ad2128c60071bdd7d64e1f3eefb5bcdc0745c491f9427590a931aa34b35c492b"
    "de"
  end
  language "en-CA" do
    sha256 "7f2e083dacbbabdfb6dffbe069f311b78fdaa566387d92965b86e1ff4b082c3c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f43c6eb801cc24ea82eed3c7a3a007bda597ce8eef79c0de87c0299abc069391"
    "en-GB"
  end
  language "en", default: true do
    sha256 "126aa25fcd8ec240757571d737fe7fa1d7b94f34901bbd8178c6be24ba72c676"
    "en-US"
  end
  language "es" do
    sha256 "d08617fe119e78690e0c6a4998e2ff44a8b0faa8315631567b2011fb7128b198"
    "es-ES"
  end
  language "fr" do
    sha256 "f723dc67f4ce85704c3bd771da38a2844bca16ee9f8b7fe6a61ee69245685e21"
    "fr"
  end
  language "it" do
    sha256 "d15367b5c66b59ea9e677dc18b2b244bea6f927425dbd81c3c0636d497fd81e2"
    "it"
  end
  language "nl" do
    sha256 "fe9a665e415463fed7b0a4f6bb317a021c27a3c9130d4ae2f51b4dea29a6735f"
    "nl"
  end
  language "ja" do
    sha256 "63c249fd0f2927b065a013f61a88afc54b27fa8ca7eef630cb0f8b0cae74dd11"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "7cab9b177aa1eb670db783d388537b6f43d8d66a0f896ecc4915b7b476bfd10c"
    "pt-BR"
  end
  language "ko" do
    sha256 "82d6b3503b91d3225c5a0882f9a328e32845641061365834f8b16edb4f4fcb16"
    "ko"
  end
  language "ru" do
    sha256 "0ee796e47b085bfb9ab803cfdfb78d78c1632539c70f000c32d883d2e8bbaa78"
    "ru"
  end
  language "uk" do
    sha256 "6d34473a4ad4fe58eef6c936f84269a87c9f4ec7ac8fa0d0334b7f2080aa8704"
    "uk"
  end
  language "zh-TW" do
    sha256 "ef8b7610d45da5286567ee2ee5232bfcdbd3d8a43ba0b69b056c9f13ba60d208"
    "zh-TW"
  end
  language "zh" do
    sha256 "e7ddfa05bf71b6fd73acded0cc3563588c741767926fe59d077db7ba8e7b303c"
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
