cask "firefox@developer-edition" do
  version "156.0b1"

  language "ca" do
    sha256 "c30ab8dfbec782ff581289d96cf8c307cff90adfcdcc108df703722b3310e1ad"
    "ca"
  end
  language "cs" do
    sha256 "898560a2dd8ac33f254c380bf457e3587f7956c8c50f083622175ab18ef52d77"
    "cs"
  end
  language "de" do
    sha256 "841ff82f16c4d9209fb687faed406293912ec8efebd7894a6c2b5e079bf01d48"
    "de"
  end
  language "en-CA" do
    sha256 "fc25c5a146babfa71b2b0ea005cf9e8ea6df8a9e675725b806d93e57785d1034"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c8eb0792c1179c4fc39dc598ce43c2a9051819b151bb4ab9b3251b72ec00b8ca"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f064d1f8c61b27789553a70e7f3bbe2f7326a681e2afe87fedaa5c169f79cd2e"
    "en-US"
  end
  language "es" do
    sha256 "e1163c458cda1864cd303da4688bca125a2e4918a163e19b9aff17c38fef0a5b"
    "es-ES"
  end
  language "fr" do
    sha256 "2f4e7f7983fb2262aa2a2aba5e227b7cd59a9ea738c0eee43ce61c340a236d1f"
    "fr"
  end
  language "it" do
    sha256 "9b1cdcd1e0ec4c2a75aa6b3076af6e977ea64df1ce84c5593faf99909265729e"
    "it"
  end
  language "ja" do
    sha256 "6f3c7876a0096fcc0620999734da4d9edfa5d8b191a072a80448a21af1e88239"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ae9323d468149bea7f5297628d8239288ab7852ca1a65a4036a66eb1907f9ed3"
    "ko"
  end
  language "nl" do
    sha256 "749616e72766aaf733e7d4ad19ebb5cbe7a9f5b9a6aa7bab8b748e72a1b036ef"
    "nl"
  end
  language "pt-BR" do
    sha256 "51208ce4060709dac39f20ec6bd1217561eb1f65a4703b2d6141522441a94cf2"
    "pt-BR"
  end
  language "ru" do
    sha256 "e780137e232c8a9000ec2854843134c6e7d4cd1b75d3b2d4543b7abd3224c664"
    "ru"
  end
  language "uk" do
    sha256 "10257afbc41fcaa926e956175c342fd50fea3f140892e38d9f98c5fc1e1d38a3"
    "uk"
  end
  language "zh-TW" do
    sha256 "0e85de847914b2f838d8c35af8bc823dd7b7870d1c37dd1b0a38ee1350ca064d"
    "zh-TW"
  end
  language "zh" do
    sha256 "a75d88bf34fd4390867269506fb418658ee8020e35b5cfaabff3ebb3c67782cf"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
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
