cask "gns3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  version "2.2.33.1"
  sha256 "dc83078e80717ccc2d74929374e07162aa884b08743d81b28a66711f5b2d5686"

  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg",
      verified: "github.com/GNS3/gns3-gui/"
  name "GNS3"
  name "Graphical Network Simulator 3"
  desc "GUI for the Dynamips Cisco router emulator"
  homepage "https://www.gns3.com/"

  depends_on macos: ">= :high_sierra"

  app "GNS3.app"

  zap trash: [
    "~/GNS3",
    "~/Library/Saved Application State/net.gns3.savedState",
  ]
end
