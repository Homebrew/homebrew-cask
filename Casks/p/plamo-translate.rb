cask "plamo-translate" do
  version "0.8.5"
  sha256 "98ac27afb26b97697e283400555929174cfd11495f65b7336f8de7628b6f863b"

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
  depends_on macos: :ventura

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
