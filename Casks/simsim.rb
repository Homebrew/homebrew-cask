cask "simsim" do
  version "1.4.4"
  sha256 "7f6fc17b934df27c2034dedd8c34f764bf431d98a1a757cdcde8e47a029b4c3f"

  url "https://github.com/dsmelov/simsim/releases/download/#{version}/SimSim_#{version}.zip"
  appcast "https://github.com/dsmelov/simsim/releases.atom"
  name "SimSim"
  desc "Tool to explore iOS application folders in Terminal or Finder"
  homepage "https://github.com/dsmelov/simsim/"

  depends_on macos: ">= :high_sierra"

  app "SimSim.app"

  uninstall quit: "com.dsmelov.SimSim"

  zap trash: "~/Library/Preferences/com.dsmelov.SimSim.plist"
end
