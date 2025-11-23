cask "netlogo" do
  arch arm: "aarch64", intel: "x86_64"

  version "7.0.2"
  sha256 arm:   "3c14a641733bd7a17c1cb4273ec65bd6cf2986b02e623a38c9d9ba1eec575999",
         intel: "4f9dd40700f8fe6d1a57d42eadc880ac8cb409b87606386888eedcd1ffde80af"

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
