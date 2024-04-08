cask "amd-power-gadget" do
  version "0.7.2f1"
  sha256 "bb7779aa295ab00c8609f438c80028c5f0ca9c63e13ab768bae21876793b0674"

  url "https://github.com/trulyspinach/SMCAMDProcessor/releases/download/#{version}/AMD.Power.Gadget.app.zip"
  name "AMD Power Gadget"
  desc "Power management, monitoring and VirtualSMC plugin for AMD processors"
  homepage "https://github.com/trulyspinach/SMCAMDProcessor"

  depends_on macos: ">= :high_sierra"
  depends_on arch: :x86_64

  app "AMD Power Gadget.app"
end
