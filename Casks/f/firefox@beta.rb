cask "firefox@beta" do
  version "135.0b2"

  language "cs" do
    sha256 "28efc5542b765e77801bb27eebf57f5a52a6be78d47e29ec8fcd1382258240ab"
    "cs"
  end
  language "de" do
    sha256 "0be927ede4c80e78a802fdff48fdc7d45f746bac351740ba22b7b34e22d945d0"
    "de"
  end
  language "en-CA" do
    sha256 "0ce78c74c7149bc34c7510efbae0f64304f43684b30aefaf0f56fa54996f3dd7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a858d338f17eacd5605be285f5fc5ba9437bdcb3cdaa7f296d0a4bb6d2ceb8d7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7a0006724a8076165f4d0d46b687582efe08c4bbfc6807f508e474b17d2e7c39"
    "en-US"
  end
  language "es-AR" do
    sha256 "18211326e8947b1cd89fcf31697ef8955e5ea455bffecd37e5f2690559b05d25"
    "es-AR"
  end
  language "es-CL" do
    sha256 "6cb7f20ac3d6709ab6b054a9388658231eb4792db26bb6e33aaaeee03bbd8711"
    "es-CL"
  end
  language "es-ES" do
    sha256 "0a980e644a2188baab7a1d931eee123d8e6d2cd03b9a4edb65dfae5c39ead9be"
    "es-ES"
  end
  language "fi" do
    sha256 "940a0d1515f293d7ce0b14838660003de208d74612fb7bd7c246cb920e439a0d"
    "fi"
  end
  language "fr" do
    sha256 "67a135455e601dafe14adcf0ebe2596bfece98d4cf2619a97b68ece456203569"
    "fr"
  end
  language "gl" do
    sha256 "df657f435b934c8b8fc610558b7bb4a916bfb4d3df2c66239aca39f02ce4c9a0"
    "gl"
  end
  language "in" do
    sha256 "f21d84f4d3aa8cb67a390d6685fc19040ecc47475ebe3e0504a9b43ad814aee9"
    "hi-IN"
  end
  language "it" do
    sha256 "7cb822089fabf6cb08496315e056660c6ce708557a4859b068cb043fb43c4c6f"
    "it"
  end
  language "ja" do
    sha256 "2107936a5aad3647182b43bf0248d9a374cf0b0c9389cab295173c685a63ef6a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "b247e0704e13a02b1b3e3c7b9d7220a14079f2ebeb08a6013daee01d6ac74da5"
    "nl"
  end
  language "pl" do
    sha256 "33b4a6cef6f89ba8b8a7fb0eaa460dad48d1f27e1f37295b93a1cd1cf996ddc1"
    "pl"
  end
  language "pt-BR" do
    sha256 "7e77d3034937152c617f0734c22e998107b358d71f1a0049a67955b305548ed1"
    "pt-BR"
  end
  language "pt" do
    sha256 "0e38099f57cdc91ac10a9413efd0133156c490c52b3c5451756d508379075c95"
    "pt-PT"
  end
  language "ru" do
    sha256 "8b2dbbb01b0b874c668c148b00e5589a21f3380984a37a342711b5db099dda2d"
    "ru"
  end
  language "uk" do
    sha256 "0c34932521a074ed5f86ed90c70d1fb5beb9775dd5ebec53ab77271797bd77fc"
    "uk"
  end
  language "zh-TW" do
    sha256 "dbdb1618691781f9e8c22281017cf4e3ecb534bc479b4406cbb13442066a222b"
    "zh-TW"
  end
  language "zh" do
    sha256 "6c8e0b3ff12aaa81e7c85276d4923b1bb89e2b92b8cbd2a0ef2aa14a6e21e7e7"
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
  depends_on macos: ">= :catalina"

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
