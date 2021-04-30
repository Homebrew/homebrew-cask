cask "power-manager" do
  version "5.6.0"
  sha256 "971c85fc63c9653d4e9357b9444c2f4116b952cda43335e65469c4dc2d920b56"

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
