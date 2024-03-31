cask "amd-power-gadget" do
  version "0.7.2"
  sha256 "d9b48c31e872928c50560c574195dbedada47351a65c285022158cdbb4ed2cb1"

  url "https://github.com/trulyspinach/SMCAMDProcessor/releases/download/#{version}/AMD.Power.Gadget.app.zip"
  name "AMD Power Gadget"
  desc "Power management, monitoring and VirtualSMC plugin for AMD processors"
  homepage "https://github.com/trulyspinach/SMCAMDProcessor"

  depends_on macos: ">= :high_sierra"

  app "AMD Power Gadget.app"
end
