cask "final-cut-library-manager" do
  version "3.95"
  sha256 "11c16759a2a5078c2da4c79d9939b2645c75d571925c6856f686a13faaea9cc4"

  url "http://cdn.arcticwhiteness.com/finalcutlibrarymanager/download/zips/FinalCutLibraryManager_#{version}.zip"
  name "Arctic Whiteness Final Cut Library Manager"
  name "FCPX Library Manager"
  desc "Displays Final Cut Pro X libraries"
  homepage "https://www.arcticwhiteness.com/finalcutlibrarymanager/"

  livecheck do
    url "https://www.arcticwhiteness.com/finalcutlibrarymanager/download/"
    regex(/href=.*?FinalCutLibraryManager[._-]v?(\d+(?:\.\d+)+)\.(?:t|zip)/i)
  end

  depends_on macos: ">= :sierra"

  app "Final Cut Library Manager.app"
end
