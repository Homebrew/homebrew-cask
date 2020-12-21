cask "iphoto-library-manager" do
  version "4.2.7,954"
  sha256 :no_check

  url "https://www.fatcatsoftware.com/iplm/iPhotoLibraryManager.zip"
  name "iPhoto Library Manager"
  desc "App for organizing photos among multiple iPhoto libraries"
  homepage "https://www.fatcatsoftware.com/iplm/"

  livecheck do
    url "https://www.fatcatsoftware.com/iplm/iplm#{version.major}_appcast.xml"
    strategy :sparkle
  end

  app "iPhoto Library Manager.app"
end
