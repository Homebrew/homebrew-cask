cask "firefox@developer-edition" do
  version "130.0b3"

  language "ca" do
    sha256 "df4a967c737187efb6a39c925465a5403df7b4cf9081c51b9006bab20784141b"
    "ca"
  end
  language "cs" do
    sha256 "417c4e2fd4787df2af22c2fc68d165b4a280e4ee8b1e4314b75180b0b28fa357"
    "cs"
  end
  language "de" do
    sha256 "7a64331e0037553e6cfb1999105c47581c4a2b4af7698ff2be9e852b54a8e89c"
    "de"
  end
  language "en-CA" do
    sha256 "72a7518488178d7503b0929a1813cae5f45da899fe71a4e5dc84603e03123481"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3751fd51b420d6e5a3abcbb5771a3c432e60f97df3dad1fb188103727e22691b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0ade7b992697da4df17b22cf1406734a6298ea1e22ff00d480cc59794281c7e3"
    "en-US"
  end
  language "es" do
    sha256 "529bb8aac10ac6b8dd0b34fbddce644164c6615ef9c72ee904190b88c2320f68"
    "es-ES"
  end
  language "fr" do
    sha256 "4227f0b3ca4caab02ac2e44e20e61a04752aab088cb9695b6496e006c6eeb0d7"
    "fr"
  end
  language "it" do
    sha256 "33bdd59c7a266d69ceaea3306c0b5327effd6488877f903e1398b9e6daf3fab0"
    "it"
  end
  language "nl" do
    sha256 "503215e05cde9e4afb2c3e7955f483b64bbd9b46c4cdf79db282d99527675bf2"
    "nl"
  end
  language "ja" do
    sha256 "4fab21542a4fc51b51fe805ed3052b338f57a041fd09c395b1d364a3704fe005"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "5ff3647be668250c4340215a40971b72d1fdc8de3ac301a8335cb2d94fc5830d"
    "pt-BR"
  end
  language "ko" do
    sha256 "4f774816cd4c36601b6fe8bfa45354e9d67f79daa849d7bc5a7c10cc2b7a1477"
    "ko"
  end
  language "ru" do
    sha256 "61916d521684a0499dd4873733fbe31fcdeaae8199b1fb896ad834efe0e45caf"
    "ru"
  end
  language "uk" do
    sha256 "61ca57c7e7d68852b5919182c8655c4de76cfea26d3368efd4949d0e2144f011"
    "uk"
  end
  language "zh-TW" do
    sha256 "39f990994b6013364cfb982f8d15b1b9df85e77dfae2c1ebb63a169c9302ae94"
    "zh-TW"
  end
  language "zh" do
    sha256 "0f6bd58f7a9649f641ab40effd31785e725f30dc72283bee36b6fe728a80bd81"
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
