cask "kube-forwarder" do
  version "1.5.1"
  sha256 "683bcd380885787d653bfb21b39fda05ed786b09abe311c856ae4032859f3d5f"

  url "https://github.com/pixel-point/kube-forwarder/releases/download/v#{version}/kube-forwarder.dmg",
      verified: "github.com/pixel-point/kube-forwarder/"
  name "Kube Forwarder"
  homepage "https://kube-forwarder.pixelpoint.io/"

  # https://github.com/pixel-point/kube-forwarder/issues/100#issuecomment-1065111816
  deprecate! date: "2024-07-17", because: :unmaintained

  app "Kube Forwarder.app"

  caveats do
    requires_rosetta
  end
end
