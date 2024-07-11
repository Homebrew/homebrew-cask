cask "cncnet" do
  version "2.1"
  sha256 :no_check

  url "https://funkyfr3sh.cnc-comm.com/files/CnCNet.dmg",
      verified: "funkyfr3sh.cnc-comm.com/"
  name "CnCNet: Classic Command & Conquer"
  desc "Multiplayer platform for classic Command & Conquer games"
  homepage "https://cncnet.org/"

  deprecate! date: "2024-07-11", because: :unmaintained

  app "CnCNet.app"

  caveats do
    requires_rosetta
  end
end
