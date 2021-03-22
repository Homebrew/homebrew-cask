cask "amd-power-gadget" do
  version "0.6.6"
  sha256 "2a09858baf24ea757fada5243c20c94bfc92054b6ba8dd04e0e77c423915fe96"

  url "https://github.com/trulyspinach/SMCAMDProcessor/releases/download/#{version}/AMD.Power.Gadget.app.zip"
  name "AMD Power Gadget"
  desc "Power management, monitoring and VirtualSMC plugin for AMD processors"
  homepage "https://github.com/trulyspinach/SMCAMDProcessor"

  app "AMD Power Gadget.app"
end
