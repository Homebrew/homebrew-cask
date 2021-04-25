cask "final-cut-library-manager" do
  version "2.72.00"
  sha256 "6039f518e24fda6663c9ef8a1905c9c5e665f434f159ae0f5553cc67642373ab"

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
