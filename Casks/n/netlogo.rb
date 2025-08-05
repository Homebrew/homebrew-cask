cask "netlogo" do
  version "6.4.0"
  sha256 "c4147815eaa093770cb99e641a244d0800b8b5089c734999f14fa1b81e3b00fe"

  url "https://ccl.northwestern.edu/netlogo/#{version}/NetLogo-#{version}.dmg"
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
