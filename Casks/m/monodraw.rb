cask "monodraw" do
  version "1.7.1,118"
  sha256 "eed8bf157a3134c852615ed359378ff2602709daae908d12803756e91450b057"

  url "https://updates.helftone.com/monodraw/downloads/Monodraw-b#{version.csv.second}.zip"
  name "Monodraw"
  desc "Tool to create text-based art"
  homepage "https://monodraw.helftone.com/"

  livecheck do
    url "https://updates.helftone.com/monodraw/appcast-beta.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Monodraw.app"
  binary "#{appdir}/Monodraw.app/Contents/Resources/monodraw"

  zap trash: [
    "~/Library/Application Support/com.helftone.monodraw",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.helftone.monodraw.help*",
    "~/Library/Caches/com.helftone.monodraw",
    "~/Library/Preferences/com.helftone.monodraw.plist",
  ]
end
