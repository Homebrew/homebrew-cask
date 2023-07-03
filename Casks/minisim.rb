cask "minisim" do
  version "0.6.2"
  sha256 "aa346f738973c53feb8b1f4004d523b8e21e92de5a0fc3c4b90bb56a2c1f82d9"

  url "https://github.com/okwasniewski/MiniSim/releases/download/v#{version}/MiniSim.app.zip",
      verified: "github.com/okwasniewski/MiniSim/"
  name "MiniSim"
  desc "App for launching iOS and Android simulators"
  homepage "https://www.minisim.app/"

  depends_on macos: ">= :big_sur"

  app "MiniSim.app"

  uninstall quit: "com.oskarkwasniewski.MiniSim"

  zap trash: [
    "~/Library/HTTPStorages/com.oskarkwasniewski.MiniSim",
    "~/Library/Preferences/com.oskarkwasniewski.MiniSim.plist",
  ]
end
