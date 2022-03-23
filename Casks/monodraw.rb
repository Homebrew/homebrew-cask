cask "monodraw" do
  version "1.5,109"
  sha256 "5e9ef196a912a43ed4aade4467a891d2160427b36c46cf1817cbf867ef70134a"

  url "https://updates.helftone.com/monodraw/downloads/Monodraw-b#{version.csv.second}.zip"
  name "Monodraw"
  desc "Tool to create text-based art"
  homepage "https://monodraw.helftone.com/"

  livecheck do
    url "https://updates.helftone.com/monodraw/appcast-beta.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Monodraw.app"
  binary "#{appdir}/Monodraw.app/Contents/Resources/monodraw"

  zap trash: [
    "~/Library/Application Support/com.helftone.monodraw",
    "~/Library/Caches/com.helftone.monodraw",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.helftone.monodraw.help*",
    "~/Library/Preferences/com.helftone.monodraw.plist",
  ]
end
