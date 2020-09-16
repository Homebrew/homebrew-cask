cask "kube-forwarder" do
  version "1.5.1"
  sha256 "683bcd380885787d653bfb21b39fda05ed786b09abe311c856ae4032859f3d5f"

  # github.com/pixel-point/kube-forwarder/ was verified as official when first introduced to the cask
  url "https://github.com/pixel-point/kube-forwarder/releases/download/v#{version}/kube-forwarder.dmg"
  appcast "https://github.com/pixel-point/kube-forwarder/releases.atom"
  name "Kube Forwarder"
  homepage "https://kube-forwarder.pixelpoint.io/"

  app "Kube Forwarder.app"
end
