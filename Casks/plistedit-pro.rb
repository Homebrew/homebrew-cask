cask "plistedit-pro" do
  version "1.9.4,929"
  sha256 :no_check

  url "https://www.fatcatsoftware.com/plisteditpro/PlistEditPro.zip"
  name "PlistEdit Pro"
  desc "Property list and JSON editor"
  homepage "https://www.fatcatsoftware.com/plisteditpro/"

  livecheck do
    url "https://www.fatcatsoftware.com/plisteditpro/downloads/appcast.xml"
    strategy :sparkle
  end

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
