cask "texshop" do
  version "5.46"
  sha256 "acf14107cc7889d0190c0b12700fd1a485f6f9ee7f5c9e2041ed176514be8b61"

  url "https://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.no_dots}.zip"
  name "TeXShop"
  desc "LaTeX and TeX editor and previewer"
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
    "~/Library/Caches/com.apple.helpd/Generated/TeXShop Help*",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/TeXShop Help*",
    "~/Library/Caches/TeXShop",
    "~/Library/HTTPStorages/TeXShop",
    "~/Library/Preferences/TeXShop.plist",
    "~/Library/TeXShop",
    "~/Library/WebKit/TeXShop",
  ]
end
