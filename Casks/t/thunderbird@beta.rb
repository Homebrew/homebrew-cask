cask "thunderbird@beta" do
  version "142.0b2"

  language "cs" do
    sha256 "e81bed4d2d4675715b4d5eccf5f2a9e006554219657e0c323acbc3c38ada505c"
    "cs"
  end
  language "de" do
    sha256 "6e7d12828ff22bdd672d474197aad72cee4a4d74e51ffb2f07a0fa61343fe1c3"
    "de"
  end
  language "en-GB" do
    sha256 "01b74d3c3d25cad74d99c21fa5fecb664da1bdb1ba40fb1f68bc3888950fc012"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8c91c17ba4a5f18b02b27b77c19cb5c94aa4e19019c0355408440017dcf6eae3"
    "en-US"
  end
  language "fr" do
    sha256 "ef0f4bffde75bc8e6a4147f266248b59e7d9b075c4a6d6a329db1e7f5c3a3ad9"
    "fr"
  end
  language "gl" do
    sha256 "7947fcf1e25f3e3584dd839041dd55275eeb87f39c65533e79145c96a81754af"
    "gl"
  end
  language "it" do
    sha256 "37adac4ce00dd40b66324076f37655e2605a92f06c27c5828ab35ec42ca61c36"
    "it"
  end
  language "ja" do
    sha256 "99f3c1d8bf80e1610a2f422d56c1d265c994df33636c50c3113415867274c0b9"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "78e0a3d6bf5d88e1d24999138218304a611c4d1916c9f2ce626d8259b7aa67aa"
    "nl"
  end
  language "pl" do
    sha256 "12c816ef99b6b0903fb747b467e7d29c48ec9ed81884bddb8291792477ef62b5"
    "pl"
  end
  language "pt" do
    sha256 "2d94a80a4ac75b903aab29a1e3e6f6e5b21757d7596d8af910d027f2a274535f"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "c96708bc0c17990c5b64e00b105d18a597ed4a501de06c2162053be81e76c767"
    "pt-BR"
  end
  language "ru" do
    sha256 "717d6637c224e41a88fcaea00c4c6eae8d9aa86164361de4bb15b98c704b2ee7"
    "ru"
  end
  language "uk" do
    sha256 "8e54869b04e3341613f9c4d6afaf6c468a533d25a22d90f1865fd087da08cb7a"
    "uk"
  end
  language "zh-TW" do
    sha256 "78cc3f89a7ec4ad11bd33de4be1815c8950dc49486bdb98054ecd0d260ae2e13"
    "zh-TW"
  end
  language "zh" do
    sha256 "be150a9606d8bcd13a2e7a357ddcde5cdd218a17d32a5e61c142900f36be6147"
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
        "~/Library/Caches/Mozilla/updates/Applications/Thunderbird*",
        "~/Library/Caches/Thunderbird",
        "~/Library/Preferences/org.mozilla.thunderbird*.plist",
        "~/Library/Saved Application State/org.mozilla.thunderbird*.savedState",
        "~/Library/Thunderbird",
      ],
      rmdir: "~/Library/Caches/Mozilla"
end
