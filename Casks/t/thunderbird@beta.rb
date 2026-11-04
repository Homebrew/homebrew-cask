cask "thunderbird@beta" do
  version "160.0b5"

  language "cs" do
    sha256 "0e8082b1735509c3a5319e8f924a67329a2ba6060d322a4da937b1180ee1d4ee"
    "cs"
  end
  language "de" do
    sha256 "0e3294b06809245fb6ea9441bbbc0483b28e3fc7551ac35dd5e2faacf2d633a5"
    "de"
  end
  language "en-GB" do
    sha256 "663124c0681797c76ef8935465a29a2dfaf9b52894da6d834e495eb62bc1d6ea"
    "en-GB"
  end
  language "en", default: true do
    sha256 "691c48d50ab2ac1a21762220e4d8c853a1624b6e0ad142abc70522f504357502"
    "en-US"
  end
  language "fr" do
    sha256 "b8cb0b71f593db92f620c218014225e809398879f5f78ecc121ebf392e111c04"
    "fr"
  end
  language "gl" do
    sha256 "62d4afee888cb354345b4b3c61f6a92de6c935271d815c4bc0f79768d5b6c5b2"
    "gl"
  end
  language "it" do
    sha256 "c6a00e2abc4bc1a57939f454712b07cbc06e7f1440dbf4b3437384823f42e70a"
    "it"
  end
  language "ja" do
    sha256 "f05f5c7c6c16d76b549b9d850e806e600d72cc10cf6e6697ad7e24860dfc47a2"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e4dbf100b185379d58b17bf927035e905d6b23d58e34b77b5c86e447359e8f33"
    "nl"
  end
  language "pl" do
    sha256 "eee889ff65bed0ac4ea130aa74edec754850604c131f204f6f65e1e8b4c922c1"
    "pl"
  end
  language "pt" do
    sha256 "d09c68c748ced2db0891500d2850024208984fc8b74c828bac502bcc918583bf"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "8f49901ea7632e526d2ac9d8294d5b0768862df0d62e183b89f442b086e54842"
    "pt-BR"
  end
  language "ru" do
    sha256 "978d28884936b02a9ae99b591989c123e7bf164e5fda4f80e28281f86c2c6798"
    "ru"
  end
  language "uk" do
    sha256 "c77adb1161740239425841469f1019ccbf79f0f74a0ae77c8300b8c37353af6d"
    "uk"
  end
  language "zh-TW" do
    sha256 "739d8869b2b35d4eb4886f3f73854d4daced9a9ff80799e83272e5138ad34ea2"
    "zh-TW"
  end
  language "zh" do
    sha256 "1b878d90a67e2416e11f7c85dd7d258c3e5b18ce1e7e5f94c051d885180f5957"
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
