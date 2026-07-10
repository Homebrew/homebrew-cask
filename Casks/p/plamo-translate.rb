cask "plamo-translate" do
  version "0.6.5"
  sha256 "c12b3fb9ad09f3329142ae2ab5f8ac0ecb4cc02976a4f986f85ff47b3f554bf3"

  url "https://storage.googleapis.com/plamo-translate-web-downloads-prd/desktop/plamo-translate-desktop-#{version}.dmg",
      verified: "storage.googleapis.com/plamo-translate-web-downloads-prd/"
  name "PLaMo Translate"
  name "PLaMo翻訳"
  desc "Translator focused on Japanese"
  homepage "https://translate.preferredai.jp/"

  livecheck do
    url "https://storage.googleapis.com/plamo-translate-web-downloads-prd/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: :monterey
  depends_on arch: :arm64

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
