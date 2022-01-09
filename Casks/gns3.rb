cask "gns3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  version "2.2.29"
  sha256 "e9374ec80145f5f8835941abd8ad77b0be5a1e3b43022341d17d3eb70f4a1a22"

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
