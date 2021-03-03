cask "odrive" do
  version "6986"
  sha256 "71649cbd1d629346295dc443b1b9c39a3f5f556e237d6899d9d66b5df65f55e0"

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

  uninstall quit:    [
    "com.oxygencloud.odrive",
  ],
            pkgutil: "com.oxygen.odrive.*"
end
