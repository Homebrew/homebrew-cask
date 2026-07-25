cask "netlogo" do
  arch arm: "aarch64", intel: "x86_64"

  version "7.0.4"
  sha256 arm:   "39c215b3f79e9fd66c4aac6f269c660763d111514c0ae37992d3c9d37d4b6b3c",
         intel: "18dc290f038505994e134cc89520c2988856e730dc3c8f7ecf7d692ce90cab87"

  url "https://downloads.netlogo.org/#{version}/NetLogo-#{version}-#{arch}.dmg"
  name "NetLogo"
  desc "Multi-agent programmable modelling environment"
  homepage "https://www.netlogo.org/"

  livecheck do
    url "https://docs.netlogo.org/versions"
    regex(/Version\s*(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  suite "NetLogo #{version}"

  zap trash: [
    "~/Library/Preferences/org.nlogo.netlogo.plist",
    "~/Library/Saved Application State/org.nlogo.NetLogo.savedState",
  ]
end
