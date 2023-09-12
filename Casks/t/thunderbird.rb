cask "thunderbird" do
  version "115.2.1"

  language "cs" do
    sha256 "a7a3a245af8f1bb4f1a7ae59ddf36f2ece1683a3ced5ac7bc2cb41b766483550"
    "cs"
  end
  language "de" do
    sha256 "ce0269dbf71af731a21a8c0bda4e9a59c4e8b08c02c5c4b50300ed9407d4298a"
    "de"
  end
  language "en-GB" do
    sha256 "4596af7bd4b1f7e8e8ab7f0589034adf4fc342b6c0d2003dcf055641ae9ccabb"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0c679d31825f8a024ce40e3484a2a5a8f7200fe561fa3a288aec82dad9146b0e"
    "en-US"
  end
  language "fr" do
    sha256 "216a4eb6d6f61d24b6172f762775190f147d6b2909ed55745b327a935cab1d4d"
    "fr"
  end
  language "gl" do
    sha256 "ebc0bdf7b081831b158ce29767b167201caaa8b0187f944c1f625f5dc05ae546"
    "gl"
  end
  language "it" do
    sha256 "53ff37244fea870616f71421002e28d8a02cd0e4b245723855ade50fafc12451"
    "it"
  end
  language "ja" do
    sha256 "d1aab7f96a0fe4fa5cf9bca83e33e6b9144bc0bb6da77d0a7444dafe6737ff2e"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "77a57ac799fb9a92b4ec9d9727645bc230340d7f1a15f0f2c745bc706bf5e2fe"
    "nl"
  end
  language "pl" do
    sha256 "6e16654c4cbc49d753a101f2ec49a404e85d24669f974fd2f7e821f70ef94261"
    "pl"
  end
  language "pt" do
    sha256 "28d98946934f0d06312f762066e15714721a3b52761a0aa1fd49cc1e844686cf"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "6ef248310219b163ee44772fb2bfdca4eb165cd361d766f9ea44272e39ceeede"
    "pt-BR"
  end
  language "ru" do
    sha256 "d14d72650a58c9537d99e5da974b90a3413287c0968283831af309c2cb51bc9b"
    "ru"
  end
  language "uk" do
    sha256 "d0f5e07e7f8cc8ba5fa23bc363cd1ad985065932d12bd3ab215174addea9f31e"
    "uk"
  end
  language "zh-TW" do
    sha256 "d55258b249ba2e6ad0132124bb93a3678aa40c126dc396be692b3d27aafecc48"
    "zh-TW"
  end
  language "zh" do
    sha256 "03664276354b7a2c7e9fd309008fe5ef578fbf7155891b0ce4eb8e4b39252ba8"
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
