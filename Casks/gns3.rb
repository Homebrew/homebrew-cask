cask "gns3" do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version "2.2.15"
  sha256 "25a99f43f382c4e8b8d13e41154a9d51c621a9a65dd5391fd517443e1b7bab94"

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
