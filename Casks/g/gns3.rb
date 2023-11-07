cask "gns3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  version "2.2.44.1"
  sha256 "1abd8911265d4f70c1387a74038629b47569ca583cad6b44c765adf5e78b22d9"

  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg",
      verified: "github.com/GNS3/gns3-gui/"
  name "GNS3"
  name "Graphical Network Simulator 3"
  desc "GUI for the Dynamips Cisco router emulator"
  homepage "https://www.gns3.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :mojave"

  app "GNS3.app"

  zap trash: [
    "~/GNS3",
    "~/Library/Saved Application State/net.gns3.savedState",
  ]
end
