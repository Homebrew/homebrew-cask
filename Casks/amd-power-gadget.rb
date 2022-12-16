cask "amd-power-gadget" do
  version "0.7.1"
  sha256 "0a7512ae5859848499f19518a2c6a2228cbd095c912a9dd43fb2b087953c303f"

  url "https://github.com/trulyspinach/SMCAMDProcessor/releases/download/#{version}/AMD.Power.Gadget.app.zip"
  name "AMD Power Gadget"
  desc "Power management, monitoring and VirtualSMC plugin for AMD processors"
  homepage "https://github.com/trulyspinach/SMCAMDProcessor"

  app "AMD Power Gadget.app"
end
