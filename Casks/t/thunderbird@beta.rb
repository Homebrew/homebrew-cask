cask "thunderbird@beta" do
  version "162.0b2"

  language "cs" do
    sha256 "9d832d9dccfe847e534f33a8df637ccae4ea2d90391f07e6002fe7b0d397cd44"
    "cs"
  end
  language "de" do
    sha256 "b03b5ba7e3fbda49f8a324653eead09a17ab6fad7fb4c826ba5073abe3ae1274"
    "de"
  end
  language "en-GB" do
    sha256 "3bb77e628e25f953046f5f4ec7e31687e97db28bf7a727631def31a435d0e333"
    "en-GB"
  end
  language "en", default: true do
    sha256 "070018e65cf2e85013ffd7ceff046877dfd3b489b2f5c07344719107531c4b72"
    "en-US"
  end
  language "fr" do
    sha256 "b59376e75051d737ba5207c2dba33b2f208af9a1980013e8cc26530aacb7ffe0"
    "fr"
  end
  language "gl" do
    sha256 "0ab9f93cb9d54778388032da139416bdc082daaae25976ff846d4d523ce6b862"
    "gl"
  end
  language "it" do
    sha256 "a48689347cb7017258e6986620ca05d1b310caf93a00f14f732af8df7b67d854"
    "it"
  end
  language "ja" do
    sha256 "cf595fff831de8b065a41e4cfbca53bd86fc2db62fc8385feda66cf268f1cf25"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "93023718cfb6c8676ad47929c3d5385edca74cb98b6b64d9a2c02c98c88bdb17"
    "nl"
  end
  language "pl" do
    sha256 "65195a3c43f23c8a45c50ca283c5cd0c6790242c69ed5826b7137ebc56bf262b"
    "pl"
  end
  language "pt" do
    sha256 "7f4860a87da4540a8061998600d2d88ce751a4c70f9f1549d6c17a9fd39c4352"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "7c633afc14997dc470047a33cf7d7908e1c7151132ea67ce11e86373d1cb83a1"
    "pt-BR"
  end
  language "ru" do
    sha256 "e52d4ad452d94315366bbf21a31fb23f7d538089da9aa61b1664c5b5cb972bfa"
    "ru"
  end
  language "uk" do
    sha256 "4f0ea4dc610a323ab3edafe21a43ebc66d0149e562c766efc77e7a4a598f9395"
    "uk"
  end
  language "zh-TW" do
    sha256 "e0f9d4f500122354aa436c2ff149eaddab74a1b09f66f128123d47528b987c8b"
    "zh-TW"
  end
  language "zh" do
    sha256 "1aff9b0a6079fe4b22d5b00c3251f2709c124b15395f739ed5200cb51d3a4fb3"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
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

  # Sometimes different languages can serve the latest beta version as Thunderbird Daily.app
  rename "Thunderbird*.app", "Thunderbird Beta.app"

  app "Thunderbird Beta.app"

  uninstall quit: "org.mozilla.thunderbirdbeta"

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
