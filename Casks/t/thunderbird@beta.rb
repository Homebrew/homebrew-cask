cask "thunderbird@beta" do
  version "133.0b1"

  language "cs" do
    sha256 "9d2dc4bf58d41fa09acbabbd24532aded3873f33a8fb53d4740ea2326cbe00ac"
    "cs"
  end
  language "de" do
    sha256 "5cb652251234fbd596a04a6119d5fb2104d61730fde6e94f76701e52c97479d3"
    "de"
  end
  language "en-GB" do
    sha256 "2556910675f895d661c4e52afa6e29691c732f01b44fcbb37a1f91e0af425138"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c51ed31bc8d02632a7697bca769a74b01a77e6dcb9bda97f445082bfd3194138"
    "en-US"
  end
  language "fr" do
    sha256 "ec3ce5e5d69d825857e06869199046919e11ea4d7941ff747269b53f3eed84eb"
    "fr"
  end
  language "gl" do
    sha256 "cdea6a2e1cc06080cdb1a260e642ca30ea2aa0480b4be9e48196a1986a99d1e5"
    "gl"
  end
  language "it" do
    sha256 "74a7e764f76835b5d72fc761c1d991a980c78308e5c1d4ac40bf8b6b4f234e65"
    "it"
  end
  language "ja" do
    sha256 "e9729fc76d9ed7a51abaadf85c4a448f331e89bbe488e194bd86a119e4ce4e2b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "130af20efabade3137435244c7f7852a0503784969c193d025ce30251c95207b"
    "nl"
  end
  language "pl" do
    sha256 "bcf823aa65e7a150a8929c6d0d26795b973b93fc560dd59845bad7ca306cf5c8"
    "pl"
  end
  language "pt" do
    sha256 "bbb833b0e746583c891b7e474f906dae788e6c8c75936a0a0331ac0b16cc21a7"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "e69c1a7aaa7ad91e64fb8d812d76ea60ed5c944a60e3e9ec6361714fc9938f3f"
    "pt-BR"
  end
  language "ru" do
    sha256 "0cc40ff5190f5ce35e2a33024b20b3c2612eb56bf3d0709b61f2beb9eaec5208"
    "ru"
  end
  language "uk" do
    sha256 "6246fd6767b25f555370ae7693a62d1362da90615a13d525031ef13feb33d92c"
    "uk"
  end
  language "zh-TW" do
    sha256 "c216d5d0ca49d9ea68e73b62fa3f683c518ed1ccd085607444744b079e74cf11"
    "zh-TW"
  end
  language "zh" do
    sha256 "655e86aff06d81783f560d728d83a462d7144c9c08f9ad64a416ad88ea1c136d"
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
  depends_on macos: ">= :catalina"

  app "Thunderbird Beta.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird*.sfl*",
    "~/Library/Caches/Thunderbird",
    "~/Library/Preferences/org.mozilla.thunderbird*.plist",
    "~/Library/Saved Application State/org.mozilla.thunderbird*.savedState",
    "~/Library/Thunderbird",
  ]
end
