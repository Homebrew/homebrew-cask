cask "firefox@developer-edition" do
  version "152.0b2"

  language "ca" do
    sha256 "3b171c95896771db073ed7e5d485f9f58d4599ef7944f2bea5673fb1e7792ad8"
    "ca"
  end
  language "cs" do
    sha256 "454b156845891fb13e75babcf5181674ad308cff2b4d8df711b5a62fbb1ed1b5"
    "cs"
  end
  language "de" do
    sha256 "1dff52c308216f63f759aecb7117379250c91f0911cc9a38bf9b6fded6f0e938"
    "de"
  end
  language "en-CA" do
    sha256 "f0e08a9e3a21cc4b25b0eb02fab32b9e6b698fb8626803054a43a85b04465396"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2b265663dcf006103da6d0d309771caf5ed197b9d483f88f0501f9366819ea4b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "97b9005b458d1097b3e95f1c7a6de2f8913f6a002604e5c38c000861a0ed8fa2"
    "en-US"
  end
  language "es" do
    sha256 "f51ecc4976ba4eda16b6dd993bc89a6a25c206fe6bc1ffe70a48875a25ab43bd"
    "es-ES"
  end
  language "fr" do
    sha256 "e9ceb02b8f0f90a515957415b38a45e2ba48ddc43233eaf331aa49d94ce1d70f"
    "fr"
  end
  language "it" do
    sha256 "45b1c29c3666e6fc24ad1583744c72306cd5edfc751c5d188d14ad6f7b04e5c0"
    "it"
  end
  language "ja" do
    sha256 "e5a737a5ae750047edd6b1d07b7995ae783d2ec8072496f601d01520d01a02a4"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f0942b2f528c610b0d97f46095f023fd5b89c2084c01b61656dcee9897ba3d63"
    "ko"
  end
  language "nl" do
    sha256 "ef0f0e0ce210e459f63f480e56ef7bda4e8c1131406ea92d68408d5e0d46502a"
    "nl"
  end
  language "pt-BR" do
    sha256 "de67280f9003fe2ada3c0a67a5bad715453c42a5d7928a0927c60e8f153f5f4b"
    "pt-BR"
  end
  language "ru" do
    sha256 "8014ffdb52f7061777e74bd00c6c2f049c76b06af21e0fe78d594ac643cee5a0"
    "ru"
  end
  language "uk" do
    sha256 "f50460c4a5a69f36d93482c9d64ecb266fe19bbce44c33683cffb9df2a3858bf"
    "uk"
  end
  language "zh-TW" do
    sha256 "8e47b22c83d1314d329557c6d42063ff5117695cf73ce9aca7181fd97aad4c8c"
    "zh-TW"
  end
  language "zh" do
    sha256 "58571c7aac5b13dc1ca63155b610b5d55edff40dd328d4e97c8699930d9a066a"
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
