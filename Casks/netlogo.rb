cask "netlogo" do
  version "6.2.0"
  sha256 "ab72b7161401745d71841b0cf711d3755dc88edebfdcb73590e4b8e4b915bbde"

  url "https://ccl.northwestern.edu/netlogo/#{version}/NetLogo-#{version}.dmg"
  appcast "https://ccl.northwestern.edu/netlogo/oldversions.shtml"
  name "NetLogo"
  homepage "https://ccl.northwestern.edu/netlogo/"

  suite "NetLogo #{version}"

  zap trash: [
    "~/Library/Preferences/org.nlogo.netlogo.plist",
    "~/Library/Saved Application State/org.nlogo.NetLogo.savedState",
  ]
end
