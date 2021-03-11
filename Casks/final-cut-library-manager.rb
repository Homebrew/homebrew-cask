cask "final-cut-library-manager" do
  version "3.90.00"
  sha256 "aefa5fb120885e919695d51a96f6bd1fe95f3429f67eac619c50df8beead1ef8"

  url "http://cdn.arcticwhiteness.com/finalcutlibrarymanager/download/zips/FinalCutLibraryManager_#{version.major_minor}.zip"
  name "Arctic Whiteness Final Cut Library Manager"
  name "FCPX Library Manager"
  homepage "https://www.arcticwhiteness.com/finalcutlibrarymanager/"

  livecheck do
    url "https://www.arcticwhiteness.com/finalcutlibrarymanager/download/appcast.xml"
    strategy :sparkle
  end

  app "Final Cut Library Manager.app"
end
