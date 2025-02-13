cask "thunderbird@beta" do
  version "136.0b2"

  language "cs" do
    sha256 "6fe78296026f67235176418e3e9c3a2a07924e12a016160a30efb531c332e5ff"
    "cs"
  end
  language "de" do
    sha256 "08448085bc1a870abb9d34633a04be002fa9b828b5826fe340ff434e88b8b575"
    "de"
  end
  language "en-GB" do
    sha256 "ecebaebf61f085ee7e4c117ed227fbb7bfd58a5cc132e103f0528df16ec8b24b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "94a79f5ebe5ce4a43f7e30c70be1356e1aaf8981234c5effef93a99d64b06610"
    "en-US"
  end
  language "fr" do
    sha256 "87fb3c4abbfc50c581a75a8c9ccd2011fe9a83dcf9f37787eb56a1790b62179c"
    "fr"
  end
  language "gl" do
    sha256 "176d528fd87fc1445f2e22a6ee0d1268c8790ffc52ed3cf8b4b74e17785b667d"
    "gl"
  end
  language "it" do
    sha256 "ad61a7e11d24c82a82274d80f21b156b32add87ee0f9359632a64f3b2b9431e7"
    "it"
  end
  language "ja" do
    sha256 "a29e2e478e5ba88108cb4577a6f88fef1fe208e46a8c442fc97faf391063723c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "d26767c698225ec9f27c22f1d0cfd6545d3e45ddc2c4528949df4540664f5294"
    "nl"
  end
  language "pl" do
    sha256 "dd0b9acf337304d275d1e6fe9803fab940fa0d583542cca34faccc24e0ad9a71"
    "pl"
  end
  language "pt" do
    sha256 "ffd88df4044d77d6e0f54245ccf3b07cd90ca2f04c557dd33821e16eb58704fd"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "2def56ad322418c5c0f5c2c5d8dd9b42f410d3f7639257cd1ef43fdd63d5fb31"
    "pt-BR"
  end
  language "ru" do
    sha256 "e8d0092b3dcb7ffa7f4c78005bd0dddd5220254703d898aa39fbf4c0d87e5dce"
    "ru"
  end
  language "uk" do
    sha256 "d9ee0b63f49ba1998fb3d4cf93a44e2941fcfaa1af9e88a2b3b30ed3fa23685d"
    "uk"
  end
  language "zh-TW" do
    sha256 "06bdf5515519c4d55046f18884d6e41498d805f5364004e5839a2873e442977a"
    "zh-TW"
  end
  language "zh" do
    sha256 "49c4ea917034ac7c930302c963d7058be9a0f3aea576d001e5d3e10e80eade16"
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
