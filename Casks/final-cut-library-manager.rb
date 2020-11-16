cask "final-cut-library-manager" do
  version "3.82"
  sha256 "175538d3d9b654274a4a59b43bf279b533b2c5f82a9a99d0fed15499a5a11ba0"

  url "http://cdn.arcticwhiteness.com/finalcutlibrarymanager/download/zips/FinalCutLibraryManager_#{version}.zip"
  appcast "https://www.arcticwhiteness.com/finalcutlibrarymanager/download/appcast.xml"
  name "Arctic Whiteness Final Cut Library Manager"
  name "FCPX Library Manager"
  homepage "https://www.arcticwhiteness.com/finalcutlibrarymanager/"

  app "Final Cut Library Manager.app"
end
