cask "thunderbird@beta" do
  version "159.0b2"

  language "cs" do
    sha256 "dcd48489cd5b0b06752137c253d3df38b7dbd0569866662d3f1a845c60032795"
    "cs"
  end
  language "de" do
    sha256 "91b8e976b596b8d099c895514801d79d6d425208ee0678b5b68b77dff81d80ec"
    "de"
  end
  language "en-GB" do
    sha256 "23956357146b47f67ef2f9181d5ad8b6885ab57f3c0e32fdfdd6d2e40bf3109a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "610489f2b392d38c77c62268eca4df621d333d2699eba7e706464dd866d35c87"
    "en-US"
  end
  language "fr" do
    sha256 "986282dd278707d1076bf015f19e0c89135bd925bbc884206bb931b38fde562b"
    "fr"
  end
  language "gl" do
    sha256 "e64f00f39c84c33447d2a5b0dfbe8f3a4db8f95dd4c8a8bef20b93367d32f528"
    "gl"
  end
  language "it" do
    sha256 "fe48383c51e46a0cd5beead7e89a273b205c69d8a30c4cd8377c76503dd2ed5e"
    "it"
  end
  language "ja" do
    sha256 "5bde107f10c4fd44fc12acb3cb14225b5dd737d1cfb020a8f00e241f90998469"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "195732f0c9eea9df529fa0a6fa563a4b541684e7aaa92a95d9de35aecf38a501"
    "nl"
  end
  language "pl" do
    sha256 "4a7269f2ebb509a9547da37fee50e773fc00576fd87d181e84bff2a852a9bf8d"
    "pl"
  end
  language "pt" do
    sha256 "f0996ebebdc6659b7c3214720e79c057cd4d13e44f3455adaaf65fdf6d60e3b1"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "e59b3bc84946f7d7835d4bb86a5306e60a663964b09176bae7cebcf4fc85cb5b"
    "pt-BR"
  end
  language "ru" do
    sha256 "c91a9cf8fc9efd652dc5191907d3d4bfadd7cff4b0aff20f0ef83e9bd4612639"
    "ru"
  end
  language "uk" do
    sha256 "87e33a60028a0932993d61cd112b4c89680a25e7f977f862c8ed8a8105977501"
    "uk"
  end
  language "zh-TW" do
    sha256 "cb2ceab52ff64e2e6a904cc2dc1bba882384f03282d5a0e6158ccae9a1061d74"
    "zh-TW"
  end
  language "zh" do
    sha256 "16b475d661f8a05151bc69615f3badfbd34096f188fd40d053fe6beed62681b7"
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
