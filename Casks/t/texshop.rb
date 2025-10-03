cask "texshop" do
  version "5.57"
  sha256 "08aa26a5dfacfa67bacedbc73d57fe07b64dcfe49e9fab34a3be1dc5372d20d4"

  url "https://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.no_dots}.zip"
  name "TeXShop"
  desc "LaTeX and TeX editor and previewer"
  homepage "https://pages.uoregon.edu/koch/texshop/"

  livecheck do
    url "https://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml"
    strategy :sparkle
  end

  auto_updates true

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
