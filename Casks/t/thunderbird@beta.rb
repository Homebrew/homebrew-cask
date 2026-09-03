cask "thunderbird@beta" do
  version "156.0b2"

  language "cs" do
    sha256 "174ce61e1b57555eb491d1cdba2efe2547bcebd6414681279a92b3db70fc2ec3"
    "cs"
  end
  language "de" do
    sha256 "a4c45089724d382023cacca86cb6254909e4c6cdf53666925921b5a6a18130e6"
    "de"
  end
  language "en-GB" do
    sha256 "bca8501e8258cb1ba3bf249bde1e88dd92288759007bc6b7f47098bd0d68382f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b9254358c9605b64f55967bf662d95361f0a7f6da0b161ade61b55b5939ffde3"
    "en-US"
  end
  language "fr" do
    sha256 "b29b6c091131b6c3cf5306bd6c2b5efb74bbbf61cb3df26873ee4c0a4c4871e1"
    "fr"
  end
  language "gl" do
    sha256 "7c5e45f61b61b89c9cf171540bf020deb33f599ff8daf9f2c3357523b64f01fd"
    "gl"
  end
  language "it" do
    sha256 "d35479fe50fa74adea1e7fb34f6b499f4612335b4e6dd1bf82e9d9b09817d359"
    "it"
  end
  language "ja" do
    sha256 "fb4cb14f9ed64c6f04f9db2842220ef3854ac6e2cf5a95450e299981b586ebfe"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "59cd60e843237a43fc2fc35a10e5d35041ffa9dc915f708099a9629982004bb0"
    "nl"
  end
  language "pl" do
    sha256 "e53eb295d6172794312fb69c9cd592f1e2067cb0ba7e5f3710d3c9c2efe8e784"
    "pl"
  end
  language "pt" do
    sha256 "f70e4b79230c2ef05fcf27f8fce3401497c41bbb553242c32f90db88e8238b63"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "b789fc76a6be383b1301eb54db4013a6c5efdb5528cfcccd0ed03c577abe421f"
    "pt-BR"
  end
  language "ru" do
    sha256 "044241f31c4339bb4a83b0dfc5c7429bf99af0c4ca0e2d54763873357140f87f"
    "ru"
  end
  language "uk" do
    sha256 "88e81366d6b97b62ab451c7eb07cfeedd4532b95ee2419f43208278173faeb92"
    "uk"
  end
  language "zh-TW" do
    sha256 "7d833c217ca7667f2016f87a331e558aae9e09399b7ca1c2034d30561dacdd3e"
    "zh-TW"
  end
  language "zh" do
    sha256 "bb0e3fb042666836a908ce81310060409e4480850aaf1a8c1a212b95c4b755a1"
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
