cask "power-manager" do
  version "5.5.1"
  sha256 "3746ace083b6e0a94c41ab20887e4024f449ae7e57f3db6fbf249d44bcd74d7c"

  url "https://www.dssw.co.uk/powermanager/dsswpowermanager-#{version.no_dots}.dmg"
  appcast "https://version.dssw.co.uk/powermanager/"
  name "Power Manager"
  desc "Utility to automate tasks and improve power management"
  homepage "https://dssw.co.uk/powermanager/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Power Manager.app"
end
