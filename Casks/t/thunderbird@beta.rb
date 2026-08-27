cask "thunderbird@beta" do
  version "155.0b5"

  language "cs" do
    sha256 "0f8099290a6a458a68f9ce42c689954294e521757f4b91bce210df0825bf1c63"
    "cs"
  end
  language "de" do
    sha256 "afb8600551804a9d1fd86af3fa58953788909018cea3f1146a50d4154110ca6d"
    "de"
  end
  language "en-GB" do
    sha256 "551c49541504fd072fe60cb7087243864e3e766aca661f67608ee7dfd75a8c49"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a4a48025d220871f5c8e58aad655752f410237daa548c7a3e1ae5c64ca5b6a77"
    "en-US"
  end
  language "fr" do
    sha256 "598efc675904b4b5df70a3e5a3092b0aa163038d9947f88994c0558b2164c2bf"
    "fr"
  end
  language "gl" do
    sha256 "9a9812179a60aea1d923f5d7809020021362ba85401872cdda4edf417a6e94f5"
    "gl"
  end
  language "it" do
    sha256 "dea27ac5cfef497ae755742b9859b351cb72be0ade0c1612422759d17eadb5c0"
    "it"
  end
  language "ja" do
    sha256 "6698839643cee7c24eca536b9716b97ce1919905273a31f76b8d4735f52149ce"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "b2ca16e58e713583fcd15f83edb8ccbdef14ee8a2b1340111ff763c6883ba94c"
    "nl"
  end
  language "pl" do
    sha256 "954c5bf4754ef0916acbce29434589a4406424457b8c9c0fb54de5949b6fa95e"
    "pl"
  end
  language "pt" do
    sha256 "854b3ca261f91a4cf66d096b9ecad02cce5d91167c8ceceff5ae87549df68e46"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "27d15715701880319ab0aab4c574a044c7ad6ebec1e5a96a4696b7e1dfaf39ef"
    "pt-BR"
  end
  language "ru" do
    sha256 "ebc1bfc4e90083e438b4def327a23998105abdbe3063e65140d423f6f742a238"
    "ru"
  end
  language "uk" do
    sha256 "a35c4189184ba84879a2d057738e82247f2a222a87fd710d51d5fce79641b607"
    "uk"
  end
  language "zh-TW" do
    sha256 "810755674e42cdbc121c8e21cbf86ac1d18879964c0d4faacc04b2e0fc988e3a"
    "zh-TW"
  end
  language "zh" do
    sha256 "52970bf534d24b8ac5a75432f7d3d544ccf5de1697dcce03fb326f93203e9f95"
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
