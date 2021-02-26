cask "autopkgr" do
  version "1.5.6"
  sha256 "e4bc5a241b7d06cf11ea215361ca0cc963b3737ef9fba39588e9b1ffbf82dd98"

  url "https://github.com/lindegroup/autopkgr/releases/download/v#{version}/AutoPkgr-#{version}.dmg",
      verified: "github.com/lindegroup/autopkgr/"
  appcast "https://github.com/lindegroup/autopkgr/releases.atom"
  name "AutoPkgr"
  desc "Install and configure AutoPkg"
  homepage "https://www.lindegroup.com/autopkgr"

  app "AutoPkgr.app"
end
