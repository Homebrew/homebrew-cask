cask "final-cut-library-manager" do
  version "3.82.00"
  sha256 "175538d3d9b654274a4a59b43bf279b533b2c5f82a9a99d0fed15499a5a11ba0"

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
