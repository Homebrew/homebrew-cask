cask "texshop" do
  version "5.20"
  sha256 "84bb90c1f6c3fa3e5adf154a0242eb09e871438161ff1d1a859ff5337fb569b5"

  url "https://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.no_dots}.zip"
  name "TeXShop"
  desc "TeX previewer"
  homepage "https://pages.uoregon.edu/koch/texshop/"

  livecheck do
    url "https://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "TeXShop.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/texshop.sfl*",
    "~/Library/Application Support/TeXShop",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/TeXShop Help*",
    "~/Library/Caches/TeXShop",
    "~/Library/Preferences/TeXShop.plist",
    "~/Library/TeXShop",
  ]
end
