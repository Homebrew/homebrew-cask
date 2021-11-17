cask "gns3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  version "2.2.27"
  sha256 "dbc39b26650a4cfdc59522fb0f77e502b5b737037806161fdc1637166c3fc627"

  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg",
      verified: "github.com/GNS3/gns3-gui/"
  name "GNS3"
  name "Graphical Network Simulator 3"
  desc "GUI for the Dynamips Cisco router emulator"
  homepage "https://www.gns3.com/"

  depends_on macos: ">= :high_sierra"

  app "GNS3.app"

  zap trash: [
    "~/Library/Saved Application State/net.gns3.savedState",
    "~/GNS3",
  ]
end
