cask "autopkgr" do
  version "1.6"
  sha256 "0cb70cd08102124a5bfa6f02d2a38001ab4b0b659bdf968821e91abb776b0a6e"

  url "https://github.com/lindegroup/autopkgr/releases/download/v#{version}/AutoPkgr-#{version}.dmg",
      verified: "github.com/lindegroup/autopkgr/"
  name "AutoPkgr"
  desc "Install and configure AutoPkg"
  homepage "https://www.lindegroup.com/autopkgr"

  app "AutoPkgr.app"
end
