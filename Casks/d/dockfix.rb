cask "dockfix" do
  version "5.3.0-beta"
  sha256 :no_check

  url "https://www.dockfix.app/downloads/DockFix.dmg"
  name "DockFix"
  desc "Dock replacement"
  homepage "https://www.dockfix.app/"

  livecheck do
    url "https://www.dockfix.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "DockFix.app"

  zap trash: [
    "~/Library/Caches/dk.FIrstForm.DockFix",
    "~/Library/HTTPStorages/dk.FIrstForm.DockFix",
    "~/Library/Preferences/dk.FIrstForm.DockFix.plist",
  ]
end
