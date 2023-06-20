cask "minisim" do
  version "0.6.1"
  sha256 "370edd51af50e55edc11e3a7449030329f5580d3109adcd427eb035801d12eb6"

  url "https://github.com/okwasniewski/MiniSim/releases/download/v#{version}/MiniSim.app.zip",
      verified: "github.com/okwasniewski/MiniSim/"
  name "MiniSim"
  desc "App for lauching iOS and Android simulators"
  homepage "https://www.minisim.app/"

  depends_on macos: ">= :big_sur"

  app "MiniSim.app"

  uninstall quit: "com.oskarkwasniewski.MiniSim"

  zap trash: [
    "~/Library/HTTPStorages/com.oskarkwasniewski.MiniSim",
    "~/Library/Preferences/com.oskarkwasniewski.MiniSim.plist",
  ]
end
