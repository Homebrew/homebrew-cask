cask "firefox@developer-edition" do
  version "145.0b6"

  language "ca" do
    sha256 "091c047ebb35915c9ac6a0b8a71e156066b32d78f966dce83c3e03aba6d1ce4d"
    "ca"
  end
  language "cs" do
    sha256 "0848e9f12b96c6b103dd2faa13f730b369a803f3375e826ee71afcec0a53a23f"
    "cs"
  end
  language "de" do
    sha256 "615eb2c247d2d72047dae430601dcc3ed1c59268b791fd804c27f45412b5ba0e"
    "de"
  end
  language "en-CA" do
    sha256 "a9078b4f21cd16f0c5eeff30f8181acd3a7c6b9a560ea7c53c9a97c63b83133f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "27e7b6768c61fdf5ed1faa9f3099b4bc2c86e36e4e905b8522c5daa3a17ac047"
    "en-GB"
  end
  language "en", default: true do
    sha256 "bec896add16082779d0fe6e472bc4a976a06c0e3791b79913ca27dbb0f9104b5"
    "en-US"
  end
  language "es" do
    sha256 "5447abe533658a6ddbd7b92d9eeb3cfacadd73629f738041ee9edeb76e28349a"
    "es-ES"
  end
  language "fr" do
    sha256 "3a636c5a26178a5208f606dc0f0f2e651da49ff54ccda6cf51a93e34ef0627be"
    "fr"
  end
  language "it" do
    sha256 "9feab2a39a19e671d511ae1b7f9295cb7710ecec6d9cabd9f1d8bd5fcf6b808c"
    "it"
  end
  language "ja" do
    sha256 "93afad42857c1857557dfb679a0b890e53061507285f7191bcdc47e8fdc64179"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ab2eb151f23566004bfa87fd5723d720eeb1d4f41eae7ae4e51320531a884b28"
    "ko"
  end
  language "nl" do
    sha256 "aac15bcddada761aaa368098d9c6b2dd25d4bb0162e77ef33a313a1d7e2f6308"
    "nl"
  end
  language "pt-BR" do
    sha256 "1ac051825aac4c74bcf497687328b5d33ad2085a3ff398d4788371fd5e92222f"
    "pt-BR"
  end
  language "ru" do
    sha256 "9c303431b39e9e2697cddcf69194acf5f668a895c5b5a7fa0a41c1010226306d"
    "ru"
  end
  language "uk" do
    sha256 "64377e5d00af621ee063a9d45dd539b88fed5b2cca181bb27b9e3e02550a355c"
    "uk"
  end
  language "zh-TW" do
    sha256 "b329f71956eb78337118cfa96a63b8e5f52f4953b77d4a158d95116b5dbcd49a"
    "zh-TW"
  end
  language "zh" do
    sha256 "3bd70c5e0aa93825c15dc01ceb98319a973a28a606d356a3667ef98861bfdd41"
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
