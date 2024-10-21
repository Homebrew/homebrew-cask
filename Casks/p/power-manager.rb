cask "power-manager" do
  version "5.10.2"
  sha256 "07ac328b2e3aff87b4574b2101cb70c5ef0fbe002690502c43bf463d395dcda8"

  url "https://www.dssw.co.uk/powermanager/dsswpowermanager-#{version.no_dots}.dmg"
  name "Power Manager"
  desc "Utility to automate tasks and improve power management"
  homepage "https://dssw.co.uk/powermanager/"

  livecheck do
    url "https://version.dssw.co.uk/powermanager/"
    regex(/Changes\s*in\s*v(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Power Manager.app"

  zap trash: [
    "~/Library/Application Scripts/uk.co.dssw.powermanager.standard",
    "~/Library/Application Scripts/uk.co.dssw.powermanager.update.download",
    "~/Library/Containers/uk.co.dssw.powermanager.standard",
    "~/Library/Containers/uk.co.dssw.powermanager.update.download",
  ]
end
