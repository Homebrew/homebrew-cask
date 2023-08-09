cask "plistedit-pro" do
  version "1.9.6"
  sha256 "3feb5f23494d04c1b034674bd98785494fbe36be708d4290bb3c0f15f16ce5bd"

  url "https://www.fatcatsoftware.com/plisteditpro/downloads/PlistEditPro_#{version.no_dots}.zip"
  name "PlistEdit Pro"
  desc "Property list and JSON editor"
  homepage "https://www.fatcatsoftware.com/plisteditpro/"

  livecheck do
    url "https://www.fatcatsoftware.com/plisteditpro/downloads/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

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
