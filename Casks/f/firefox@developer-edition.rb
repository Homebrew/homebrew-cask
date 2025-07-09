cask "firefox@developer-edition" do
  version "141.0b8"

  language "ca" do
    sha256 "3d1cea9d720733ec5c427c1ec8b568b7fe4e804d5224701d2fc0f64e48adc04a"
    "ca"
  end
  language "cs" do
    sha256 "4926556bf0df208436d24cf7724ee266c1839f1dd03e753a5bd071d79be25108"
    "cs"
  end
  language "de" do
    sha256 "e16fcc79a66a6e6e5d89e7b29cb61b3b62d09536ccd0aaa173ee5bbf98d0ba7f"
    "de"
  end
  language "en-CA" do
    sha256 "9f59b024d7ca1cf3d164d4e359e79a783a638f507856616ce615054d5a7283e4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ab36cc71908336ae99a3d3919944c60f6d8d7b778dd6b1faf983bf2adb4c30ad"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6d52c25ce552c63a411db7efeda4aa24e6185869be07401387e5f0711746f69a"
    "en-US"
  end
  language "es" do
    sha256 "961beb7d7a1cbbb671500bc32fe86b42d4f5f91a5a61f0ba78be7ff263049fea"
    "es-ES"
  end
  language "fr" do
    sha256 "212109c25214b0d39aa6c4189b930d9915b1b5b79aa89bfab529e174a2b902ef"
    "fr"
  end
  language "it" do
    sha256 "bc62a142302b0cad41bac498460ac1ca4830de150db36132b2eeacb8956cee77"
    "it"
  end
  language "ja" do
    sha256 "a7efa40da4862ba6c95f1a092fda04e7856dcfd3a34dab2de797a831944f9df3"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "8af0f2ffacde26d34fe688f642bc4541beb357ca63b7a0a24ec08e1b59bc54f2"
    "ko"
  end
  language "nl" do
    sha256 "c2c2873d7977758e74e1a2d347f5fff5be651c77ffbc2da4930b828d49f5932c"
    "nl"
  end
  language "pt-BR" do
    sha256 "7748b37a7c2d66943d84f973f30243ce9374d30fd9ab6282abe4e7f99458aa8f"
    "pt-BR"
  end
  language "ru" do
    sha256 "e6ca01c2ddda50786b5b8cc3e1b45062af820765017f2dfb1db69b1e88429ceb"
    "ru"
  end
  language "uk" do
    sha256 "5630cd3bd1f351922db668e39d04d44d576d03642e7c489af5bfd4932b09d4fb"
    "uk"
  end
  language "zh-TW" do
    sha256 "c47c404be14a9d8e9cd883b7ac8d343d11744886e6ccaaeed868da56eafedd91"
    "zh-TW"
  end
  language "zh" do
    sha256 "62017e594010ba76d8264ac48973b11014abb836a99e0a2b9b7ec8741f7aff15"
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
