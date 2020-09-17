cask "final-cut-library-manager" do
  version "3.71"
  sha256 "201dffd8b2d1e60094e94b355213863995232c999963576377c8db816517110a"

  url "http://cdn.arcticwhiteness.com/finalcutlibrarymanager/download/zips/FinalCutLibraryManager_#{version}.zip"
  appcast "https://www.arcticwhiteness.com/finalcutlibrarymanager/download/appcast.xml"
  name "Arctic Whiteness Final Cut Library Manager"
  name "FCPX Library Manager"
  homepage "https://www.arcticwhiteness.com/finalcutlibrarymanager/"

  app "Final Cut Library Manager.app"
end
