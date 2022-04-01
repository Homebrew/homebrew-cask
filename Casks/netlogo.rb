cask "netlogo" do
  version "6.2.2"
  sha256 "156a454167c3a91e55ccb33865eaacc023ef023e307ecc4889ee45969b69cc5f"

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
