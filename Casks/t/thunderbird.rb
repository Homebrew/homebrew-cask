cask "thunderbird" do
  version "115.2.0"

  language "cs" do
    sha256 "f2adc9a8b032af4b9ec0b737300acfdbfc56ebcc8966fe27bc9f51c087c3488e"
    "cs"
  end
  language "de" do
    sha256 "e82ecfb52d2e3d5b83abbdbf1cee91ecf8f26b675a616ed2553523900eba030f"
    "de"
  end
  language "en-GB" do
    sha256 "42e2476da3eebd7ee1c90b55e419b1318298baa7bc7a747a1cd8939ec18d5443"
    "en-GB"
  end
  language "en", default: true do
    sha256 "340c6d1fff72ef57f63f0e2d7d37e307696fae67f42cab260dd588eac36a3153"
    "en-US"
  end
  language "fr" do
    sha256 "3afcb14f25466b4de80c06be69f2ff71c2c2a4a780449a98dae69ae8ddb72ac7"
    "fr"
  end
  language "gl" do
    sha256 "060071728d3ba54273053ff7581bdfc94bd18bbade58832689e5d51774765619"
    "gl"
  end
  language "it" do
    sha256 "51b8b461d26c129d6b3e33c1a9550d8780892f38948dd0490515aa589c688c35"
    "it"
  end
  language "ja" do
    sha256 "fd688bb2c695f618d18bb001d58b820a6668a1019224da1f4256740be0d06b57"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "7883911e053dfb12fda272017c532f454f633fd061c6a7db2f4a219854e96d6d"
    "nl"
  end
  language "pl" do
    sha256 "da887aa95cef60bc8a8cf5e4a97fd4f21dc2af6942465ee30801d6cd52d3f67e"
    "pl"
  end
  language "pt" do
    sha256 "34d8c94cdd5ec6d58344ee22ed39c53ac5af06244dbfaf780b697dee41ffaff2"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "bbbb799efe0cf265998a0854075b097305d7d3fbca976fb251b625fdf11f7ac2"
    "pt-BR"
  end
  language "ru" do
    sha256 "c6569dcd425c58ddeb1d5f9da714438348d7e6e3eb07108aa74034dec88bce76"
    "ru"
  end
  language "uk" do
    sha256 "5797918042b81cdb50b6b579483da801b49e5d50a33bdeb11b0d90a1a076bcc7"
    "uk"
  end
  language "zh-TW" do
    sha256 "11836a53443311e5cb7a297de914e92f38e4bf28573f1fac5099f663a48799c5"
    "zh-TW"
  end
  language "zh" do
    sha256 "c8b52f5cfa55a85577ccb3c918fa51064e281b43edac44ac17c4b487df813ab8"
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
