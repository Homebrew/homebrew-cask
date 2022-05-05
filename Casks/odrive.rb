cask "odrive" do
  version "7243"
  sha256 "8962ee386ae69a950f3b7acfffd72099dcdb36a3d00b0f628b40b5edd4795c64"

  url "https://d3huse1s6vwzq6.cloudfront.net/odrivesync.#{version}.pkg",
      verified: "d3huse1s6vwzq6.cloudfront.net/"
  name "odrive"
  desc "Tool to make any cloud storage unified, synchronized, shareable, and encrypted"
  homepage "https://www.odrive.com/"

  livecheck do
    # https://docs.odrive.com/docs/odrive-usage-guide#install-desktop-sync
    url "https://www.odrive.com/downloaddesktop?platform=mac"
    strategy :header_match
  end

  pkg "odrivesync.#{version}.pkg"

  uninstall quit:    "com.oxygencloud.odrive",
            pkgutil: "com.oxygen.odrive.*"
end
