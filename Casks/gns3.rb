cask "gns3" do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version "2.2.14"
  sha256 "7925c7ae2d202b7b1a3e7f807e54a46c4da1a20fabc5c6201f77d01839454e74"

  # github.com/GNS3/gns3-gui/ was verified as official when first introduced to the cask
  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  appcast "https://github.com/GNS3/gns3-gui/releases.atom"
  name "GNS3"
  name "Graphical Network Simulator 3"
  desc "GUI for the Dynamips Cisco router emulator"
  homepage "https://www.gns3.com/"

  depends_on macos: ">= :high_sierra"

  app "GNS3.app"
end
