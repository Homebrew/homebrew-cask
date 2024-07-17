cask "iphoto-library-manager" do
  version "4.2.7"
  sha256 :no_check

  url "https://www.fatcatsoftware.com/iplm/iPhotoLibraryManager.zip"
  name "iPhoto Library Manager"
  desc "App for organising photos among multiple iPhoto libraries"
  homepage "https://www.fatcatsoftware.com/iplm/"

  deprecate! date: "2024-07-17", because: :discontinued

  app "iPhoto Library Manager.app"

  caveats do
    requires_rosetta
  end
end
