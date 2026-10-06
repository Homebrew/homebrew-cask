cask "plamo-translate" do
  version "0.8.0"
  sha256 "b5f4011742b5128078de74a6bf1aab53579652d10e09e969e18e452f0be77fca"

  url "https://storage.googleapis.com/plamo-translate-web-downloads-prd/desktop/plamo-translate-desktop-#{version}.dmg"
  name "PLaMo Translate"
  name "PLaMo翻訳"
  desc "Translator focused on Japanese"
  homepage "https://translate.preferredai.jp/"

  livecheck do
    url "https://storage.googleapis.com/plamo-translate-web-downloads-prd/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "PLaMo翻訳.app"

  uninstall quit:       "com.pfn.plamo-translation",
            login_item: "PLaMo翻訳"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.pfn.plamo-translation.sfl*",
    "~/Library/Application Support/PLaMo翻訳",
    "~/Library/Logs/PLaMo翻訳",
    "~/Library/Preferences/com.pfn.plamo-translation.plist",
  ]
end
