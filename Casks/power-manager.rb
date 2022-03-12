cask "power-manager" do
  version "5.9.2"
  sha256 "58fb3bc7330e8c07ca1d3d202de2439126f8b62c5bb2ba980dbaec9c911e61d5"

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
