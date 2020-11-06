cask "amd-power-gadget" do
  version "0.6.5"
  sha256 "73a7940805ce2679bb8c0e49a18afef95abf6dc66d2bc0486da27846e36cf428"

  url "https://github.com/trulyspinach/SMCAMDProcessor/releases/download/#{version}/AMD.Power.Gadget.app.zip"
  appcast "https://github.com/trulyspinach/SMCAMDProcessor/releases.atom"
  name "AMD Power Gadget"
  homepage "https://github.com/trulyspinach/SMCAMDProcessor"

  app "AMD Power Gadget.app"
end
