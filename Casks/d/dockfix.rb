cask "dockfix" do
  version "3.6.10"
  sha256 :no_check

  url "https://www.dockfix.app/downloads/DockFix.dmg"
  name "DockFix"
  desc "Dock replacement"
  homepage "https://www.dockfix.app/"

  livecheck do
    url "https://www.dockfix.app/changelog"
    regex(/>[^<]*?v?(\d+(?:\.\d+)+)\s*</i)
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "DockFix.app"

  zap trash: [
    "~/Library/Caches/dk.FIrstForm.DockFix",
    "~/Library/HTTPStorages/dk.FIrstForm.DockFix",
    "~/Library/Preferences/dk.FIrstForm.DockFix.plist",
  ]
end
