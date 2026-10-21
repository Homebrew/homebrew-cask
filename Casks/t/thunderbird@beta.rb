cask "thunderbird@beta" do
  version "159.0b3"

  language "cs" do
    sha256 "e6e91033f8a2d82e39f0b9a2f0a40e414d95f6c87bd5f6241c13f5bcfaa691e6"
    "cs"
  end
  language "de" do
    sha256 "273bc534bdbb3e63b80c30a32a07f0831be3f8912d3944e24525cef0966dce24"
    "de"
  end
  language "en-GB" do
    sha256 "0079eb37ee633eec9815394def2fe8de70120fe56aaa6f32d2804a73d2de9be1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d1321ecf13bca3e533dabca31d503c1de45a612b982b332592379df046aa8449"
    "en-US"
  end
  language "fr" do
    sha256 "3e43e5566a05f01459c57bcd519b53e862c0f76fe6204807d07a7bcf7a4e98d8"
    "fr"
  end
  language "gl" do
    sha256 "6844aea843412e0a36ec54b422d6dc200b35f29ae4adcf7ed40c452f1421bfe0"
    "gl"
  end
  language "it" do
    sha256 "011fe5eff0c26d9e60d6299f9791c1ad74784d7ff7f950375bc6c07e0e9bf09c"
    "it"
  end
  language "ja" do
    sha256 "76665f1bcf3835e748f6c4694042aefedb7582507dee29f09c26ecfdaedd395c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "66ea824fc95c22b3459062b2b8303877a28b77ff6c6e84f6790ecbe9833dd9d8"
    "nl"
  end
  language "pl" do
    sha256 "94dfe9e05069a39ad62e6bb70015176ea9d388af5decad1276d564ee27560cea"
    "pl"
  end
  language "pt" do
    sha256 "8921f0f8e53de9e16581a5e562189462ac8ab6f096ed06d4b6254eee26c80478"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "c391c440bc13d936a5c9c0e32aa609a81f3c987516bb8bf86bc191a898ef8709"
    "pt-BR"
  end
  language "ru" do
    sha256 "896f3964c9fab1e4f6ce2ad515962b9e23bd9116ad306e34739d18ca5d2c6bcd"
    "ru"
  end
  language "uk" do
    sha256 "8780aa8d7092498b973f6f29b46bd8a9dbcd21318d1e577df87f86b1b95b4760"
    "uk"
  end
  language "zh-TW" do
    sha256 "a6d1e52a227b150dc36a4dfe3ee33f25c3458d8d7592fc5d018745e5c19a3c2b"
    "zh-TW"
  end
  language "zh" do
    sha256 "cf5d8fff322993a1d4bf1518285eac104f4a3b51b93fe482c04f7f62c3e64569"
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

  # Sometimes different languages can serve the latest beta version as Thunderbird Daily.app
  rename "Thunderbird*.app", "Thunderbird Beta.app"

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
