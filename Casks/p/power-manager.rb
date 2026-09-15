cask "power-manager" do
  version "5.14.1"
  sha256 "8c527addd80e9ef57e329410100fa5063a9c96c5ca3d697b04c8099a51b5a1da"

  url "https://www.dssw.co.uk/powermanager/dsswpowermanager-#{version.no_dots}.dmg"
  name "Power Manager"
  desc "Utility to automate tasks and improve power management"
  homepage "https://dssw.co.uk/powermanager/"

  livecheck do
    url "https://version.dssw.co.uk/powermanager/"
    regex(/Changes\s*in\s*v(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on :macos

  app "Power Manager.app"

  zap trash: [
    "~/Library/Application Scripts/uk.co.dssw.powermanager.standard",
    "~/Library/Application Scripts/uk.co.dssw.powermanager.update.download",
    "~/Library/Containers/uk.co.dssw.powermanager.standard",
    "~/Library/Containers/uk.co.dssw.powermanager.update.download",
  ]
end
