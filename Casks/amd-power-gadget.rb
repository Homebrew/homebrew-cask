cask "amd-power-gadget" do
  version "0.7"
  sha256 "2f3877365d42c4212e5ef0280b4d619f0315f31467b42ce3a45928a2ea8b74ee"

  url "https://github.com/trulyspinach/SMCAMDProcessor/releases/download/#{version}/AMD.Power.Gadget.app.zip"
  name "AMD Power Gadget"
  desc "Power management, monitoring and VirtualSMC plugin for AMD processors"
  homepage "https://github.com/trulyspinach/SMCAMDProcessor"

  app "AMD Power Gadget.app"
end
