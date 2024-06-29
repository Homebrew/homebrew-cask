cask "firefox@developer-edition" do
  version "128.0b9"

  language "ca" do
    sha256 "26517f15fb2502211e560f347566d0f56f99aaeb49040487f1a3cc975385f7b0"
    "ca"
  end
  language "cs" do
    sha256 "541485c2db6b78f1e07ce4f14ecaf20483fc5873e1b48a9adef19e107565b4b6"
    "cs"
  end
  language "de" do
    sha256 "685e44aa406990cb6fce107bb4b41a50711d8f15c825a8f71227ee8f6b63e21d"
    "de"
  end
  language "en-CA" do
    sha256 "d001d7699538c5ee526ad80f78b85a5c1edce8629599aa365b7ad5d86d85dc1f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d09091becea762ce03cd14b5002db25ec1bdf10b252f002b0e42b4e3f9fdb3c5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a1ea0221a2ee38ec392c89962051ab854924eb83fdb83f85e2c257d73992cb11"
    "en-US"
  end
  language "es" do
    sha256 "9dc49d76948bd83fd9986e0e0868aeaee39eddf200ab39dbf7b5d5650627ebc7"
    "es-ES"
  end
  language "fr" do
    sha256 "1db1fefc31fbb98a783dc8c13d5977dea984f9dbc866a42f9f11bffd9703bff2"
    "fr"
  end
  language "it" do
    sha256 "2f687d5760d48adef9a5040d72e08fffea27878ba9570a012b7b8191c2e00ca1"
    "it"
  end
  language "nl" do
    sha256 "27c69ca9844792143982f5ed8fdc79f60cc5869705b58eeaa75901a399e4d15c"
    "nl"
  end
  language "ja" do
    sha256 "b101871a82338ae5cfb9faf37b21afc88f89846cf83d26e667168d0d90f24062"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "6a6e26ad8516e3e32eba43ae4e5d5ec6836a69fb60a82dceeddd672df101063c"
    "pt-BR"
  end
  language "ko" do
    sha256 "c2a18a7c00dc5c3fb4d0f20c4be39629797829cf756f2bf7f54f54f938e49b77"
    "ko"
  end
  language "ru" do
    sha256 "29e0a3940134286bb743b87ea074b343ca73c6f5b8c83571966a34c4e6074019"
    "ru"
  end
  language "uk" do
    sha256 "0b802b2d78485dd1f48c77f5094a99599bb497ff0cb85af48d7ad7294c3bb901"
    "uk"
  end
  language "zh-TW" do
    sha256 "7557e801e53354e058ebcb12811aef426a94afdea1473f205a67bb01c8fa9861"
    "zh-TW"
  end
  language "zh" do
    sha256 "0061394b8d8eeedaa1cd302fb80315e1d8fa16a91e25d10f9a5ea7016baaa559"
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
