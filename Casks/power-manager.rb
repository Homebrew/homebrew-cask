cask "power-manager" do
  version "5.9.0"
  sha256 "85d96c0ab8792f731f28c49bdf3a55a4c4036a9ce71a7cd1b26dda8c82ed14bc"

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
end
