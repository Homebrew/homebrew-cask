cask "iphoto-library-manager" do
  version "4.2.7"
  sha256 "19befc6553638687f27883e822d7ecb780f31ad358bd3057c2079de4f12edea9"

  url "https://www.fatcatsoftware.com/iplm/iPhotoLibraryManager.zip"
  appcast "https://www.fatcatsoftware.com/iplm/iplm#{version.major}_appcast.xml"
  name "iPhoto Library Manager"
  desc "App for organizing photos among multiple iPhoto libraries"
  homepage "https://www.fatcatsoftware.com/iplm/"

  app "iPhoto Library Manager.app"
end
