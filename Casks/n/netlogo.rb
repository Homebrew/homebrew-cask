cask "netlogo" do
  arch arm: "aarch64", intel: "x86_64"

  version "7.0.3"
  sha256 arm:   "14fb4870415fe78e7391641a62aaab96e570b4531ac3cd82d8d16ad8f60a24ca",
         intel: "79ecc61c231559681f1d2f0f79943956ae681c538fc65fef1c781e483ae6b5e6"

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
