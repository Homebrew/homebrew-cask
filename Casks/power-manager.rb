cask "power-manager" do
  version "5.5.2"
  sha256 "9184adaf556c3674dfc2e445c2d02c62b3d63698fe78667cfb912a60dc6b842c"

  url "https://www.dssw.co.uk/powermanager/dsswpowermanager-#{version.no_dots}.dmg"
  appcast "https://version.dssw.co.uk/powermanager/"
  name "Power Manager"
  desc "Utility to automate tasks and improve power management"
  homepage "https://dssw.co.uk/powermanager/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Power Manager.app"
end
