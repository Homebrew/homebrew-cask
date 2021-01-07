cask "gns3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  version "2.2.17"
  sha256 "776d4d0bbebc031f83524c27b1cce8555c9883208e25b901dafe18e9c007df8e"

  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg",
      verified: "github.com/GNS3/gns3-gui/"
  name "GNS3"
  name "Graphical Network Simulator 3"
  desc "GUI for the Dynamips Cisco router emulator"
  homepage "https://www.gns3.com/"

  livecheck do
    url :url
    strategy :git
  end

  depends_on macos: ">= :high_sierra"

  app "GNS3.app"
end
