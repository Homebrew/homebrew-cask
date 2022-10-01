cask "netlogo" do
  version "6.3.0"
  sha256 "a595dfdb5382f13ff1da44d9402e8ec3b78c927d12e6b83378da391596ee2b04"

  url "https://ccl.northwestern.edu/netlogo/#{version}/NetLogo-#{version}.dmg"
  name "NetLogo"
  desc "Multi-agent programmable modeling environment"
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
