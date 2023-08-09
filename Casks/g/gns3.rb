cask "gns3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  version "2.2.42"
  sha256 "65152f109b2b75bfa86d9f60200dd4fe1e20204ecb92c360a5b871579309c8b0"

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
