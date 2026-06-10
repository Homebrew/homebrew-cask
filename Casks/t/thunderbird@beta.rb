cask "thunderbird@beta" do
  version "152.0b4"

  language "cs" do
    sha256 "500ce66d22fef67e415436b8cb5714689c64a200d72aaf2882a86f711c4fb3ae"
    "cs"
  end
  language "de" do
    sha256 "0c46091845aa8ce94837cca23f6961132729bf108fab20354cb55da905986bc3"
    "de"
  end
  language "en-GB" do
    sha256 "63579feae9dca73495dcb1e6f2e70910936d4f301973037e8d4725b691c9ead0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "65bf65d7b9a5039980a644c662cd9b676a7f68c813249473e7f3100b30fb45fa"
    "en-US"
  end
  language "fr" do
    sha256 "fb90a939eb181939ceae22aca80a4ab946b55f5348783e0557829ae9ee865fa0"
    "fr"
  end
  language "gl" do
    sha256 "62bcc518e6eb38840626134dae442e32bf7128659b5dc9e03f6d1378452fd4db"
    "gl"
  end
  language "it" do
    sha256 "4832c4978b881cc6c5518659b0cbd77f72a484e65a8aaedbc7394e458925312a"
    "it"
  end
  language "ja" do
    sha256 "28e0367ec7f765c648bf6aefdafc6c746524cc880095ddf9defe4ed41131577e"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "eeb18226d23d0eb24792db79a74c9f42d51b1072263868f74b77f1a2af51989e"
    "nl"
  end
  language "pl" do
    sha256 "29f65f6e7f0dea1a1e26042a30e37d55fd7e8027b8b9337e737522cee2343b10"
    "pl"
  end
  language "pt" do
    sha256 "b29dfc86173648cdc779c7ede532b16a124b2fd44dd98af1c8b95b1c1875d0bf"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "86afb6e4a8c0b6e8bed3b744e954478885ac1f8480c290b4eaf35c53e9707be0"
    "pt-BR"
  end
  language "ru" do
    sha256 "734394f324ae153f3d158c14aa6aeba20909ab7b08bcdc5b5fbae808b8df0dae"
    "ru"
  end
  language "uk" do
    sha256 "e6747615ccfca48f458979ef3389d3d1d7f5c71b7506f364b74016731c4afff9"
    "uk"
  end
  language "zh-TW" do
    sha256 "bbbc31f0a8fd161a1d3e27a195d5477b0f2c2a3fefcce2fcf03c1a5a27523666"
    "zh-TW"
  end
  language "zh" do
    sha256 "910e617356a74a6570563094e07c23d4a8ad42d7bce7f337233a1951f3820be9"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/thunderbird/"
  name "Mozilla Thunderbird Beta"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/#{language}/download/beta/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/thunderbird_versions.json"
    strategy :json do |json|
      json["LATEST_THUNDERBIRD_DEVEL_VERSION"]
    end
  end

  auto_updates true
  depends_on :macos

  app "Thunderbird Beta.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird*.sfl*",
        "~/Library/Caches/Mozilla/updates/Applications/Thunderbird*",
        "~/Library/Caches/Thunderbird",
        "~/Library/Preferences/org.mozilla.thunderbird*.plist",
        "~/Library/Saved Application State/org.mozilla.thunderbird*.savedState",
        "~/Library/Thunderbird",
      ],
      rmdir: "~/Library/Caches/Mozilla"
end
