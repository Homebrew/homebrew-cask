cask "minisim" do
  version "0.7.0"
  sha256 "d4902a7cb97b128e5d280888893590068e227c21d14ff60400b62e66bb266eaf"

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
