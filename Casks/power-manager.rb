cask "power-manager" do
  version "5.6.1"
  sha256 "631873ca9b436caf49c422ad5dc79250cd41b81bbbbdf258f3a12e1bac31ed21"

  url "https://www.dssw.co.uk/powermanager/dsswpowermanager-#{version.no_dots}.dmg"
  name "Power Manager"
  desc "Utility to automate tasks and improve power management"
  homepage "https://dssw.co.uk/powermanager/"

  livecheck do
    url "https://version.dssw.co.uk/powermanager/"
    strategy :page_match
    regex(/Changes\s*in\s*v(\d+(?:\.\d+)*)/i)
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Power Manager.app"
end
