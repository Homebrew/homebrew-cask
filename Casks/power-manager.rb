cask "power-manager" do
  version "5.9.3"
  sha256 "25f98a739520803d6aa53ca65e543712bd83708831920b6aa7ab8cb5edaac84d"

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
