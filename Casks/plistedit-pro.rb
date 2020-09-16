cask "plistedit-pro" do
  version "1.9.2"
  sha256 "5db33711689cc911a33af8f5140e27436df392e13f0fece3de0ba11ac4e0f839"

  url "https://www.fatcatsoftware.com/plisteditpro/PlistEditPro.zip"
  appcast "https://www.fatcatsoftware.com/plisteditpro/plisteditpro_appcast.xml"
  name "PlistEdit Pro"
  desc "Property list and JSON editor"
  homepage "https://www.fatcatsoftware.com/plisteditpro/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "PlistEdit Pro.app"
  binary "#{appdir}/PlistEdit Pro.app/Contents/MacOS/pledit"

  zap trash: [
    "~/Library/Application Support/PlistEdit Pro",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.fatcatsoftware.pledpro.sfl2",
    "~/Library/Application Support/com.fatcatsoftware.pledpro",
    "~/Library/Caches/com.apple.helpd/Generated/com.fatcatsoftware.pledpro.help*",
    "~/Library/Caches/com.fatcatsoftware.pledpro",
    "~/Library/Preferences/com.fatcatsoftware.pledpro.plist",
  ]
end
