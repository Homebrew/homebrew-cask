cask "power-manager" do
  version "5.7.1"
  sha256 "80170d910d72b04936d12f2cf7933d910e7f344a482ea65d99facd3a2bfe97b7"

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
