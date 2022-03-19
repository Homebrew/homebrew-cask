cask "simsim" do
  version "1.4.5"
  sha256 "425a24ead542dbe0be9bd256238724a60cab297e026acadc48354644523f661f"

  url "https://github.com/dsmelov/simsim/releases/download/#{version}/SimSim_#{version}.zip"
  name "SimSim"
  desc "Tool to explore iOS application folders in Terminal or Finder"
  homepage "https://github.com/dsmelov/simsim/"

  depends_on macos: ">= :high_sierra"

  app "SimSim.app"

  uninstall quit: "com.dsmelov.SimSim"

  zap trash: "~/Library/Preferences/com.dsmelov.SimSim.plist"
end
