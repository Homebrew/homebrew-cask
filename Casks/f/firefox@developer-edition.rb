cask "firefox@developer-edition" do
  version "129.0b4"

  language "ca" do
    sha256 "a04ef764b742f34155b56117345e43ff808947e521d5a948dd4760388bccddac"
    "ca"
  end
  language "cs" do
    sha256 "b3dccb0d3078ae6fbab2ea7b1519f14404442bcfba528533129e627d2ae132ef"
    "cs"
  end
  language "de" do
    sha256 "c53862cf4869e1757de19af3103de0771c591b2fa1be5a93f0db831383937df0"
    "de"
  end
  language "en-CA" do
    sha256 "858da7f5ac0c02249eff14a3b59e1507511cfc8c6f4a82048fed1d3915b32cd7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f93ccb28f930a7d10104d263e58ab04e7d192745714779acfabe7a9f23056c89"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3e5c15ecf67baa18160f2d99a5b3f7ce733332133343c8faf2a7b8eb8e16e4c2"
    "en-US"
  end
  language "es" do
    sha256 "9bc2d62f1816222dfe6da7319bc459326355e8630988881b542ef23bc3af644e"
    "es-ES"
  end
  language "fr" do
    sha256 "ce3039529d1e8f5ceef298ddbe771e3e5cc4131887dafb92335658a80f802830"
    "fr"
  end
  language "it" do
    sha256 "580b7fc6a134e844e59606367c56aec6ef1ea8460338ac7649327baa6066c648"
    "it"
  end
  language "nl" do
    sha256 "b23986f5a1527a67397c149d150ab162d53a7eb5e760f4369279d4d8f1203277"
    "nl"
  end
  language "ja" do
    sha256 "4e7de4d9d3a2beffe46bc31d4963430b18b76252189f27d7b557b2c2429e22d2"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "3aac59819e9589ddb2bf91c7d6eaf4d2f823c3677c551139a22426ce21fa6b6a"
    "pt-BR"
  end
  language "ko" do
    sha256 "6e9ae5f07d7cc9c2f55de6bb82963f81368ead29e13640df243508f4ea7b80ee"
    "ko"
  end
  language "ru" do
    sha256 "86551b513082e45c789f8e89a415e5771c50b942518d492dc694cd55f9222c8c"
    "ru"
  end
  language "uk" do
    sha256 "b9ebe77dc53f8db51d6c3351b2ccd5ca951aec0fdcd4d797ea70a1ba2bd3a6dd"
    "uk"
  end
  language "zh-TW" do
    sha256 "ba43e6108240ac49612367b60ffd2ffac16686ea67565324cd3b711721511f25"
    "zh-TW"
  end
  language "zh" do
    sha256 "54aac67214b6bf32aad6566f507eed91add76291cc8b436930756fea3a9ad4ba"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/devedition/releases/"
  name "Mozilla Firefox Developer Edition"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/developer/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["FIREFOX_DEVEDITION"]
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Firefox Developer Edition.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.firefox.plist",
        "~/Library/Saved Application State/org.mozilla.firefox.savedState",
        "~/Library/WebKit/org.mozilla.firefox",
      ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla/updates/Applications",
      ]
end
