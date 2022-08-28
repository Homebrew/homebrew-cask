cask "gns3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  version "2.2.34"
  sha256 "72bc868aa1ca1aac5a42d14dc18a07dc5f3ef9c1d1569b4abf29944f6181a49e"

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

  depends_on macos: ">= :high_sierra"

  app "GNS3.app"

  zap trash: [
    "~/GNS3",
    "~/Library/Saved Application State/net.gns3.savedState",
  ]
end
