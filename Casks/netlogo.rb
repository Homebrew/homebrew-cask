cask "netlogo" do
  version "6.1.1"
  sha256 "cf733a599aaf2f1603af501ed48867fdf3f3d9b7c73439d5afb8681396a6fd99"

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
