cask "gns3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  version "2.2.28"
  sha256 "9c95f29c2bec4bd88580d81378a03cf7b950ec71613584f30bd3edf67b71c851"

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
