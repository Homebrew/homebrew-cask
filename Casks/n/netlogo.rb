cask "netlogo" do
  arch arm: "aarch64", intel: "x86_64"

  version "7.0.0"
  sha256 arm:   "6d17874e4f7beebc99936fd837c35cad35d3346f160659d51cab193b9e4ef568",
         intel: "6c0c9b34fced66f8cd11e786f10e236eaabe5cd9084eb95359bb47365759e90e"

  url "https://ccl.northwestern.edu/netlogo/#{version}/NetLogo-#{version}-#{arch}.dmg"
  name "NetLogo"
  desc "Multi-agent programmable modelling environment"
  homepage "https://ccl.northwestern.edu/netlogo/"

  livecheck do
    url "https://ccl.northwestern.edu/netlogo/oldversions.shtml"
    regex(/NetLogo\s*(\d+(?:\.\d+)+)/i)
  end

  suite "NetLogo #{version}"

  zap trash: [
    "~/Library/Preferences/org.nlogo.netlogo.plist",
    "~/Library/Saved Application State/org.nlogo.NetLogo.savedState",
  ]
end
