cask "gns3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  version "2.2.20"
  sha256 "f8f56ec3e2a518f5769a9610e5b30458bb921ae8556c63894b76dfcdd0b3025e"

  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg",
      verified: "github.com/GNS3/gns3-gui/"
  name "GNS3"
  name "Graphical Network Simulator 3"
  desc "GUI for the Dynamips Cisco router emulator"
  homepage "https://www.gns3.com/"

  depends_on macos: ">= :high_sierra"

  app "GNS3.app"
end
