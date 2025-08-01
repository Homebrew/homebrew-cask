cask "iphoto-library-manager" do
  version "4.2.7"
  sha256 :no_check

  url "https://www.fatcatsoftware.com/iplm/iPhotoLibraryManager.zip"
  name "iPhoto Library Manager"
  desc "App for organising photos among multiple iPhoto libraries"
  homepage "https://www.fatcatsoftware.com/iplm/"

  no_autobump! because: :requires_manual_review

  deprecate! date: "2024-07-17", because: :discontinued
  disable! date: "2025-07-17", because: :discontinued

  app "iPhoto Library Manager.app"

  caveats do
    requires_rosetta
  end
end
