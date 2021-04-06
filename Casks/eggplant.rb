cask "eggplant" do
  version "21.1.0,2101270001"
  sha256 :no_check

  url "https://downloads.eggplantsoftware.com/downloads/Eggplant/eggPlant.dmg"
  name "eggPlant Functional"
  homepage "https://www.eggplantsoftware.com/eggplant-functional-downloads"

  livecheck do
    skip "unversioned URL"
  end

  app "eggPlant.app"
end
