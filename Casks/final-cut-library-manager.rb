cask "final-cut-library-manager" do
  version "3.80"
  sha256 "6559de714cc8e226ddaff82f360002b491afafb70f2074176e8c0e7033f2accf"

  url "http://cdn.arcticwhiteness.com/finalcutlibrarymanager/download/zips/FinalCutLibraryManager_#{version}.zip"
  appcast "https://www.arcticwhiteness.com/finalcutlibrarymanager/download/appcast.xml"
  name "Arctic Whiteness Final Cut Library Manager"
  name "FCPX Library Manager"
  homepage "https://www.arcticwhiteness.com/finalcutlibrarymanager/"

  app "Final Cut Library Manager.app"
end
