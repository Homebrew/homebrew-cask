cask "thunderbird@beta" do
  version "156.0b3"

  language "cs" do
    sha256 "39dd64b733cf9d5ced1c4a424a02b682d943356c3428f6404e2b1377464e0976"
    "cs"
  end
  language "de" do
    sha256 "b61661f40f147f1a8c9ce934487a01c907bcdfc2eb94837e069ffa9cb3517899"
    "de"
  end
  language "en-GB" do
    sha256 "db90619f86d7e132c1b37d9326610b5aa4285fe7cbb6e2620835db06b953d525"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4b116b89d6143a36207bea0689866a9f9a0d0e6d1fc909d6a09ff684bfd04dfb"
    "en-US"
  end
  language "fr" do
    sha256 "b3afccee311b977407a88da22fe169093e9c2c95153ea645ccb9401841b9e89e"
    "fr"
  end
  language "gl" do
    sha256 "e56d305dff6a73074f926a77606ab5137cfdf3b31ef3ec656fb4491329fb7e3e"
    "gl"
  end
  language "it" do
    sha256 "35b80948644610e28a543cd5b29b50b223a9341bed283e88e28c1b2d89a7e308"
    "it"
  end
  language "ja" do
    sha256 "6116177763fc5ef6eeb0bfef7a5aae21bd95c5904b7295d12b6cacb5879f9d94"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "90af2e58d8ad38318c8867c3e75edc2c373bb8a7588c90ffa0414fbaf90c76b0"
    "nl"
  end
  language "pl" do
    sha256 "7982ca61bd277ac87bdc8f9683b5fea5e4544f54c242b52f57ee70af54effd34"
    "pl"
  end
  language "pt" do
    sha256 "fcabe050cf3db1ccafb322d90f78b0ff030586a8c9abfc5a76d16162234270c6"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "66001fc47b892e9fb1b4641866b0e33e1ea241daf0c693c8b5c81147f82743fa"
    "pt-BR"
  end
  language "ru" do
    sha256 "c9333a724f4ff33be9a0e22dddb37b61494b1b5da3ef7baab4ccfe52fe47c120"
    "ru"
  end
  language "uk" do
    sha256 "a3c62dd22af6d24724c6f50a4ff85d97451b733a8370762c6a40be6e060b67cc"
    "uk"
  end
  language "zh-TW" do
    sha256 "1411355b63dee45132fe4efc082cba6c67cee5c45ec13db97181591862c105d8"
    "zh-TW"
  end
  language "zh" do
    sha256 "8f3b9106e35a561db86e93e66c1bc2465daa75b3d4f1edabfe579f7fe786c911"
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
