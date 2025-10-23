cask "netlogo" do
  arch arm: "aarch64", intel: "x86_64"

  version "7.0.1"
  sha256 arm:   "4c1e7b4cbe4ce39b76e80d1e957550b3d0bf58fcab8328e892f2d66d76b3405d",
         intel: "0efeea50b3893af6464fca4bb41391fbbc36a19da07533a6b352e2745e8fc43d"

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
