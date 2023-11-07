cask "thunderbird" do
  version "115.4.2"

  language "cs" do
    sha256 "0767d948a45cbbae41cd21f55d5e510c4922d5253dc6acae253cc6554cbeb021"
    "cs"
  end
  language "de" do
    sha256 "16435b4f14945a4b3603e6f5e1ac2766a9e98b1411baab0afbf8108952ecd31a"
    "de"
  end
  language "en-GB" do
    sha256 "86f8c473c591da499a83eab61b5062dbece2d6c558f0d01989dfb959a4d35bc7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a34260e5d47132b79ee11a817f7df39f9d5908e07e86b32cf59c41ec5f376f22"
    "en-US"
  end
  language "fr" do
    sha256 "be7bdf2500cd1b7b28e55d886ec335ae15599af6d6adace4e65beebf8a73b9b2"
    "fr"
  end
  language "gl" do
    sha256 "8503ea15212bdacff693b78d39ba1d4987c20d164244a4c606a7a9f613572d38"
    "gl"
  end
  language "it" do
    sha256 "abd221143125b682c42b17aa8937e0654487c0e5ac865a8c671fe9aa0dbdfe00"
    "it"
  end
  language "ja" do
    sha256 "e6dc5ea5f08852f4ad26c451d9613aca9fa5ba3dd2bfe9a660f41320213ab7af"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f9a61650975c7adc4185b89658436b8dbaf488892cbd616814eeead784824304"
    "nl"
  end
  language "pl" do
    sha256 "6f0f2f7a94b220854cd1d93b64eaabc4ce266e8744f62d0c8f1cf99098ef1c7d"
    "pl"
  end
  language "pt" do
    sha256 "ff52738b95c0507ba620bc1a2b8b58ab72969fd5d8cefd14d31825b9e69ac483"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "7a9469dc37383d9249ea6503d816c2ca61eac079bb23a42805696fafee9dcb53"
    "pt-BR"
  end
  language "ru" do
    sha256 "dffb57c1ded40cbd86e1c2a98c3d9806d2de406355a78f88e6e7d9a46da7e38d"
    "ru"
  end
  language "uk" do
    sha256 "8200a065d74f4ba79e58da5773b4284be27b111eb1e2a9700c724c0ec36438a9"
    "uk"
  end
  language "zh-TW" do
    sha256 "10bea561530939dfeaf88142ce1e1384eec0b7da7f53651b99f617437d9b36e2"
    "zh-TW"
  end
  language "zh" do
    sha256 "24164deffa1d95a9f9ead7d035c63dac3b736525e09719bffc09cb2f8a8ecf26"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/thunderbird/"
  name "Mozilla Thunderbird"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/"

  livecheck do
    url :homepage
    regex(/href=.*?thunderbird[._-]v?(\d+(?:\.\d+)+)[._-]SSL/i)
  end

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/thunderbird-beta"
  depends_on macos: ">= :sierra"

  app "Thunderbird.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*",
    "~/Library/Caches/Thunderbird",
    "~/Library/Preferences/org.mozilla.thunderbird.plist",
    "~/Library/Saved Application State/org.mozilla.thunderbird.savedState",
    "~/Library/Thunderbird",
  ]
end
