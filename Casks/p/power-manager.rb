cask "power-manager" do
  version "5.10.11"
  sha256 "e761f1586a624477da87a2eea4ecba4e29663a0d9cfb4ca02727af99c4587a2b"

  url "https://www.dssw.co.uk/powermanager/dsswpowermanager-#{version.no_dots}.dmg"
  name "Power Manager"
  desc "Utility to automate tasks and improve power management"
  homepage "https://dssw.co.uk/powermanager/"

  livecheck do
    url "https://version.dssw.co.uk/powermanager/"
    regex(/Changes\s*in\s*v(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Power Manager.app"

  zap trash: [
    "~/Library/Application Scripts/uk.co.dssw.powermanager.standard",
    "~/Library/Application Scripts/uk.co.dssw.powermanager.update.download",
    "~/Library/Containers/uk.co.dssw.powermanager.standard",
    "~/Library/Containers/uk.co.dssw.powermanager.update.download",
  ]
end
