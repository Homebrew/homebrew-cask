cask "thunderbird@beta" do
  version "160.0b1"

  language "cs" do
    sha256 "119184f10bc06a7d92145275294da5dca8053b861d4bbccae629a534754bab39"
    "cs"
  end
  language "de" do
    sha256 "05e88f33ebefa294817d3f01554a7f666e4d46bf2492329549d7802b8dae256b"
    "de"
  end
  language "en-GB" do
    sha256 "d67e026626df4cfebead5f2a377b5aece6b8399456715b471f979d011dd32875"
    "en-GB"
  end
  language "en", default: true do
    sha256 "40657d1b0631343b15fa00a7b9283ed1994f26bd9558ce770a5e8243dd1e1d85"
    "en-US"
  end
  language "fr" do
    sha256 "4cd5d946b032d9725afea61eef9ba48115885bce0b05c2a496e80b047608369f"
    "fr"
  end
  language "gl" do
    sha256 "c55b7b4c91486a96f381438ebd4441c52de342e2708eda41e00332045b7071e9"
    "gl"
  end
  language "it" do
    sha256 "f9b1760535c2783b115ee239f830ce4d1dd1ee5db5f6fe076d73ff693685f65d"
    "it"
  end
  language "ja" do
    sha256 "4fbba71a46ac51b8bf1a58cb9d16710fddd449d5cb31d245febfd010c16d7bf3"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "d4b05be1368d6ac8b35d8a0d8be47e48096987dac687c0f01dda496b01a7fbb6"
    "nl"
  end
  language "pl" do
    sha256 "1ad80551b784a642eaaeabe7db31d335a18bc9a59600d2098ba72268f43fd6e4"
    "pl"
  end
  language "pt" do
    sha256 "e63611c1054aed908abcabfebe958b2481d8e5f8a24d8cd68e6fe644f7c30ccf"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "678eb46eaaf1248a5d86fdcd4acb81074d0518b3f3f768046b61ebb81858626d"
    "pt-BR"
  end
  language "ru" do
    sha256 "48d8054e10e07e06091ab7fbc9acab5aefff5953bac6bfaaf9826392f657f700"
    "ru"
  end
  language "uk" do
    sha256 "257cdbce0de0564023acfb9c94cac08b646871afc83d017e653789de07e4858d"
    "uk"
  end
  language "zh-TW" do
    sha256 "c93a83d2b5006bfbc648cbd2b23fa939d7d196b1da49c1ed6b8899db9759412e"
    "zh-TW"
  end
  language "zh" do
    sha256 "d95a16d9a6d4d4db89aa0de7f28c15787c9bbe219498ffc0dc362096923c71b6"
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
