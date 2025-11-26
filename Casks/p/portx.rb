cask "portx" do
  arch arm: "arm64", intel: "x64"

  version "2.2.15,10.77"
  sha256 arm:   "AA2D726F53A0211BDF5B3D662C999DA31CB5CF9143BBA209F4FF7BC19696AD7B",
         intel: "070FB9FC205FD4304F966B4036EA72E94716841B525F6C183BB2055486B6BA02"

  url "https://cdn.netsarang.net/0ac7ea20/PortX-#{version.csv.first}-#{arch}.dmg",
      verified: "cdn.netsarang.net/"
  name "portx"
  desc "SSH Client"
  homepage "https://portx.online/"

  livecheck do
    url "https://cdn.netsarang.net/0ac7ea20/PortX-latest-#{arch}.dmg"
    strategy :extract_plist
  end

  app "PortX.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.netsarang.portx.sfl*",
    "~/Library/Application Support/PortX",
    "~/Library/Logs/PortX",
    "~/Library/Preferences/com.netsarang.portx.plist",
    "~/Library/Saved Application State/com.netsarang.portx.savedState",
  ]
end
