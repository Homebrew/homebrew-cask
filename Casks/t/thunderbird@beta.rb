cask "thunderbird@beta" do
  version "150.0b1"

  language "cs" do
    sha256 "3bc48aa2b65cba6d04a47c32331f77678f84d50415496b6e0cdc27a090690f46"
    "cs"
  end
  language "de" do
    sha256 "93b828ca15fd6d0de42120445f5f8210b57be1ca94b47b0b69baa4a697a70036"
    "de"
  end
  language "en-GB" do
    sha256 "fed658d69232e2f7d9f1b34812498ebd657b236f30b68f8de4626806197574e2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4b004bfdc58484f262967f05549da00204cb4c3910163d9ca6433d2003bde029"
    "en-US"
  end
  language "fr" do
    sha256 "92335cff4d1b1e01920a93eda9be1eb89d8b6543fb0f79abd50f7c9c07f9b8f5"
    "fr"
  end
  language "gl" do
    sha256 "86ef0d60b5b954ec70e553ef3ed30c790e4abd98510646212a7bf4cbf14b458c"
    "gl"
  end
  language "it" do
    sha256 "e20eb1fe9611338eed0a7d78f8f3414f138b3a191ea2fab44420da504ff09fb8"
    "it"
  end
  language "ja" do
    sha256 "9623b79d3d5e3070a4f987f2329b66da305c3afa335a64be738034d6b36cca15"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ed3779e740bf9f8fb766b6fe2847ad3c27169b31eab5fdf66bc8922f1d82f82c"
    "nl"
  end
  language "pl" do
    sha256 "28ce0abc1aa42de78a1f67f1eaa9498cc8eaa7c1a83ae854ea8ddfcb4e4db2f9"
    "pl"
  end
  language "pt" do
    sha256 "307d377d12b9da552df396b07beed3ea28c994a46fc7a35b76495127c395f34f"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "74aa3aabe47cbdb26870a58b5fb2ff734b21ebab64eacf9418420bebf4f91177"
    "pt-BR"
  end
  language "ru" do
    sha256 "7a918285a1adfef3de9ec50be2a9a76331946676d885ffaba4bafdaab94d87e6"
    "ru"
  end
  language "uk" do
    sha256 "8ab2b96f1836f3f728cb615aeebde6c2e18ddad9cf7a217d822eee0bdb438a8a"
    "uk"
  end
  language "zh-TW" do
    sha256 "5d3444bf9095b90b7bd08351ebec4e3d136cc6a6d9c923c875f94ccf85d54cd1"
    "zh-TW"
  end
  language "zh" do
    sha256 "6ed5eb84b9a2f6e746c157d6d0d7e250d0a029874fe972977c9cd0f0c4c5a738"
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
