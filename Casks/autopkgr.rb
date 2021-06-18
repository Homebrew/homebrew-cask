cask "autopkgr" do
  version "1.5.7"
  sha256 "01cbe230c0e4301a8b6fa93d812c69a294e88fc253323a44935eefc61b9f4160"

  url "https://github.com/lindegroup/autopkgr/releases/download/v#{version}/AutoPkgr-#{version}.dmg",
      verified: "github.com/lindegroup/autopkgr/"
  name "AutoPkgr"
  desc "Install and configure AutoPkg"
  homepage "https://www.lindegroup.com/autopkgr"

  app "AutoPkgr.app"
end
