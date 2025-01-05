cask "monodraw" do
  version "1.6.1,111"
  sha256 "8cdd852f3185ffb4c0ac374b23a49e6471b8cd061fe39088572f4ff7d58f4976"

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
