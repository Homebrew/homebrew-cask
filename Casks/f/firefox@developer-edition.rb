cask "firefox@developer-edition" do
  version "133.0b2"

  language "ca" do
    sha256 "b9f6225a3f8decbb24de55078128f8412aaf54af5bafc2183152bdd5eb29559e"
    "ca"
  end
  language "cs" do
    sha256 "39675588c85139b2caa1d8e371e3449e3a23bf5833a4c93f39d9dc44418cba43"
    "cs"
  end
  language "de" do
    sha256 "b4236a4bdf421d79e33fa61dcfc76cf0b6f497017b181268a0ad852957cccecc"
    "de"
  end
  language "en-CA" do
    sha256 "7acd645ab3d5dfee62fa272a66f24bd815a8702d56bb1b800917e8f283f195e7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "fe0cb72ff302d16b0f032926a29735781d35969d12a3b49532ed2bf27e0b79b6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1bedf7ce0e826f8d1cf30abd8882411b8538bd330d634e814640465fbfc8984b"
    "en-US"
  end
  language "es" do
    sha256 "c58dfc1fcf0d49baadaba9631d56505d9450d8d2f0c2199bebf6f837e3cceccf"
    "es-ES"
  end
  language "fr" do
    sha256 "642017bd23ff06cd517356691d9280a5ea6394c1a41e05362508cf45b8a7d89e"
    "fr"
  end
  language "it" do
    sha256 "2b792696008db09c1adb9afbe523ad892fbd6ffe21ae8db682924d7ef4810bc2"
    "it"
  end
  language "nl" do
    sha256 "042bff2e8ac32cb12f29558add89273313bd6ebb82921795747bbc6b56ac9609"
    "nl"
  end
  language "ja" do
    sha256 "c793057df97e9dfb0e54ae7cec6f8a2564fd029ea3b7fe31dda73f8ed044d8da"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "d7020cfe86828142b7b3d5f31c70526b8b72fb46d2f48075a1921f9226e41aea"
    "pt-BR"
  end
  language "ko" do
    sha256 "df037132ac232c992be7141b42199bf205e2671266dbd7d72046f9836aa96f8e"
    "ko"
  end
  language "ru" do
    sha256 "ab54a21208d87378e68dcfaf5f3c28a13b25464403d084f8b5b3e7a67a5285a5"
    "ru"
  end
  language "uk" do
    sha256 "da691117aee4489f68161ecc05b3bf0963a3c0646aa889b9e9d2aa3a6c691d2c"
    "uk"
  end
  language "zh-TW" do
    sha256 "b238c4efc47678bad7a3034dc5aca88e26907229ef848d0af3caafc98b6e5930"
    "zh-TW"
  end
  language "zh" do
    sha256 "22e7418f7537f84a11f11fbf7d7d731f847549a939ba4f5bf4b79e360b5a5174"
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
