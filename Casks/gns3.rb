cask "gns3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  version "2.2.23"
  sha256 "e8a325b6f0c8e61e19a14ce0f13a275468ae8904ff2bfd834c118f542c967514"

  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg",
      verified: "github.com/GNS3/gns3-gui/"
  name "GNS3"
  name "Graphical Network Simulator 3"
  desc "GUI for the Dynamips Cisco router emulator"
  homepage "https://www.gns3.com/"

  depends_on macos: ">= :high_sierra"

  app "GNS3.app"
end
