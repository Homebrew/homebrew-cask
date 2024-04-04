cask "final-cut-library-manager" do
  version "3.98"
  sha256 "33c80b15b9095daa981907f27457d145922330e76c5ec33bcb8bd93da5c8fb5c"

  url "http://cdn.arcticwhiteness.com/finalcutlibrarymanager/download/zips/FinalCutLibraryManager_#{version}.zip"
  name "Arctic Whiteness Final Cut Library Manager"
  name "FCPX Library Manager"
  desc "Displays Final Cut Pro X libraries"
  homepage "https://www.arcticwhiteness.com/finalcutlibrarymanager/"

  deprecate! date: "2024-04-03", because: :discontinued

  depends_on macos: ">= :sierra"

  app "Final Cut Library Manager.app"

  zap trash: [
    "~/Library/Application Support/Final Cut Library Manager",
    "~/Library/HTTPStorages/com.arcticwhiteness.finalcutlibrarymanager",
    "~/Library/Preferences/com.arcticwhiteness.finalcutlibrarymanager.plist",
    "~/Library/Saved Application State/com.arcticwhiteness.finalcutlibrarymanager.savedState",
  ]
end
