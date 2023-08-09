cask "final-cut-library-manager" do
  version "3.97"
  sha256 "da6195eba53218cb9a785641a2c33d41ae64ec64d3398622d90f665ab4e3f9cc"

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

  zap trash: [
    "~/Library/Application Support/Final Cut Library Manager",
    "~/Library/HTTPStorages/com.arcticwhiteness.finalcutlibrarymanager",
    "~/Library/Preferences/com.arcticwhiteness.finalcutlibrarymanager.plist",
    "~/Library/Saved Application State/com.arcticwhiteness.finalcutlibrarymanager.savedState",
  ]
end
