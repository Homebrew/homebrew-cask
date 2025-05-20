cask "thunderbird@beta" do
  version "139.0b4"

  language "cs" do
    sha256 "21d9caac60b8f2dca5d2b14279b0f7840145b064bd7783d44663c4db7181cc71"
    "cs"
  end
  language "de" do
    sha256 "99da18d3149f8b6a2b585fd5f406a6a1d29b2d62badd69b678c653291b349aa8"
    "de"
  end
  language "en-GB" do
    sha256 "bb66455cc2feadf429662569bf4682462020a31c9d786f39f1169b22f493fbb9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5da5edd1eca698e84231e1392aba8ee2ab5a74a615b5b6b0332f2e50c4a21579"
    "en-US"
  end
  language "fr" do
    sha256 "4ac4f3a8c04c603432dd06cf40d422e0cd99241d6a46ed90c0ac46a117fa085b"
    "fr"
  end
  language "gl" do
    sha256 "97b0256a21959237bb8999ecc395583e7cec84da960f5a0d9db582c45eb1df21"
    "gl"
  end
  language "it" do
    sha256 "2235c6553e889c1d503ac164f540055057e008e4f3b6ff206238a8a5e45c2c09"
    "it"
  end
  language "ja" do
    sha256 "0aa87a5421fe6a29b89f4779a3644666711ad4782c2de7c00f0eae2d7635f0ab"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e9b09c0fd8a6f16492c0b57d68cc69e46cf4ecf24af9bb1e07fb5a1f16bbd77d"
    "nl"
  end
  language "pl" do
    sha256 "62cc37b6a32d99133c89d92776590525b7eac1a6d52569837a7821d410f2c83d"
    "pl"
  end
  language "pt" do
    sha256 "07021636154a8285706c0cacae0259a757174c5d2f9608347d68d4197d3f9c46"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "83afe4d50f6dc2a357272245485acc4de4dc677cf0212acc89e58e44bf4fc942"
    "pt-BR"
  end
  language "ru" do
    sha256 "e2c22d07e6c6c0ddc835bdb009669b886787043abaa1780062095fb6f50a4844"
    "ru"
  end
  language "uk" do
    sha256 "7b1ed660b5e42bee30a2abc2924f97fbb031d8edd14fffcb9de9146ab99609cf"
    "uk"
  end
  language "zh-TW" do
    sha256 "bc9d0717930595fefdddf601c1e9563b3f9cc2ced4a8852ad6728ff5e38031f3"
    "zh-TW"
  end
  language "zh" do
    sha256 "da95d39d958a56514023dbd3b6607081e26aacfce5c36d9d241c4d232423b780"
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
