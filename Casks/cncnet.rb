cask "cncnet" do
  version "2.1"
  sha256 :no_check

  # funkyfr3sh.cnc-comm.com/ was verified as official when first introduced to the cask
  url "https://funkyfr3sh.cnc-comm.com/files/CnCNet.dmg"
  name "CnCNet: Classic Command & Conquer"
  homepage "https://cncnet.org/"

  app "CnCNet.app"
end
