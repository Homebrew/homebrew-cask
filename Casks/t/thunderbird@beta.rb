cask "thunderbird@beta" do
  version "153.0b2"

  language "cs" do
    sha256 "57f9805dc9be6a657bb4c2315667e75d29451c2b0eec0251f20dd23d9efd2643"
    "cs"
  end
  language "de" do
    sha256 "87586f8aad028eff5b94ee087f5b9bf1d5f055ab30417b00c873b2d12c2c8daf"
    "de"
  end
  language "en-GB" do
    sha256 "d936a373f58d85ed0edea7c3d279c356d09b3ed1c58dfb4038f3d3f24defec10"
    "en-GB"
  end
  language "en", default: true do
    sha256 "83953286b1021d3272b1a312005d19957c773fad123a71928dbf2e7c6120b3e8"
    "en-US"
  end
  language "fr" do
    sha256 "3da9301d074ec1265016104a87c4aac6c59ba40ed78916a22ff9df6e8cd3d92a"
    "fr"
  end
  language "gl" do
    sha256 "2f10d81a6088bc4264d95039524eeed0933f2998695dbae0bdf516ba42da734d"
    "gl"
  end
  language "it" do
    sha256 "7f10ea5070ba56126607888cdde04e7bc716b1dfc5c91d5b9d73d49da54820b9"
    "it"
  end
  language "ja" do
    sha256 "33a145a0654022e69629b32403effd0f2d761254a7f4cfc30783adf34a351073"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "50c99c0c20792f788f77aafc30c0104ff11e93282673edad528d81f8e9222f0b"
    "nl"
  end
  language "pl" do
    sha256 "5bae3cb90c51b0fab8535786b05fd3bff791a958076b83f58a3603e304ca0382"
    "pl"
  end
  language "pt" do
    sha256 "3ebae0cbfe626194a993ef810990793199bb23839d171c1e6395466fcbc49168"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "3e7850efc49a048b9dc71ef6acad7953488c6f24cd7d4330c5c7f39d8221a69b"
    "pt-BR"
  end
  language "ru" do
    sha256 "f6f2e9aa0f2765b82f46a1e59b46deac9fa107e66e59fe4f2b279783cbdd16dd"
    "ru"
  end
  language "uk" do
    sha256 "5db3a8f4d6bfd8932a40ff094d12190e8da8930e0afce61bf43772da4a7c74ee"
    "uk"
  end
  language "zh-TW" do
    sha256 "471c01981e7e2cf81a11265a7f842df1b2654ac85995f35a694ee5fa551df3c2"
    "zh-TW"
  end
  language "zh" do
    sha256 "5c6b8c37a1626da2aa785af9157682e53ab660a82d8e40d67b78269c349d8ae8"
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
