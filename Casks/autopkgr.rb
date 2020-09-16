cask "autopkgr" do
  version "1.5.4"
  sha256 "04baaecfe748f1ed5cf738b5c04a7f524419510d0e8d8e45324b29e451d435e6"

  # github.com/lindegroup/autopkgr/ was verified as official when first introduced to the cask
  url "https://github.com/lindegroup/autopkgr/releases/download/v#{version}/AutoPkgr-#{version}.dmg"
  appcast "https://github.com/lindegroup/autopkgr/releases.atom"
  name "AutoPkgr"
  desc "Install and configure AutoPkg"
  homepage "https://www.lindegroup.com/autopkgr"

  app "AutoPkgr.app"
end
